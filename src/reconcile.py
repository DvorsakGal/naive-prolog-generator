"""Phase B2 -- adjudicate candidate pairs of invented names, then freeze the result.

WHAT PROBLEM THIS SOLVES
------------------------
Phase B calls cannot see each other. A frozen vocabulary makes them agree on everything
the definitions article has a word for -- that mechanism demonstrably works. It does
nothing for what each provision has to introduce itself, and that is where the drift
lives: one thing acquiring several names across several articles
(`information_obtained` / `obtained_information`, `edps` /
`european_data_protection_supervisor`).

THREE STEPS, SPLIT BY WHAT EACH IS GOOD AT
------------------------------------------
  1. PROPOSE (mechanical, `signature.alias_candidates`). Every pair of invented
     predicates with the same arity, the same modality, and either an identical gloss or
     >=0.6 token overlap. Cheap, exhaustive, high recall, no judgement.
  2. ADJUDICATE (the LLM, batched). One forced verdict per pair: same or different.
     This is the step that needs judgement -- token overlap cannot tell quality
     management from risk management.
  3. CANONICALISE (mechanical, here). Union the `same` verdicts into groups, then pick
     each group's surviving name by usage count. No judgement needed, so no model.

WHY NOT ONE CALL OVER THE WHOLE INVENTORY
-----------------------------------------
That was the first version, and it failed. It handed over all 1,469 invented predicates
(46,855 prompt tokens) and asked which were duplicates; it returned a single comment
line, "No duplicate predicate names with identical arity were identified", and no
Prolog at all. An open-ended search over 1,469 names has a costless null answer. Forcing
one verdict per proposed pair removes it, and makes a non-answer detectable: `verdicts`
is compared against the pairs sent, and a shortfall is reported rather than silently
read as "different".

WHY THIS DOES NOT BREAK DETERMINISM
-----------------------------------
These calls read pass 1's output, which makes them dependent on 125 stochastic calls --
but they happen BETWEEN two passes rather than inside one, and their output is frozen
and hashed exactly like Phase A's. Every Phase B call in pass 2 is still a pure function
of (slice, frozen vocabulary): parallel, order-free, cacheable.

WHAT IT PRODUCES
----------------
signature_2.pl -- a declaration per surviving name, plus `alias(Old/N, Canonical/N).`
for every name merged away. Both go into the pass-2 prompt: the declarations say which
names to use, the aliases say which not to. The alias facts survive into the assembled
program as a record of what was merged.
"""
from __future__ import annotations

import argparse
import asyncio
import json
import re
import sys
import time
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from llm import Client, LLMConfig, append_log, cache_key  # noqa: E402
from prompts import build_reconcile_messages  # noqa: E402
from signature import (Candidate, alias_candidates, collect_invented,  # noqa: E402
                       parse_declarations, signature_sha)

VERDICT_RE = re.compile(
    r"\b(same|different)\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*"
    r"([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*\)")
ALIAS_RE = re.compile(
    r"alias\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*"
    r"([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*\)")

DEFAULT_BATCH = 80


def format_pairs(batch: list[Candidate]) -> str:
    """One numbered block per pair. Glosses are the evidence the verdict rests on, so
    they are given in full rather than truncated to fit more pairs in."""
    lines = []
    for n, c in enumerate(batch, start=1):
        lines.append(
            f"{n}. {c.a.key}  ~  {c.b.key}      [{c.reason}]\n"
            f"     {c.a.key:<46} used_by={len(c.a.used_in)}  "
            f"gloss='{c.a.gloss or '(none)'}'\n"
            f"     {c.b.key:<46} used_by={len(c.b.used_in)}  "
            f"gloss='{c.b.gloss or '(none)'}'")
    return "\n".join(lines)


def parse_verdicts(text: str) -> dict[tuple[str, str], str]:
    """{(a_key, b_key): 'same'|'different'}, keyed order-insensitively.

    The model is asked to keep the given order, but a flipped pair is still an
    unambiguous verdict about the same two predicates, so it is accepted rather than
    discarded.
    """
    out: dict[tuple[str, str], str] = {}
    for verdict, a, an, b, bn in VERDICT_RE.findall(text):
        key = tuple(sorted((f"{a}/{an}", f"{b}/{bn}")))
        out[key] = verdict
    return out


class Groups:
    """Union-find over `same` verdicts.

    Needed because verdicts arrive pairwise and in separate batches. If a~b and b~c are
    both `same`, the three names are one thing and must end up with ONE surviving name;
    emitting alias(a, b) and alias(b, c) would leave pass 2 with two different targets
    for `a` and is exactly the alias chain the old check warned about.
    """

    def __init__(self) -> None:
        self.parent: dict[str, str] = {}

    def find(self, x: str) -> str:
        self.parent.setdefault(x, x)
        while self.parent[x] != x:
            self.parent[x] = self.parent[self.parent[x]]
            x = self.parent[x]
        return x

    def union(self, a: str, b: str) -> None:
        ra, rb = self.find(a), self.find(b)
        if ra != rb:
            self.parent[rb] = ra

    def groups(self) -> list[list[str]]:
        out: dict[str, list[str]] = {}
        for x in self.parent:
            out.setdefault(self.find(x), []).append(x)
        return [sorted(g) for g in out.values() if len(g) > 1]


def canonicalise(groups: list[list[str]], index: dict[str, object]) -> list[dict]:
    """Pick each group's surviving name: most used, then shortest, then alphabetical.

    Deterministic and done in code. The model is not asked for it, because "prefer the
    name most provisions already use" needs no judgement, and leaving it to the model
    only adds a way for two batches to disagree about one group.
    """
    out = []
    for g in groups:
        ranked = sorted(g, key=lambda k: (-len(index[k].used_in), len(k), k))
        winner = ranked[0]
        out.append({"canonical": winner, "merged": ranked[1:],
                    "gloss": index[winner].gloss or
                             next((index[k].gloss for k in ranked if index[k].gloss), "")})
    return sorted(out, key=lambda r: r["canonical"])


def render(decisions: list[dict], n_pairs: int, n_same: int) -> str:
    lines = [
        "% --- surviving names ---",
    ]
    for d in decisions:
        gloss = (d["gloss"] or d["canonical"].split("/")[0].replace("_", " "))
        name, arity = d["canonical"].split("/")
        lines.append(f":- pred {name}/{arity}, gloss('{gloss.replace(chr(39), chr(39) * 2)}'), "
                     f"source('reconciled').")
    lines.append("")
    lines.append("% --- merged away: do not use the first name, use the second ---")
    for d in decisions:
        for old in d["merged"]:
            lines.append(f"alias({old}, {d['canonical']}).")
    return "\n".join(lines)


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
    index = {i.key: i for i in inv}
    cands = alias_candidates(inv, args.threshold)
    if not cands:
        raise SystemExit(f"{len(inv)} invented predicates, no candidate pairs at "
                         f"threshold {args.threshold} -- nothing to adjudicate")

    batches = [cands[i:i + args.batch] for i in range(0, len(cands), args.batch)]

    cfg = LLMConfig(model=args.model, host=args.host, concurrency=args.concurrency,
                    num_predict=args.num_predict)
    batch_messages = [
        build_reconcile_messages(format_pairs(b), len(b), k + 1, len(batches))
        for k, b in enumerate(batches)
    ]
    # SELF-INVALIDATING, like rules.py. The fingerprint covers every batch's full
    # prompt, so it changes when the prompt changes, when the candidate pairs change
    # (i.e. when pass 1 is regenerated), or when the model config changes.
    #
    # The previous version refused to rebuild whenever signature_2.pl existed, and
    # `run.sh --both` did not pass --force. The result was that a rewritten
    # reconciliation prompt silently reused the previous run's output -- an EMPTY
    # signature_2.pl -- and pass 2 was reported as a reconciliation experiment when
    # nothing had been reconciled.
    fingerprint = signature_sha("\n".join(
        cache_key(cfg, m) for m in batch_messages))

    dest = out_dir / "signature_2.pl"
    if dest.exists() and not args.force:
        existing = dest.read_text(encoding="utf-8")
        if f"% fingerprint   : {fingerprint}" in existing:
            print(f"signature_2.pl is current "
                  f"({len(parse_declarations(existing))} declarations, "
                  f"{len(ALIAS_RE.findall(existing))} aliases, "
                  f"sha {signature_sha(existing)[:12]}). Nothing to do.")
            return 0
        print("signature_2.pl exists but its inputs have changed -- rebuilding.\n")
    print(f"inventory  : {len(inv)} invented predicates over {n_files} rule files")
    print(f"candidates : {len(cands)} pairs (same arity, same modality, "
          f"gloss match or >={args.threshold} token overlap)")
    print(f"batches    : {len(batches)} x up to {args.batch} pairs, concurrency "
          f"{args.concurrency}\n")

    client = Client(cfg, out_dir / "cache")
    log_path = out_dir / "run.jsonl"
    started = time.monotonic()

    async def one(k: int, batch: list[Candidate]) -> dict[tuple[str, str], str]:
        text, rec = await client.call(http, batch_messages[k],
                                      label=f"reconcile:{k + 1}")
        rec.meta = {"n_pairs": len(batch)}
        append_log(log_path, rec)
        if not rec.ok:
            print(f"  batch {k + 1}: FAILED {rec.error}", file=sys.stderr)
            return {}
        v = parse_verdicts(text)
        asked = {c.key if c.key[0] <= c.key[1] else (c.key[1], c.key[0])
                 for c in batch}
        got = len(v.keys() & asked)
        print(f"  batch {k + 1}/{len(batches)}  {'cache' if rec.cached else 'call '}  "
              f"{got}/{len(batch)} pairs answered  "
              f"{sum(1 for x in v.values() if x == 'same')} same")
        return v

    async with httpx.AsyncClient() as http:
        results = await asyncio.gather(*[one(k, b) for k, b in enumerate(batches)])

    verdicts: dict[tuple[str, str], str] = {}
    for r in results:
        verdicts.update(r)

    asked = [tuple(sorted(c.key)) for c in cands]
    answered = [k for k in asked if k in verdicts]
    same = [k for k in answered if verdicts[k] == "same"]

    g = Groups()
    for a, b in same:
        g.union(a, b)
    # A name can be unioned only if both sides are known predicates; a hallucinated
    # indicator would otherwise acquire a group of its own.
    groups = [[k for k in grp if k in index] for grp in g.groups()]
    groups = [grp for grp in groups if len(grp) > 1]
    decisions = canonicalise(groups, index)
    body = render(decisions, len(cands), len(same))

    merged = sum(len(d["merged"]) for d in decisions)
    unanswered = [k for k in asked if k not in verdicts]
    header = (
        "% ============================================================\n"
        "% RECONCILED VOCABULARY -- surviving names for what Phase B invented.\n"
        "%\n"
        "% A mechanical pass proposed candidate pairs; LLM calls adjudicated each one;\n"
        "% the surviving name of each group was then chosen in code by usage count.\n"
        "% Pass 2 receives signature.pl AND this file, so the names below are handed\n"
        "% to the calls rather than hoped for.\n"
        "%\n"
        "% alias(Old/N, Canonical/N) records a merge: Old is not to be used.\n"
        "%\n"
        f"% invented input : {len(inv)} predicates over {n_files} rule files\n"
        f"% pairs proposed : {len(cands)}\n"
        f"% pairs answered : {len(answered)}"
        f"{f' (UNANSWERED: {len(unanswered)})' if unanswered else ''}\n"
        f"% verdict same   : {len(same)}\n"
        f"% groups         : {len(decisions)}\n"
        f"% names merged   : {merged}\n"
        f"% model          : {cfg.model} (temperature {cfg.temperature}, "
        f"seed {cfg.seed})\n"
        f"% fingerprint   : {fingerprint}\n"
        "%\n"
        "% DO NOT EDIT BY HAND without re-running Phase B pass 2.\n"
        "% ============================================================\n\n"
    )
    dest.write_text(header + body + "\n", encoding="utf-8")
    full = dest.read_text(encoding="utf-8")

    meta = {
        "n_invented_input": len(inv),
        "n_rule_files": n_files,
        "threshold": args.threshold,
        "pairs_proposed": len(cands),
        "pairs_answered": len(answered),
        "pairs_unanswered": len(unanswered),
        "answer_rate": round(len(answered) / len(cands), 3) if cands else 0.0,
        "verdict_same": len(same),
        "verdict_different": len(answered) - len(same),
        "groups": len(decisions),
        "names_merged": merged,
        "fingerprint": fingerprint,
        "signature_2_sha256": signature_sha(full),
        "combined_sha256": signature_sha(sig_text + "\n\n" + full),
        "model": cfg.model,
        "batches": len(batches),
        "decisions": decisions,
        "unanswered_sample": [list(k) for k in unanswered[:20]],
    }
    (out_dir / "signature_2.meta.json").write_text(
        json.dumps(meta, indent=2), encoding="utf-8")

    print(f"\nwrote {dest}  in {time.monotonic() - started:.1f}s")
    print(f"  pairs proposed    {len(cands)}")
    print(f"  pairs answered    {len(answered)}   "
          f"rate {meta['answer_rate']}")
    print(f"  verdict same      {len(same)}")
    print(f"  verdict different {meta['verdict_different']}")
    print(f"  groups formed     {len(decisions)}")
    print(f"  names merged away {merged}")
    print(f"  sha256            {meta['signature_2_sha256'][:12]}")
    if unanswered:
        print(f"  WARNING {len(unanswered)} pairs got no verdict. They are treated as")
        print( "          'different' by omission, which is the failure mode this")
        print( "          design exists to make visible. Re-run with --force, or a")
        print( "          smaller --batch, before reading the pass-2 comparison.")
        for k in unanswered[:5]:
            print(f"            {k[0]} ~ {k[1]}")
    if decisions:
        print("\n  largest groups:")
        for d in sorted(decisions, key=lambda x: -len(x["merged"]))[:8]:
            print(f"    {d['canonical']:<44} <- {', '.join(d['merged'][:3])}")
    return 1 if unanswered else 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Phase B2 -- adjudicate candidate pairs of invented names.")
    p.add_argument("--out", default="out")
    p.add_argument("--model", default=LLMConfig.model)
    p.add_argument("--host", default=LLMConfig.host)
    p.add_argument("--batch", type=int, default=DEFAULT_BATCH,
                   help="pairs per call; smaller batches answer more reliably")
    p.add_argument("--concurrency", type=int, default=3)
    p.add_argument("--threshold", type=float, default=0.6,
                   help="token-overlap floor for proposing a pair")
    p.add_argument("--num-predict", type=int, default=LLMConfig.num_predict)
    p.add_argument("--force", action="store_true",
                   help="rebuild even if signature_2.pl exists")
    return p


if __name__ == "__main__":
    sys.exit(asyncio.run(build(build_parser().parse_args())))
