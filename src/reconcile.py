"""Phase B2 -- one LLM call that merges duplicate names Phase B invented.

WHAT PROBLEM THIS SOLVES
------------------------
Phase B calls cannot see each other. A frozen vocabulary makes them agree on everything
the definitions article has a word for -- that mechanism demonstrably works, and the
same name for the central concept came out of four independent calls. It does nothing
for concepts each provision has to introduce, and that is where the drift lives: one
thing acquiring four names (required_compliance, required_compliance_with_requirements,
required_ensuring_compliance, required_accessibility_compliance) across five articles.

WHY ONE LLM CALL AND NOT STRING MATCHING
----------------------------------------
Because the judgement is semantic and string similarity gets it wrong in both
directions on this corpus. `required_quality_management_system` and
`required_risk_management_system` are ~88% similar as strings and are different legal
obligations; `must_publish_annual_report` and `must_submit_annual_report` are 0.67
token overlap and are the same act. No threshold separates those two cases, so an
automatic merge either corrupts the program silently or misses what it was built for.
One call that sees every name and gloss at once can tell quality from risk.

WHY THIS DOES NOT BREAK DETERMINISM
-----------------------------------
This call reads pass 1's output, which makes it dependent on 125 stochastic calls -- but
it is ONE call, it happens between two passes rather than inside one, and its output is
frozen and hashed exactly like Phase A's. Every Phase B call in pass 2 is still a pure
function of (slice, frozen vocabulary): parallel, order-free, cacheable. That is the
property that growing the vocabulary inside a pass would have destroyed.

WHAT IT PRODUCES
----------------
signature_2.pl -- canonical declarations plus `alias(Old/N, Canonical/N).` facts. Both
go into the pass-2 prompt: the declarations say which names to use, and the aliases say
which names not to. The alias facts survive into the assembled program, where they
record what was merged and why the two names are not both present.
"""
from __future__ import annotations

import argparse
import asyncio
import hashlib
import json
import re
import sys
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from llm import Client, LLMConfig, append_log  # noqa: E402
from prompts import build_reconcile_messages  # noqa: E402
from signature import Invented, collect_invented, parse_declarations, signature_sha  # noqa: E402

ALIAS_RE = re.compile(
    r"alias\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*"
    r"([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*\)")


def format_inventory(inv: list[Invented]) -> str:
    """The merge call's input: one line per predicate, sorted by how widely it is used.

    Usage count comes first because it is the tie-breaker the prompt asks for, and
    putting the widely-agreed names at the top makes them the obvious canonical pick.
    """
    rows = sorted(inv, key=lambda i: (-len(i.used_in), i.name))
    lines = []
    for i in rows:
        where = ", ".join(sorted(f.replace("celex_32024R1689_oj_", "")[:-3]
                                 for f in i.used_in)[:6])
        lines.append(f"{i.key:<52} used_by={len(i.used_in):<3} "
                     f"gloss='{i.gloss[:88]}'  in=[{where}]")
    return "\n".join(lines)


def parse_aliases(text: str) -> list[tuple[str, int, str, int]]:
    return [(a, int(an), b, int(bn)) for a, an, b, bn in ALIAS_RE.findall(text)]


def check_aliases(aliases: list[tuple[str, int, str, int]],
                  inv: list[Invented]) -> dict:
    """Mechanical checks on the merge map. The model's judgement is not audited here;
    only the things that are decidable without judgement.

    Three ways a merge map can be wrong on its face:
      * an alias across arities -- different predicates, never aliases
      * an alias chain (a -> b, b -> c) -- ambiguous; pass 2 would see both targets
      * an alias from or to a name that was never invented -- nothing to merge
    """
    known = {i.key for i in inv}
    targets = {f"{b}/{bn}" for _a, _an, b, bn in aliases}
    sources = {f"{a}/{an}" for a, an, _b, _bn in aliases}
    return {
        "n_aliases": len(aliases),
        "cross_arity": [f"{a}/{an}->{b}/{bn}" for a, an, b, bn in aliases if an != bn],
        "chained": sorted(targets & sources),
        "unknown_source": sorted(s for s in sources if s not in known),
        "self_alias": [f"{a}/{an}" for a, an, b, bn in aliases
                       if (a, an) == (b, bn)],
        "merged_away": len(sources),
        "canonical_names": len(targets),
    }


async def build(args: argparse.Namespace) -> int:
    out_dir = Path(args.out)
    sig_path = out_dir / "signature.pl"
    if not sig_path.exists():
        raise SystemExit(f"no {sig_path} -- run Phase A first")
    rules_dir = out_dir / "rules"
    if not rules_dir.exists() or not any(rules_dir.glob("*.pl")):
        raise SystemExit(f"no rule files in {rules_dir} -- run Phase B pass 1 first")

    sig_text = sig_path.read_text(encoding="utf-8")
    inv, n_files = collect_invented(sig_text, rules_dir)
    if not inv:
        raise SystemExit("Phase B invented no predicates -- nothing to reconcile")

    dest = out_dir / "signature_2.pl"
    if dest.exists() and not args.force:
        text = dest.read_text(encoding="utf-8")
        print(f"signature_2.pl already exists "
              f"({len(parse_declarations(text))} declarations, "
              f"{len(parse_aliases(text))} aliases, sha {signature_sha(text)[:12]}). "
              f"Use --force to rebuild.")
        return 0

    inventory = format_inventory(inv)
    print(f"inventory  : {len(inv)} invented predicates over {n_files} rule files "
          f"({len(inventory):,} chars, ~{len(inventory) // 4:,} tokens)")

    cfg = LLMConfig(model=args.model, host=args.host, concurrency=1,
                    num_predict=args.num_predict)
    client = Client(cfg, out_dir / "cache")
    messages = build_reconcile_messages(inventory, len(inv), n_files)

    async with httpx.AsyncClient() as http:
        text, rec = await client.call(http, messages, label="reconcile")
    rec.meta = {"n_invented": len(inv), "n_rule_files": n_files}
    append_log(out_dir / "run.jsonl", rec)

    if not rec.ok:
        print(f"FAILED: {rec.error}", file=sys.stderr)
        return 1

    decls = parse_declarations(text)
    aliases = parse_aliases(text)
    checks = check_aliases(aliases, inv)

    header = (
        "% ============================================================\n"
        "% RECONCILED VOCABULARY -- canonical names for what Phase B invented.\n"
        "%\n"
        "% Produced by ONE LLM call over every predicate pass 1 introduced, then\n"
        "% frozen. Pass 2 receives signature.pl AND this file, so the names below are\n"
        "% handed to the calls rather than hoped for.\n"
        "%\n"
        "% alias(Old/N, Canonical/N) records a merge: Old is not to be used.\n"
        "%\n"
        f"% input        : {len(inv)} invented predicates over {n_files} rule files\n"
        f"% model        : {cfg.model} (temperature {cfg.temperature}, seed {cfg.seed})\n"
        f"% prompt sha   : {rec.prompt_sha}\n"
        f"% declarations : {len(decls)}\n"
        f"% aliases      : {len(aliases)}\n"
        "%\n"
        "% DO NOT EDIT BY HAND without re-running Phase B pass 2.\n"
        "% ============================================================\n\n"
    )
    dest.write_text(header + text + "\n", encoding="utf-8")
    full = dest.read_text(encoding="utf-8")

    meta = {
        "n_invented_input": len(inv),
        "n_rule_files": n_files,
        "signature_2_sha256": signature_sha(full),
        "combined_sha256": signature_sha(sig_text + "\n\n" + full),
        "model": cfg.model,
        "prompt_sha": rec.prompt_sha,
        "cached": rec.cached,
        "n_declarations": len(decls),
        "checks": checks,
    }
    (out_dir / "signature_2.meta.json").write_text(
        json.dumps(meta, indent=2), encoding="utf-8")

    print(f"\nwrote {dest}")
    print(f"  canonical declarations : {len(decls)}")
    print(f"  aliases                : {checks['n_aliases']} "
          f"({checks['merged_away']} names merged into {checks['canonical_names']})")
    print(f"  sha256                 : {meta['signature_2_sha256'][:12]}")
    print(f"  cached                 : {rec.cached}")

    for label, key, why in [
        ("cross-arity aliases", "cross_arity",
         "different arities are different predicates and cannot be aliases"),
        ("alias chains", "chained",
         "a -> b and b -> c leaves pass 2 with two targets for one name"),
        ("unknown alias sources", "unknown_source",
         "the name was never invented, so there is nothing to merge"),
        ("self-aliases", "self_alias", "a name merged into itself"),
    ]:
        bad = checks[key]
        if bad:
            print(f"  WARNING {label}: {len(bad)} -- {why}")
            print(f"           {', '.join(map(str, bad[:8]))}")
    return 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Phase B2 -- reconcile the names Phase B invented.")
    p.add_argument("--out", default="out")
    p.add_argument("--model", default=LLMConfig.model)
    p.add_argument("--host", default=LLMConfig.host)
    p.add_argument("--num-predict", type=int, default=32768,
                   help="higher than Phase B's: the merge map covers every name at once")
    p.add_argument("--force", action="store_true",
                   help="rebuild even if signature_2.pl exists")
    return p


if __name__ == "__main__":
    sys.exit(asyncio.run(build(build_parser().parse_args())))
