"""The only stochastic component in the pipeline, and the record-keeping around it.

DETERMINISM CONTRACT
--------------------
Everything in the pipeline except this module is a pure function of its inputs. This
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

RUNAWAY GENERATION. A v3 run produced 86,890 completion tokens for one article whose
siblings each produced ~4,000, and it cost 225 s unnoticed. Over 125 calls that is the
difference between a 40-minute run and an unexplained multi-hour one. `num_predict`
caps it, and a response that hits the cap is reported as FAILED rather than written
out: a truncated completion ends mid-clause, and half a clause in a Prolog file is
worse than no clause. The cap is part of the cache identity, so raising it re-runs
exactly the calls it affects and nothing else.

TWO PROVIDERS
-------------
`ollama`      -- the local daemon or Ollama cloud, POST {host}/api/chat. The original
                 and default. gpt-oss ran here.
`openrouter`  -- POST https://openrouter.ai/api/v1/chat/completions, OpenAI-compatible.
                 Used for the consensus-scoring peers (Gemini, DeepSeek, Qwen, Kimi,
                 Mistral), so one client reaches every family with the same prompt.

The API key is read from the environment variable OPENROUTER_API_KEY at client start,
and from nowhere else. It is never part of the cache key, the run log or any file the
pipeline writes.

The two providers return differently shaped JSON. The raw response is cached as-is,
and `parse_response` recognises either shape, so an old Ollama cache entry and a new
OpenRouter one are read by the same code path.

REASONING. The peers are hybrid reasoning models; gpt-oss was not asked to reason.
Reasoning tokens are billed as output and count against max_tokens, so left on they
would both inflate cost and change what is being compared. The OpenRouter request
therefore carries `reasoning: {"effort": <cfg.reasoning>}`, default "none", which
OpenRouter maps to the nearest level a model supports. The setting is part of the
cache identity for OpenRouter calls.

CACHE COMPATIBILITY. `provider` and `reasoning` enter the cache identity ONLY for
OpenRouter calls. For Ollama the identity is byte-identical to what it was before this
field existed, so every recorded gpt-oss response in out/ and out_2/ still hits, and
no rule file there is reported stale.
"""
from __future__ import annotations

import asyncio
import hashlib
import json
import os
import random
import re
import time
from dataclasses import asdict, dataclass, field
from pathlib import Path

import httpx

DEFAULT_MODEL = "gpt-oss:120b-cloud"
DEFAULT_HOST = "http://localhost:11434"
OPENROUTER_HOST = "https://openrouter.ai/api/v1"
OPENROUTER_KEY_VAR = "OPENROUTER_API_KEY"
PROVIDERS = ("ollama", "openrouter")
REASONING_LEVELS = ("none", "minimal", "low", "medium", "high", "xhigh", "max")
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
    provider: str = "ollama"
    # OpenRouter only. "none" disables reasoning; unsupported levels are mapped by
    # OpenRouter to the nearest one the model offers.
    reasoning: str = "none"
    temperature: float = 0.0
    seed: int = 0
    concurrency: int = 3
    retries: int = 3
    backoff: float = 3.0
    max_throttle: int = 12
    # ~4x the largest healthy completion observed on this corpus. Generous enough that
    # no legitimate article hits it, tight enough that a loop is caught in ~1 minute.
    num_predict: int = 16384

    def __post_init__(self):
        if self.provider not in PROVIDERS:
            raise ValueError(f"provider must be one of {PROVIDERS}, got {self.provider!r}")
        if self.reasoning not in REASONING_LEVELS:
            raise ValueError(f"reasoning must be one of {REASONING_LEVELS}, "
                             f"got {self.reasoning!r}")
        if self.provider == "openrouter" and self.host == DEFAULT_HOST:
            # The Ollama default host makes no sense for OpenRouter; swap it unless
            # the caller set one explicitly. frozen=True, so go through object.
            object.__setattr__(self, "host", OPENROUTER_HOST)

    def cache_identity(self) -> dict:
        """Only the fields that can change the model's output -- not host or pacing.

        For Ollama this dict is unchanged from before `provider` existed, on purpose:
        it keeps every recorded gpt-oss response addressable.
        """
        ident = {"model": self.model, "temperature": self.temperature,
                 "seed": self.seed, "num_predict": self.num_predict}
        if self.provider != "ollama":
            ident["provider"] = self.provider
            ident["reasoning"] = self.reasoning
        return ident


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
    truncated: bool = False
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


def parse_response(data: dict) -> tuple[str, int | None, int | None, bool]:
    """(content, prompt_tokens, completion_tokens, truncated) from either provider.

    OpenAI-compatible responses carry `choices`; Ollama's carry `message` at the top
    level. Cached entries of both shapes exist side by side, so the shape is detected
    from the data rather than from the current config.
    """
    if "choices" in data:                                   # OpenRouter / OpenAI shape
        choice = (data.get("choices") or [{}])[0]
        if choice.get("error"):
            raise ValueError(f"provider error: {choice['error']}")
        usage = data.get("usage") or {}
        return (choice.get("message", {}).get("content") or "",
                usage.get("prompt_tokens"), usage.get("completion_tokens"),
                choice.get("finish_reason") == "length")
    return (data.get("message", {}).get("content") or "",   # Ollama shape
            data.get("prompt_eval_count"), data.get("eval_count"),
            data.get("done_reason") == "length")


class Client:
    """Cached, rate-limit-aware chat client. One class, two providers."""

    def __init__(self, cfg: LLMConfig, cache_dir: Path):
        self.cfg = cfg
        self.cache_dir = cache_dir
        self.cache_dir.mkdir(parents=True, exist_ok=True)
        self._sem = asyncio.Semaphore(cfg.concurrency)
        self._api_key = ""
        if cfg.provider == "openrouter":
            self._api_key = os.environ.get(OPENROUTER_KEY_VAR, "").strip()
            if not self._api_key:
                # Fail here, before Phase 0 has run, not on the first call.
                raise SystemExit(
                    f"provider is openrouter but {OPENROUTER_KEY_VAR} is not set.\n"
                    f"    export {OPENROUTER_KEY_VAR}=sk-or-...")

    def _truncation_error(self, rec: CallRecord) -> str:
        return (f"truncated: hit num_predict={self.cfg.num_predict} "
                f"({rec.completion_tokens} completion tokens). The completion ends "
                f"mid-clause and was not written. Raise num_predict or split the input.")

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

    def _request(self, messages: list[dict]) -> tuple[str, dict, dict]:
        """(url, headers, json body) for this provider. Same prompt, same knobs."""
        if self.cfg.provider == "openrouter":
            return (
                f"{self.cfg.host}/chat/completions",
                {"Authorization": f"Bearer {self._api_key}",
                 "Content-Type": "application/json"},
                {
                    "model": self.cfg.model,
                    "stream": False,
                    "messages": messages,
                    "temperature": self.cfg.temperature,
                    "seed": self.cfg.seed,
                    "max_tokens": self.cfg.num_predict,
                    "reasoning": {"effort": self.cfg.reasoning},
                },
            )
        return (
            f"{self.cfg.host}/api/chat",
            {},
            {
                "model": self.cfg.model,
                "stream": False,
                "messages": messages,
                "options": {"temperature": self.cfg.temperature, "seed": self.cfg.seed,
                            "num_predict": self.cfg.num_predict},
            },
        )

    async def _post(self, client: httpx.AsyncClient, messages: list[dict]) -> dict:
        url, headers, body = self._request(messages)
        resp = await client.post(url, json=body, headers=headers, timeout=1800.0)
        if resp.status_code == 429:
            raise RateLimited(float(resp.headers.get("retry-after", 0) or 0))
        if resp.status_code >= 400:
            # Keep the provider's own explanation. `raise_for_status` alone reports
            # "400 Bad Request" and a link to MDN, which says nothing about WHICH
            # parameter a provider rejected -- Gemini returned exactly that for a
            # reasoning setting it does not accept, and the run log had no way to
            # say so.
            body = resp.text.strip().replace("\n", " ")
            raise ValueError(f"HTTP {resp.status_code} from {url}: {body[:600]}")
        data = resp.json()
        if isinstance(data, dict) and data.get("error") and "choices" not in data:
            # OpenRouter can return a 200 whose body is only an error object.
            raise ValueError(f"provider error: {data['error']}")
        return data

    async def call(
        self, client: httpx.AsyncClient, messages: list[dict], label: str
    ) -> tuple[str, CallRecord]:
        """One completion. Returns (text, provenance record). Never raises on model error."""
        key = cache_key(self.cfg, messages)
        rec = CallRecord(key=key, label=label, prompt_sha=prompt_sha(messages))

        hit = self.cached_response(key)
        if hit is not None:
            rec.cached = True
            content, rec.prompt_tokens, rec.completion_tokens, rec.truncated = \
                parse_response(hit)
            if rec.truncated:
                rec.error = self._truncation_error(rec)
                return "", rec
            rec.ok = True
            return strip_fences(content), rec

        async with self._sem:
            attempt, throttled = 1, 0
            while True:
                started = time.monotonic()
                try:
                    data = await self._post(client, messages)
                    content, p_tok, c_tok, truncated = parse_response(data)
                    if not content.strip() and not truncated:
                        raise ValueError("empty response")
                    # Write the raw response before anything else, so a parse bug
                    # never costs an API call.
                    self._cache_path(key).write_text(
                        json.dumps(data, ensure_ascii=False), encoding="utf-8")
                    rec.attempts = attempt
                    rec.throttled = throttled
                    rec.prompt_tokens = p_tok
                    rec.completion_tokens = c_tok
                    rec.wall_s = round(time.monotonic() - started, 2)
                    rec.truncated = truncated
                    if rec.truncated:
                        # Not retried: at temperature 0 the same prompt loops the same
                        # way. Raise num_predict or split the provision.
                        rec.error = self._truncation_error(rec)
                        return "", rec
                    rec.ok = True
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
