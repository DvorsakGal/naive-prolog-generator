"""Phase B -- one LLM call per provision, against the frozen signature.

DETERMINISM
-----------
Each call's input is exactly (frozen signature, one provision). Nothing from another
Phase B call enters it, so calls are mutually independent: any order, any concurrency,
same result. The signature's sha256 is checked against signature.meta.json before the
run starts -- if the signature changed, rules generated against the old one are stale
and the run stops rather than mixing vocabularies.

Responses are cached by prompt hash in llm.py, so re-running is free and a prompt edit
re-runs only the calls it actually affected.
"""
from __future__ import annotations

import argparse
import asyncio
import json
import sys
import time
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from llm import Client, LLMConfig, append_log  # noqa: E402
from prompt_v2 import DEFAULT_PEDANTRY, PEDANTRY, build_rules_messages  # noqa: E402
from select_provisions import select_provisions  # noqa: E402
from select_units import Unit  # noqa: E402
from signature import parse_declarations, signature_sha  # noqa: E402


def load_signature(out_dir: Path) -> tuple[str, dict]:
    """Read signature.pl and verify it matches the hash recorded at Phase A."""
    sig_path, meta_path = out_dir / "signature.pl", out_dir / "signature.meta.json"
    if not sig_path.exists():
        raise SystemExit(f"no {sig_path} -- run Phase A first:\n"
                         f"    venv/bin/python src/signature.py")
    text = sig_path.read_text(encoding="utf-8")
    if not meta_path.exists():
        raise SystemExit(f"no {meta_path} -- rebuild the signature with --force")
    meta = json.loads(meta_path.read_text(encoding="utf-8"))
    actual = signature_sha(text)
    if actual != meta["signature_sha256"]:
        raise SystemExit(
            f"signature.pl has changed since Phase A.\n"
            f"  recorded : {meta['signature_sha256']}\n"
            f"  actual   : {actual}\n"
            f"Rules generated against the old signature are stale. Either restore the\n"
            f"file or re-run Phase A with --force and regenerate all rules."
        )
    return text, meta


async def one(unit: Unit, signature: str, sig_sha: str, client: Client,
              http: httpx.AsyncClient, out_dir: Path, log_path: Path,
              force: bool, pedantry: int, progress: dict) -> None:
    dest = out_dir / f"{unit.safe_name()}.pl"
    if dest.exists() and not force:
        # Skip only if the existing file was generated against THIS signature
        # AND at this pedantry level. Otherwise it is stale: its rules may
        # reference predicates the current vocabulary no longer declares, or be
        # transcribed at a different level of detail than the run asked for.
        head = dest.read_text(encoding="utf-8")[:400]
        if f"% signature: {sig_sha}" in head and f"% pedantry  : {pedantry}" in head:
            progress["skipped"] += 1
            return
        progress["stale"] += 1

    messages = build_rules_messages(signature, unit.xml, pedantry)
    text, rec = await client.call(http, messages, label=f"rules:{unit.fragment}")
    rec.meta = {"unit": unit.uid, "input_chars": unit.size,
                "n_refs": len(set(unit.refs())), "pedantry": pedantry}
    append_log(log_path, rec)

    if not rec.ok:
        progress["failed"] += 1
        print(f"  FAILED {unit.fragment}: {rec.error}", file=sys.stderr)
        return

    header = (
        f"% unit      : {unit.uid}\n"
        f"% source    : {unit.path.name}\n"
        f"% model     : {client.cfg.model}\n"
        f"% pedantry  : {pedantry}\n"
        f"% prompt sha: {rec.prompt_sha}\n"
        f"% signature: {sig_sha}\n"
        f"% cached    : {rec.cached}\n"
    )
    dest.write_text(header + text + "\n", encoding="utf-8")
    progress["done"] += 1
    print(f"  {unit.fragment:<28} {'cache' if rec.cached else 'call ':<6} "
          f"{rec.completion_tokens or 0:>6} out-tokens  {len(text):>6,} chars")


async def main_async(args: argparse.Namespace) -> int:
    out_dir = Path(args.out)
    signature, meta = load_signature(out_dir)

    arts = None if args.articles == "all" else [s.strip() for s in args.articles.split(",")]
    units = select_provisions(Path(args.units), arts)

    rules_dir = out_dir / "rules"
    rules_dir.mkdir(parents=True, exist_ok=True)
    log_path = out_dir / "run.jsonl"

    total = sum(u.size for u in units)
    print(f"Phase B -- rules")
    print(f"  signature : {len(parse_declarations(signature))} predicates, "
          f"sha {meta['signature_sha256'][:12]}")
    print(f"  provisions: {len(units)}, {total:,} chars (~{total // 4:,} tokens)")
    print(f"  pedantry  : {args.pedantry}  (1 = terse, 5 = exhaustive)")
    print(f"  model     : {args.model}  concurrency {args.concurrency}\n")

    cfg = LLMConfig(model=args.model, host=args.host, concurrency=args.concurrency)
    client = Client(cfg, out_dir / "cache")
    progress = {"done": 0, "failed": 0, "skipped": 0, "stale": 0}
    started = time.monotonic()

    async with httpx.AsyncClient() as http:
        await asyncio.gather(*[
            one(u, signature, meta["signature_sha256"], client, http,
                rules_dir, log_path, args.force, args.pedantry, progress)
            for u in units
        ])

    print(f"\ndone={progress['done']} failed={progress['failed']} "
          f"skipped={progress['skipped']} stale-regenerated={progress['stale']} "
          f"in {time.monotonic() - started:.1f}s")
    return 1 if progress["failed"] else 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Phase B -- generate rules per provision.")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--out", default="out_v2")
    p.add_argument("--articles", default="art_5",
                   help="comma-separated article ids, or 'all'")
    p.add_argument("--pedantry", type=int, default=DEFAULT_PEDANTRY,
                   choices=sorted(PEDANTRY),
                   help="how exhaustively to transcribe a provision: "
                        "1 = terse, 3 = one goal per stated conjunct, 5 = exhaustive")
    p.add_argument("--model", default=LLMConfig.model)
    p.add_argument("--host", default=LLMConfig.host)
    p.add_argument("--concurrency", type=int, default=3,
                   help="Ollama cloud returns 429 above ~4")
    p.add_argument("--force", action="store_true", help="regenerate existing rule files")
    return p


if __name__ == "__main__":
    sys.exit(asyncio.run(main_async(build_parser().parse_args())))
