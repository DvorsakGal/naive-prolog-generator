"""Consensus scoring: how much do independent models agree with a candidate program?

THE RULE (consensus_scoring.md)
-------------------------------
For a candidate translation c and peer translations p_1..p_k from k independent model
families, all given the same prompt:

    c_score(c) = 1 - (1/k) * sum_i  1[ equiv(c, p_i) ]

equiv() is logical equivalence checked by Z3 after aligning predicate names. The score
is a DISAGREEMENT score: 0 when every peer agrees, 1 when none does. Agreement
(1 - score) is printed beside it so the direction is never misread.

WHAT THE "SENTENCE" IS HERE
---------------------------
The paper scores one sentence against one formula. Our unit of translation is a whole
article, so the comparable unit is one predicate's definition inside one provision --
one rule head. Every head the candidate defines in a unit is scored against each peer's
definition of the aligned predicate in the same unit, and the per-head scores are
averaged up to the unit and the file.

VERDICTS, AND WHY THEY ARE KEPT APART
-------------------------------------
Per (head, peer) exactly one of:

    equiv              Z3 proved the two definitions equivalent (counts as agreement)
    implies            candidate is stricter than the peer (Dc -> Dp valid, not equiv)
    implied_by         peer is stricter than the candidate
    different          neither implies the other
    unknown            Z3 timed out; never counted as agreement
    unsupported        a construct fol.py does not encode (is/2, findall/3, ...)
    unaligned          no peer predicate could be aligned to this head
    peer_no_definition aligned to a peer name, but the peer wrote no clauses for it
                       in this unit (declared it, or defined it elsewhere)
    no_peer_unit       the peer produced nothing for this unit at all -- k is reduced
                       for this head rather than counting it as disagreement

Only `equiv` counts toward agreement, exactly as the formula says. But the formula does
not distinguish "the peer disagrees" from "the peer named it differently", and that
distinction is most of what this corpus shows: across model pairs only a quarter to two
fifths of heads align at all. So the report carries, beside the score, the share of
each verdict, and a second number -- agreement AMONG ALIGNED HEADS -- that answers the
narrower question "when both wrote the same predicate, did they say the same thing?"

BASELINE
--------
A candidate's score has no meaning on its own. `--all` scores every program against
the other five, so gpt-oss's number sits in a column next to each peer's number
computed the same way. The gap between the candidate and the peer average is the
finding; the absolute value is not.

DETERMINISM
-----------
No LLM call. Alignment is string overlap, equivalence is Z3. Same inputs, same report.
"""
from __future__ import annotations

import argparse
import json
import sys
import time
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from align import ALIGN_THRESHOLD, Program, align  # noqa: E402
from fol import Definition, ParseError, equivalent  # noqa: E402

PASS_FILES = {1: ("ai_act.pl", "consensus.json"), 2: ("ai_act_2.pl", "consensus_2.json")}
DEFAULT_FOLDERS = ["out_2", "out_deepseek", "out_kimi", "out_qwen", "out_gemini", "out_mistral"]
VERDICTS = ("equiv", "implies", "implied_by", "different", "unknown", "unsupported",
            "unaligned", "peer_no_definition", "no_peer_unit")
LOGIC_VERDICTS = ("equiv", "implies", "implied_by", "different", "unknown", "unsupported")


def score_candidate(cand: Program, peers: list[Program], threshold: float,
                    timeout_ms: int, quiet: bool = False) -> dict:
    heads_out: list[dict] = []
    per_unit: dict[str, dict] = {}
    per_peer: dict[str, Counter] = {p.label: Counter() for p in peers}
    totals: Counter = Counter()
    align_stats = Counter()
    gloss_pairs: list[dict] = []
    started = time.monotonic()

    units = cand.units
    for n_u, unit in enumerate(units, 1):
        heads = cand.heads(unit)
        if not heads:
            continue
        alignments = {}
        for p in peers:
            if unit in p.defs:
                al = align(cand, p, unit, threshold)
                alignments[p.label] = al
                align_stats["identity"] += al.identity
                align_stats["by_gloss"] += al.by_gloss
                align_stats["unaligned"] += al.unaligned
                for a, b, s in al.pairs:
                    gloss_pairs.append({"unit": unit, "peer": p.label, "candidate": a,
                                        "peer_pred": b, "score": s})
        unit_scores = []
        unit_aligned_scores = []
        for h in heads:
            try:
                cdef = Definition.from_text(h[0], h[1], cand.defs[unit][h])
            except ParseError as e:
                cdef = None
                cerr = str(e)
            verdicts: dict[str, str] = {}
            for p in peers:
                if unit not in p.defs:
                    verdicts[p.label] = "no_peer_unit"
                    continue
                al = alignments[p.label]
                target = al.mapping.get(h)
                if target is None:
                    verdicts[p.label] = "unaligned"
                    continue
                if target not in p.defs[unit]:
                    verdicts[p.label] = "peer_no_definition"
                    continue
                if cdef is None:
                    verdicts[p.label] = "unsupported"
                    continue
                try:
                    pdef = Definition.from_text(target[0], target[1], p.defs[unit][target])
                except ParseError:
                    verdicts[p.label] = "unsupported"
                    continue
                v = equivalent(cdef, pdef, al.inverse(), timeout_ms)
                verdicts[p.label] = v.kind
            k_eff = sum(1 for v in verdicts.values() if v != "no_peer_unit")
            n_equiv = sum(1 for v in verdicts.values() if v == "equiv")
            n_aligned = sum(1 for v in verdicts.values() if v in LOGIC_VERDICTS)
            for lbl, v in verdicts.items():
                per_peer[lbl][v] += 1
                totals[v] += 1
            rec = {"unit": unit, "head": f"{h[0]}/{h[1]}", "clauses": len(cand.defs[unit][h]),
                   "k": k_eff, "equiv": n_equiv, "aligned": n_aligned, "verdicts": verdicts}
            if k_eff:
                rec["disagreement"] = round(1 - n_equiv / k_eff, 4)
                unit_scores.append(rec["disagreement"])
            if n_aligned:
                rec["disagreement_aligned"] = round(1 - n_equiv / n_aligned, 4)
                unit_aligned_scores.append(rec["disagreement_aligned"])
            heads_out.append(rec)
        per_unit[unit] = {
            "heads": len(heads),
            "disagreement": round(sum(unit_scores) / len(unit_scores), 4) if unit_scores else None,
            "disagreement_aligned": (round(sum(unit_aligned_scores) / len(unit_aligned_scores), 4)
                                     if unit_aligned_scores else None),
            "heads_with_any_alignment": len(unit_aligned_scores),
        }
        if not quiet and sys.stderr.isatty():
            el = time.monotonic() - started
            print(f"\r  {cand.label:<14} {n_u:>3}/{len(units)} units  {len(heads_out):>5} heads  "
                  f"{el:5.0f}s", end="", file=sys.stderr, flush=True)
    if not quiet and sys.stderr.isatty():
        print(file=sys.stderr)

    scored = [h for h in heads_out if "disagreement" in h]
    aligned = [h for h in heads_out if "disagreement_aligned" in h]
    unit_vals = [u["disagreement"] for u in per_unit.values() if u["disagreement"] is not None]
    n_pairs = sum(totals.values())
    summary = {
        "candidate": cand.label,
        "peers": [p.label for p in peers],
        "heads": len(heads_out),
        "heads_scored": len(scored),
        "heads_with_any_alignment": len(aligned),
        # the formula, averaged over heads (micro) and over units (macro)
        "disagreement_micro": round(sum(h["disagreement"] for h in scored) / len(scored), 4) if scored else None,
        "disagreement_macro": round(sum(unit_vals) / len(unit_vals), 4) if unit_vals else None,
        "agreement_micro": round(1 - sum(h["disagreement"] for h in scored) / len(scored), 4) if scored else None,
        # the narrower question
        "disagreement_aligned_micro": (round(sum(h["disagreement_aligned"] for h in aligned) / len(aligned), 4)
                                       if aligned else None),
        "agreement_aligned_micro": (round(1 - sum(h["disagreement_aligned"] for h in aligned) / len(aligned), 4)
                                    if aligned else None),
        "verdict_counts": dict(totals),
        "verdict_shares": {v: round(totals[v] / n_pairs, 4) for v in VERDICTS} if n_pairs else {},
        "per_peer": {lbl: {"agreement": round(c["equiv"] / max(1, sum(c.values()) - c["no_peer_unit"]), 4),
                           "agreement_aligned": round(c["equiv"] / max(1, sum(c[v] for v in LOGIC_VERDICTS)), 4),
                           "verdicts": dict(c)}
                     for lbl, c in per_peer.items()},
        "alignment": dict(align_stats),
        "align_threshold": threshold,
        "z3_timeout_ms": timeout_ms,
        "seconds": round(time.monotonic() - started, 1),
    }
    return {"summary": summary, "units": per_unit, "heads": heads_out,
            "gloss_alignments": gloss_pairs}


def fmt(x) -> str:
    return "   -  " if x is None else f"{x:6.3f}"


def print_summary(s: dict) -> None:
    print(f"\n== {s['candidate']}  vs  {', '.join(s['peers'])} ==")
    print(f"  rule heads scored        {s['heads_scored']:>6}   (of {s['heads']}, "
          f"{s['heads_with_any_alignment']} with at least one aligned peer definition)")
    print(f"  DISAGREEMENT  c_score    micro {fmt(s['disagreement_micro'])}   macro over units {fmt(s['disagreement_macro'])}")
    print(f"  agreement (1 - c_score)        {fmt(s['agreement_micro'])}")
    print(f"  agreement among ALIGNED heads  {fmt(s['agreement_aligned_micro'])}   "
          f"(when both sides defined the predicate, did they say the same thing)")
    print("  verdict shares over (head, peer) pairs:")
    for v in VERDICTS:
        sh = s["verdict_shares"].get(v, 0.0)
        print(f"      {v:<20} {sh:6.1%}   {s['verdict_counts'].get(v, 0):>6}")
    print("  per peer:        agreement   among aligned")
    for lbl, pp in s["per_peer"].items():
        print(f"      {lbl:<14} {pp['agreement']:9.3f}   {pp['agreement_aligned']:9.3f}")


def main() -> int:
    ap = argparse.ArgumentParser(description="Consensus scoring over assembled programs.")
    ap.add_argument("--pass", dest="pass_", type=int, default=1, choices=(1, 2))
    ap.add_argument("--candidate", default="out_2")
    ap.add_argument("--peers", nargs="*", default=None,
                    help="peer folders; default: every default folder except the candidate")
    ap.add_argument("--all", action="store_true",
                    help="score every folder as candidate against the other five")
    ap.add_argument("--folders", nargs="*", default=DEFAULT_FOLDERS)
    ap.add_argument("--align-threshold", type=float, default=ALIGN_THRESHOLD)
    ap.add_argument("--timeout-ms", type=int, default=2000)
    ap.add_argument("--no-write", action="store_true")
    a = ap.parse_args()

    prog_name, report_name = PASS_FILES[a.pass_]
    progs = {}
    for d in a.folders:
        path = Path(d) / prog_name
        if path.exists():
            progs[d] = Program.load(path)
        else:
            print(f"  (no {path}; skipped)", file=sys.stderr)

    candidates = list(progs) if a.all else [a.candidate]
    matrix: list[dict] = []
    for c in candidates:
        if c not in progs:
            raise SystemExit(f"no program for candidate {c}")
        peers = [progs[p] for p in (a.peers or [d for d in progs if d != c]) if p in progs]
        result = score_candidate(progs[c], peers, a.align_threshold, a.timeout_ms)
        print_summary(result["summary"])
        matrix.append(result["summary"])
        if not a.no_write:
            dest = Path(c) / report_name
            dest.write_text(json.dumps(result, indent=1), encoding="utf-8")
            print(f"  wrote {dest}")

    if len(matrix) > 1:
        print(f"\n== pass {a.pass_}: every program as candidate against the other {len(matrix) - 1} ==")
        print(f"  {'candidate':<14} {'heads':>6} {'c_score':>8} {'agree':>7} {'aligned%':>9} "
              f"{'agree|aligned':>14}")
        for s in sorted(matrix, key=lambda s: s["disagreement_micro"] or 9):
            al_share = s["heads_with_any_alignment"] / max(1, s["heads"])
            print(f"  {s['candidate']:<14} {s['heads']:>6} {fmt(s['disagreement_micro']):>8} "
                  f"{fmt(s['agreement_micro']):>7} {al_share:>8.0%} {fmt(s['agreement_aligned_micro']):>14}")
        print("  c_score is the paper's disagreement score (lower = more consensus).")
        print("  aligned% is the share of a candidate's heads that found a peer definition at all;")
        print("  agree|aligned is agreement restricted to those. The gap between the two agreement")
        print("  columns is vocabulary drift, not logic.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
