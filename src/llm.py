"""The only stochastic component in the pipeline, and the record-keeping around it.

DETERMINISM CONTRACT
--------------------
Everything in v2 except this module is a pure function of its inputs. This module is
not, and cannot be made so: temperature 0 reduces variation but does not guarantee
byte-identical responses from the same prompt. We therefore make the LLM step
*replayable* rather than deterministic:

  1. Every call is keyed by sha256(model + params + full prompt text).
  2. The raw response is written to the cache under that key, before any parsing.
  3. A cached key is never re-called. Re-running a pipeline with an unchanged prompt
     reproduces the previous run exactly, from disk.
  4. Changing one word of a prompt changes its hash, so only the affected calls re-run.

That gives exact reproducibility of a *recorded* run, and makes prompt iteration cheap.
It does not give reproducibility of a *fresh* run, and the documentation says so.

Rate limiting: Ollama's cloud endpoint returns 429 above ~4 concurrent requests. A 429
is a pacing signal, not a failure of the unit, so it is retried with backoff without
consuming one of the call's error retries.
"""
from __future__ import annotations

import asyncio
import hashlib
import json
import random
import re
import time
from dataclasses import asdict, dataclass, field
from pathlib import Path

import httpx

DEFAULT_MODEL = "gpt-oss:120b-cloud"
DEFAULT_HOST = "http://localhost:11434"
FENCE_RE = re.compile(r"^\s*```[a-zA-Z]*\s*\n(.*?)\n?\s*```\s*$", re.DOTALL)


class RateLimited(Exception):
    """HTTP 429. Carries the server's Retry-After when it supplies one."""

    def __init__(self, retry_after: float = 0.0):
        super().__init__(f"429 Too Many Requests (retry-after={retry_after or 'unset'})")
        self.retry_after = retry_after


@dataclass(frozen=True)
class LLMConfig:
    """Everything that affects a response. Part of the cache key, verbatim."""

    model: str = DEFAULT_MODEL
    host: str = DEFAULT_HOST
    temperature: float = 0.0
    seed: int = 0
    concurrency: int = 3
    retries: int = 3
    backoff: float = 3.0
    max_throttle: int = 12

    def cache_identity(self) -> dict:
        """Only the fields that can change the model's output -- not host or pacing."""
        return {"model": self.model, "temperature": self.temperature, "seed": self.seed}


@dataclass
class CallRecord:
    """One call's full provenance. Appended to the run log as JSONL."""

    key: str
    label: str
    prompt_sha: str
    cached: bool = False
    ok: bool = False
    attempts: int = 0
    throttled: int = 0
    prompt_tokens: int | None = None
    completion_tokens: int | None = None
    wall_s: float = 0.0
    error: str | None = None
    meta: dict = field(default_factory=dict)


def strip_fences(text: str) -> str:
    """Models wrap output in ```prolog fences despite instructions not to."""
    m = FENCE_RE.match(text.strip())
    return (m.group(1) if m else text).strip()


def cache_key(cfg: LLMConfig, messages: list[dict]) -> str:
    """sha256 over the model identity and the exact prompt text."""
    payload = json.dumps(
        {"identity": cfg.cache_identity(), "messages": messages},
        sort_keys=True, ensure_ascii=False,
    )
    return hashlib.sha256(payload.encode("utf-8")).hexdigest()


def prompt_sha(messages: list[dict]) -> str:
    """Hash of the prompt text alone, for the manifest."""
    text = "\n\n".join(f"[{m['role']}]\n{m['content']}" for m in messages)
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


class Client:
    """Cached, rate-limit-aware chat client."""

    def __init__(self, cfg: LLMConfig, cache_dir: Path):
        self.cfg = cfg
        self.cache_dir = cache_dir
        self.cache_dir.mkdir(parents=True, exist_ok=True)
        self._sem = asyncio.Semaphore(cfg.concurrency)

    def _cache_path(self, key: str) -> Path:
        return self.cache_dir / f"{key}.json"

    def cached_response(self, key: str) -> dict | None:
        p = self._cache_path(key)
        if not p.exists():
            return None
        try:
            return json.loads(p.read_text(encoding="utf-8"))
        except json.JSONDecodeError:
            return None  # a truncated write; treat as a miss and overwrite

    async def _post(self, client: httpx.AsyncClient, messages: list[dict]) -> dict:
        resp = await client.post(
            f"{self.cfg.host}/api/chat",
            json={
                "model": self.cfg.model,
                "stream": False,
                "messages": messages,
                "options": {"temperature": self.cfg.temperature, "seed": self.cfg.seed},
            },
            timeout=1800.0,
        )
        if resp.status_code == 429:
            raise RateLimited(float(resp.headers.get("retry-after", 0) or 0))
        resp.raise_for_status()
        return resp.json()

    async def call(
        self, client: httpx.AsyncClient, messages: list[dict], label: str
    ) -> tuple[str, CallRecord]:
        """One completion. Returns (text, provenance record). Never raises on model error."""
        key = cache_key(self.cfg, messages)
        rec = CallRecord(key=key, label=label, prompt_sha=prompt_sha(messages))

        hit = self.cached_response(key)
        if hit is not None:
            rec.cached = rec.ok = True
            rec.prompt_tokens = hit.get("prompt_eval_count")
            rec.completion_tokens = hit.get("eval_count")
            return strip_fences(hit.get("message", {}).get("content", "")), rec

        async with self._sem:
            attempt, throttled = 1, 0
            while True:
                started = time.monotonic()
                try:
                    data = await self._post(client, messages)
                    content = data.get("message", {}).get("content", "")
                    if not content.strip():
                        raise ValueError("empty response")
                    # Write the raw response before parsing, so a parse bug never
                    # costs an API call.
                    self._cache_path(key).write_text(
                        json.dumps(data, ensure_ascii=False), encoding="utf-8")
                    rec.ok = True
                    rec.attempts = attempt
                    rec.throttled = throttled
                    rec.prompt_tokens = data.get("prompt_eval_count")
                    rec.completion_tokens = data.get("eval_count")
                    rec.wall_s = round(time.monotonic() - started, 2)
                    return strip_fences(content), rec
                except RateLimited as exc:
                    throttled += 1
                    if throttled > self.cfg.max_throttle:
                        rec.error = str(exc)
                        rec.attempts, rec.throttled = attempt, throttled
                        return "", rec
                    delay = exc.retry_after or min(self.cfg.backoff * 2 ** (throttled - 1), 60)
                    await asyncio.sleep(delay + random.uniform(0, 1))
                except Exception as exc:  # noqa: BLE001 - retry anything transient
                    rec.error = f"{type(exc).__name__}: {exc}"
                    attempt += 1
                    if attempt > self.cfg.retries:
                        rec.attempts, rec.throttled = attempt - 1, throttled
                        return "", rec
                    await asyncio.sleep(self.cfg.backoff * 2 ** attempt)


def append_log(log_path: Path, rec: CallRecord) -> None:
    log_path.parent.mkdir(parents=True, exist_ok=True)
    with log_path.open("a", encoding="utf-8") as fh:
        fh.write(json.dumps(asdict(rec), ensure_ascii=False) + "\n")
