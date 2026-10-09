"""Phase B -- one LLM call per article or annex, against a frozen vocabulary.

DETERMINISM
-----------
Each call's input is exactly (one slice of the act, the frozen vocabulary). Nothing
from another Phase B call enters it, so calls are mutually independent: any order, any
concurrency, same result. That is what makes 125 calls affordable to run and free to
re-run, and it is the property the two-pass design in `reconcile.py` is careful to
keep.

The vocabulary's sha256 is checked against signature.meta.json before the run starts.
If it changed, clauses written against the old one are stale and the run stops rather
than mixing two vocabularies in one file.

TWO PASSES
----------
`--pass 1` runs against signature.pl alone and writes rules/.
`--pass 2` runs against signature.pl + signature_2.pl (the reconciled names produced
by reconcile.py from pass 1's output) and writes rules_2/.

Pass 2 is not a continuation of pass 1 -- it is a re-run of the same 125 calls with one
variable changed. Both passes exist on disk afterwards, so the question "did pinning
the names actually help?" is answered by linting both, not by argument.
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
from llm import Client, LLMConfig, append_log, cache_key  # noqa: E402
from prompts import build_rules_messages  # noqa: E402
from signature import parse_declarations, signature_sha  # noqa: E402
from structure import WorkUnit, phase_b_units, strict_check  # noqa: E402

PASS_DIRS = {1: "rules", 2: "rules_2"}


def load_signature(out_dir: Path, which_pass: int) -> tuple[str, str, dict]:
    """The frozen vocabulary for this pass, plus the hash the rule files record.

    Returns (text handed to the model, hash stamped into each rule file, meta).
    For pass 2 the text is signature.pl followed by signature_2.pl, and the stamp
    covers both -- so a pass-2 rule file can never be mistaken for a pass-1 one, and
    editing either file invalidates the right set of outputs.
    """
    sig_path, meta_path = out_dir / "signature.pl", out_dir / "signature.meta.json"
    if not sig_path.exists():
        raise SystemExit(f"no {sig_path} -- run Phase A first:\n"
                         f"    venv/bin/python src/signature.py --out {out_dir}")
    if not meta_path.exists():
        raise SystemExit(f"no {meta_path} -- rebuild the vocabulary with --force")

    text = sig_path.read_text(encoding="utf-8")
    meta = json.loads(meta_path.read_text(encoding="utf-8"))
    actual = signature_sha(text)
    if actual != meta["signature_sha256"]:
        raise SystemExit(
            f"signature.pl has changed since Phase A.\n"
            f"  recorded : {meta['signature_sha256']}\n"
            f"  actual   : {actual}\n"
            f"Clauses written against the old vocabulary are stale. Either restore the\n"
            f"file or re-run Phase A with --force and regenerate every rule file."
        )
    if which_pass == 1:
        return text, actual, meta

    sig2_path = out_dir / "signature_2.pl"
    if not sig2_path.exists():
        raise SystemExit(
            f"no {sig2_path} -- pass 2 needs the reconciled vocabulary:\n"
            f"    venv/bin/python src/reconcile.py --out {out_dir}"
        )
    combined = text + "\n\n" + sig2_path.read_text(encoding="utf-8")
    return combined, signature_sha(combined), meta


async def one(unit: WorkUnit, signature: str, sig_sha: str, client: Client,
              http: httpx.AsyncClient, rules_dir: Path, log_path: Path,
              force: bool, progress: dict) -> None:
    dest = rules_dir / f"{unit.safe_name()}.pl"
    messages = build_rules_messages(signature, unit.as_xml())
    # STALENESS IS KEYED ON THE CALL KEY, NOT THE SIGNATURE HASH.
    #
    # The call key covers the model, temperature, seed, num_predict AND the full
    # prompt text -- everything that can change the response. The signature is part
    # of the prompt, so this subsumes the old signature check.
    #
    # Keying on the signature hash alone was wrong, and silently so: editing the
    # Phase B prompt left every existing rule file looking current, so a prompt
    # experiment reused the previous prompt's output and reported it as a result.
    # The response cache in llm.py would have missed correctly -- but this skip
    # short-circuits before reaching it.
    key = cache_key(client.cfg, messages)
    stamp = f"% call key   : {key}"
    if dest.exists() and not force:
        # Searched over the WHOLE file, not a fixed prefix. The header's `title` line
        # is variable length -- an annex title can carry a full <ref> id -- and a
        # 600-character window pushed the stamp out of range for 7 of 125 units, which
        # then regenerated on every single run.
        if stamp in dest.read_text(encoding="utf-8"):
            progress["skipped"] += 1
            return
        progress["stale"] += 1

    text, rec = await client.call(http, messages, label=f"rules:{unit.fragment}")
    rec.meta = {"unit": unit.uid, "input_chars": unit.size,
                "n_refs": len(set(unit.refs())), "breadcrumb": unit.breadcrumb}
    append_log(log_path, rec)

    if not rec.ok:
        progress["failed"] += 1
        progress["failures"].append((unit.fragment, rec.error or "unknown"))
        print(f"  FAILED {unit.fragment}: {rec.error}", file=sys.stderr)
        return

    header = (
        f"% unit       : {unit.uid}\n"
        f"% context    : {unit.breadcrumb}\n"
        f"% slice sha  : {unit.sha256}\n"
        f"% model      : {client.cfg.model}\n"
        f"% signature  : {sig_sha}\n"
        f"% call key   : {key}\n"
        f"% cached     : {rec.cached}\n"
        f"% title      : {unit.title}\n"
    )
    dest.write_text(header + text + "\n", encoding="utf-8")
    progress["done"] += 1
    print(f"  {unit.fragment:<10} {'cache' if rec.cached else 'call ':<6} "
          f"{rec.completion_tokens or 0:>6} out-tokens  {len(text):>6,} chars")


async def main_async(args: argparse.Namespace) -> int:
    out_dir = Path(args.out)
    signature, sig_sha, meta = load_signature(out_dir, args.pass_)

    units_dir = Path(args.units)
    strict_check(units_dir)                      # the slicer agrees with the corpus
    units = phase_b_units(units_dir, include_annexes=not args.no_annexes)
    if args.only:
        wanted = {s.strip() for s in args.only.split(",")}
        units = [u for u in units if u.fragment in wanted]
        unknown = wanted - {u.fragment for u in units}
        if unknown:
            raise SystemExit(f"no such work unit: {sorted(unknown)}")

    rules_dir = out_dir / PASS_DIRS[args.pass_]
    rules_dir.mkdir(parents=True, exist_ok=True)
    log_path = out_dir / "run.jsonl"

    total = sum(u.size for u in units)
    print(f"Phase B pass {args.pass_} -- clauses")
    print(f"  vocabulary : {len(parse_declarations(signature))} predicates, "
          f"sha {sig_sha[:12]}")
    print(f"  work units : {len(units)}, {total:,} chars (~{total // 4:,} tokens)")
    print(f"  output     : {rules_dir}")
    print(f"  model      : {args.model}  concurrency {args.concurrency}\n")

    cfg = LLMConfig(model=args.model, host=args.host, concurrency=args.concurrency,
                    num_predict=args.num_predict)
    client = Client(cfg, out_dir / "cache")
    progress = {"done": 0, "failed": 0, "skipped": 0, "stale": 0, "failures": []}
    started = time.monotonic()

    async with httpx.AsyncClient() as http:
        await asyncio.gather(*[
            one(u, signature, sig_sha, client, http, rules_dir, log_path,
                args.force, progress)
            for u in units
        ])

    print(f"\ndone={progress['done']} failed={progress['failed']} "
          f"skipped={progress['skipped']} stale-regenerated={progress['stale']} "
          f"in {time.monotonic() - started:.1f}s")
    if progress["failures"]:
        print("\nfailures -- these work units produced no file:", file=sys.stderr)
        for frag, err in sorted(progress["failures"]):
            print(f"  {frag:<10} {err}", file=sys.stderr)
    return 1 if progress["failed"] else 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Phase B -- one call per article or annex.")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--out", default="out")
    p.add_argument("--pass", dest="pass_", type=int, default=1, choices=(1, 2),
                   help="1: against signature.pl. 2: against signature.pl + signature_2.pl")
    p.add_argument("--only", default="", help="comma-separated fragments, e.g. art_5,anx_3")
    p.add_argument("--no-annexes", action="store_true")
    p.add_argument("--model", default=LLMConfig.model)
    p.add_argument("--host", default=LLMConfig.host)
    p.add_argument("--concurrency", type=int, default=3,
                   help="Ollama cloud returns 429 above ~4")
    p.add_argument("--num-predict", type=int, default=LLMConfig.num_predict,
                   help="completion-token cap; a call that hits it is reported failed")
    p.add_argument("--force", action="store_true", help="regenerate existing rule files")
    return p


if __name__ == "__main__":
    sys.exit(asyncio.run(main_async(build_parser().parse_args())))
