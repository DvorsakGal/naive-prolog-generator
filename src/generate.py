"""Orchestration: one LLM call per unit, one .pl snippet per unit.

Concurrency-capped, resumable (existing snippets are skipped), and logged to JSONL.
The orchestrator deliberately performs no analysis of the units or of the model's
output beyond stripping markdown fences -- see DECISIONS.md D6.
"""
from __future__ import annotations

import argparse
import asyncio
import json
import random
import re
import sys
import time
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from prompt import build_messages  # noqa: E402
from select_units import Unit, select  # noqa: E402

DEFAULT_MODEL = "gpt-oss:120b-cloud"
DEFAULT_HOST = "http://localhost:11434"
FENCE_RE = re.compile(r"^\s*```[a-zA-Z]*\s*\n(.*?)\n?\s*```\s*$", re.DOTALL)


class RateLimited(Exception):
    """Ollama cloud returned 429. Carries the server's Retry-After, if any."""

    def __init__(self, retry_after: float = 0.0):
        super().__init__(f"429 Too Many Requests (retry-after={retry_after or 'unset'})")
        self.retry_after = retry_after


def strip_fences(text: str) -> str:
    """Models wrap output in ```prolog fences despite being told not to."""
    m = FENCE_RE.match(text.strip())
    return (m.group(1) if m else text).strip()


async def call_model(
    client: httpx.AsyncClient, host: str, model: str, unit: Unit
) -> tuple[str, dict]:
    """One chat completion. Returns (prolog_text, usage_stats)."""
    resp = await client.post(
        f"{host}/api/chat",
        json={
            "model": model,
            "stream": False,
            "messages": build_messages(unit.xml),
            "options": {"temperature": 0},
        },
        timeout=900.0,
    )
    if resp.status_code == 429:
        raise RateLimited(float(resp.headers.get("retry-after", 0) or 0))
    resp.raise_for_status()
    data = resp.json()
    content = data.get("message", {}).get("content", "")
    stats = {
        "prompt_tokens": data.get("prompt_eval_count"),
        "completion_tokens": data.get("eval_count"),
        "duration_s": round(data.get("total_duration", 0) / 1e9, 2),
    }
    return strip_fences(content), stats


async def process(
    unit: Unit,
    client: httpx.AsyncClient,
    sem: asyncio.Semaphore,
    args: argparse.Namespace,
    out_dir: Path,
    log_lock: asyncio.Lock,
    log_path: Path,
    progress: dict,
) -> None:
    dest = out_dir / f"{unit.safe_name()}.pl"
    if dest.exists() and not args.force:
        progress["skipped"] += 1
        return

    async with sem:
        record = {"uid": unit.uid, "model": args.model, "input_bytes": unit.size,
                  "n_refs": len(set(unit.refs()))}
        attempt, throttled = 1, 0
        while True:
            started = time.monotonic()
            try:
                prolog, stats = await call_model(client, args.host, args.model, unit)
                if not prolog:
                    raise ValueError("empty response")
                header = (
                    f"% unit: {unit.uid}\n"
                    f"% source: {unit.path.name}\n"
                    f"% model: {args.model}\n"
                )
                dest.write_text(header + prolog + "\n", encoding="utf-8")
                record |= stats | {"attempts": attempt, "ok": True,
                                   "wall_s": round(time.monotonic() - started, 2),
                                   "out_lines": prolog.count("\n") + 1}
                progress["done"] += 1
                break
            except RateLimited as exc:
                # Rate limiting is a pacing problem, not a failure of this unit: wait
                # and retry without consuming an attempt (bounded by --max-throttle).
                throttled += 1
                record["throttled"] = throttled
                if throttled > args.max_throttle:
                    record |= {"attempts": attempt, "ok": False, "error": str(exc)}
                    progress["failed"] += 1
                    break
                delay = exc.retry_after or min(args.backoff * 2 ** (throttled - 1), 60)
                await asyncio.sleep(delay + random.uniform(0, 1))
            except Exception as exc:  # noqa: BLE001 - retry on anything transient
                record |= {"attempts": attempt, "ok": False, "error": f"{type(exc).__name__}: {exc}"}
                attempt += 1
                if attempt > args.retries:
                    progress["failed"] += 1
                    break
                await asyncio.sleep(args.backoff * 2 ** attempt)

        async with log_lock:
            with log_path.open("a", encoding="utf-8") as fh:
                fh.write(json.dumps(record) + "\n")

    n = progress["done"] + progress["failed"]
    if n % 10 == 0 or n == progress["total"]:
        print(f"  {n}/{progress['total']} done={progress['done']} "
              f"failed={progress['failed']} skipped={progress['skipped']}", flush=True)


async def main_async(args: argparse.Namespace) -> int:
    units = select(Path(args.units), include_external=args.include_external)
    if args.limit:
        units = units[: args.limit]

    out_dir = Path(args.out) / "units"
    out_dir.mkdir(parents=True, exist_ok=True)
    log_path = Path(args.out) / "run.jsonl"

    total_bytes = sum(u.size for u in units)
    print(f"{len(units)} units, {total_bytes:,} bytes (~{total_bytes // 4:,} tokens)")
    print(f"model={args.model}  concurrency={args.concurrency}  out={out_dir}")

    progress = {"total": len(units), "done": 0, "failed": 0, "skipped": 0}
    sem = asyncio.Semaphore(args.concurrency)
    log_lock = asyncio.Lock()
    started = time.monotonic()

    async with httpx.AsyncClient() as client:
        await asyncio.gather(*[
            process(u, client, sem, args, out_dir, log_lock, log_path, progress)
            for u in units
        ])

    elapsed = time.monotonic() - started
    print(f"\ndone={progress['done']} failed={progress['failed']} "
          f"skipped={progress['skipped']} in {elapsed:.1f}s")
    return 1 if progress["failed"] else 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Naive Prolog ontology generator.")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--out", default="out")
    p.add_argument("--model", default=DEFAULT_MODEL)
    p.add_argument("--host", default=DEFAULT_HOST)
    p.add_argument("--concurrency", type=int, default=3,
                   help="parallel requests; Ollama cloud returns 429 above ~4")
    p.add_argument("--retries", type=int, default=3, help="retries for non-429 errors")
    p.add_argument("--backoff", type=float, default=3.0, help="base backoff seconds")
    p.add_argument("--max-throttle", type=int, default=12,
                   help="max 429 waits per unit before giving up")
    p.add_argument("--limit", type=int, default=0, help="process only the first N units")
    p.add_argument("--force", action="store_true", help="regenerate existing snippets")
    p.add_argument("--include-external", action="store_true",
                   help="also process the 241 referenced non-AI-Act units (see DECISIONS.md D1)")
    return p


if __name__ == "__main__":
    sys.exit(asyncio.run(main_async(build_parser().parse_args())))
