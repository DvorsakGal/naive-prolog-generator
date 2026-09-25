"""Mechanical validation of the generated ontology.

Two checks, neither involving an LLM (DECISIONS.md D5):
  1. Syntax  -- swipl consult, reporting warnings/errors.
  2. Coverage -- precision/recall of the emitted references/2 facts against the
     <ref> ground truth already present in the annotated XML.
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from merge import indicator, split_clauses  # noqa: E402
from select_units import ROOT_CELEX, select  # noqa: E402

ARG_RE = re.compile(r"^[a-z][A-Za-z0-9_]*\s*\((.*)\)\s*\.$", re.DOTALL)


def atom_for(ref_id: str, from_celex: str = ROOT_CELEX) -> str:
    """The atom name the prompt asks the model to use for a reference target.

    Bare atoms are only unambiguous *within one act*: 'art_5' would otherwise
    conflate this Regulation's Article 5 with Article 5 of any other act in the
    closure. References that leave the citing act therefore stay fully qualified,
    fragment and all.
    """
    if not ref_id.startswith(f"celex:{from_celex}/"):
        return f"'{ref_id}'"
    _, sep, frag = ref_id.partition("#")
    if not sep:
        return f"'{ref_id}'"
    return frag.replace("/", "_")


def split_args(inner: str) -> list[str]:
    """Top-level comma split of an argument list, quote- and paren-aware."""
    out, buf, depth, in_quote = [], [], 0, False
    i = 0
    while i < len(inner):
        ch = inner[i]
        if in_quote:
            if ch == "'":
                if i + 1 < len(inner) and inner[i + 1] == "'":
                    buf.append("''")
                    i += 2
                    continue
                in_quote = False
            buf.append(ch)
        elif ch == "'":
            in_quote = True
            buf.append(ch)
        elif ch in "([":
            depth += 1
            buf.append(ch)
        elif ch in ")]":
            depth -= 1
            buf.append(ch)
        elif ch == "," and depth == 0:
            out.append("".join(buf).strip())
            buf = []
        else:
            buf.append(ch)
        i += 1
    if buf:
        out.append("".join(buf).strip())
    return out


def check_syntax(ontology: Path) -> dict:
    """Consult the file in SWI-Prolog and report what it says."""
    if not shutil.which("swipl"):
        return {"ran": False, "note": "swipl not on PATH; skipped"}
    proc = subprocess.run(
        ["swipl", "-q", "-g", f"consult('{ontology}')", "-g", "halt", "-t", "halt(1)"],
        capture_output=True, text=True, timeout=300,
    )
    err = proc.stderr
    return {
        "ran": True,
        "ok": proc.returncode == 0 and "ERROR" not in err,
        "returncode": proc.returncode,
        "errors": err.count("ERROR"),
        "warnings": err.count("Warning"),
        "detail": "\n".join(err.splitlines()[:20]),
    }


def refs_in(text: str) -> set[str]:
    """Every references/2 target atom in a chunk of Prolog source."""
    out = set()
    for clause in split_clauses(text):
        if indicator(clause) != ("references", 2):
            continue
        m = ARG_RE.match(clause.strip())
        if m:
            args = split_args(m.group(1))
            if len(args) == 2:
                out.add(args[1].strip())
    return out


def check_references(ontology: Path, units_dir: Path, include_external: bool,
                     snippet_dir: Path | None = None) -> dict:
    """Score emitted references/2 against the annotated <ref> elements.

    Two scores, because they measure different things:

    * **chunk** (primary) -- per snippet file: did the model recover the set of
      references present in the chunk it was shown? Attribution-free.
    * **strict** (secondary) -- also requires the model to have named the right
      source atom. Container units legitimately attribute a reference to the
      sub-provision that carries it (chp_3_sec_4 emits references(art_36_par_3, ...)),
      so this score penalises correct behaviour and is reported for information only.
    """
    units = select(units_dir, include_external=include_external)
    by_atom = {u.fragment.replace("/", "_"): u for u in units if u.fragment}

    truth: dict[str, set[str]] = {}
    for u in units:
        src = u.fragment.replace("/", "_")
        truth[src] = {atom_for(r, u.celex) for r in u.refs()}

    emitted: dict[str, set[str]] = {}
    for clause in split_clauses(ontology.read_text(encoding="utf-8")):
        if indicator(clause) != ("references", 2):
            continue
        m = ARG_RE.match(clause.strip())
        if not m:
            continue
        args = split_args(m.group(1))
        if len(args) == 2:
            emitted.setdefault(args[0].strip(), set()).add(args[1].strip())

    tp = fp = fn = 0
    per_unit = []
    for src, want in truth.items():
        got = emitted.get(src, set())
        u_tp, u_fp, u_fn = len(want & got), len(got - want), len(want - got)
        tp, fp, fn = tp + u_tp, fp + u_fp, fn + u_fn
        if u_fp or u_fn:
            per_unit.append({"unit": src, "missed": sorted(want - got)[:5],
                             "spurious": sorted(got - want)[:5]})

    # references/2 attributed to a source atom that is not one of our units at all
    orphan_sources = sorted(set(emitted) - set(truth))

    def prf(t_p: int, f_p: int, f_n: int) -> dict:
        pr = t_p / (t_p + f_p) if t_p + f_p else 0.0
        rc = t_p / (t_p + f_n) if t_p + f_n else 0.0
        return {"true_positives": t_p, "false_positives": f_p, "false_negatives": f_n,
                "precision": round(pr, 3), "recall": round(rc, 3),
                "f1": round(2 * pr * rc / (pr + rc), 3) if pr + rc else 0.0}

    # Chunk-level: compare each snippet file against the unit it was generated from.
    c_tp = c_fp = c_fn = 0
    chunk_errors = []
    if snippet_dir is not None:
        for u in units:
            path = snippet_dir / f"{u.safe_name()}.pl"
            if not path.exists():
                continue
            want = {atom_for(r, u.celex) for r in u.refs()}
            got = refs_in(path.read_text(encoding="utf-8"))
            c_tp += len(want & got)
            c_fp += len(got - want)
            c_fn += len(want - got)
            if want - got or got - want:
                chunk_errors.append({"unit": u.uid, "kind": u.kind,
                                     "missed": sorted(want - got)[:5],
                                     "spurious": sorted(got - want)[:5]})

    return {
        "truth_edges": sum(len(v) for v in truth.values()),
        "emitted_edges": sum(len(v) for v in emitted.values()),
        "chunk": prf(c_tp, c_fp, c_fn),
        "strict": prf(tp, fp, fn),
        "units_with_chunk_errors": len(chunk_errors),
        "units_with_strict_errors": len(per_unit),
        "orphan_source_atoms": orphan_sources[:10],
        "worst_chunks": sorted(chunk_errors,
                               key=lambda d: -(len(d["missed"]) + len(d["spurious"])))[:10],
    }


def check_coverage(ontology: Path, snippet_dir: Path, units_dir: Path,
                   include_external: bool) -> dict:
    """Which units produced output, and what the predicate vocabulary looks like."""
    units = select(units_dir, include_external=include_external)
    missing = [u.uid for u in units if not (snippet_dir / f"{u.safe_name()}.pl").exists()]

    preds: Counter = Counter()
    per_unit_atoms = set()
    for clause in split_clauses(ontology.read_text(encoding="utf-8")):
        ind = indicator(clause)
        if ind:
            preds[f"{ind[0]}/{ind[1]}"] += 1
        if ind and ind[0] == "unit":
            m = ARG_RE.match(clause.strip())
            if m:
                per_unit_atoms.add(split_args(m.group(1))[0].strip())

    expected_atoms = {u.fragment.replace("/", "_") for u in units if u.fragment}
    return {
        "units_selected": len(units),
        "units_without_snippet": len(missing),
        "missing_units": missing[:10],
        "total_facts": sum(preds.values()),
        "distinct_predicates": len(preds),
        "unit_facts_present": len(per_unit_atoms & expected_atoms),
        "unit_facts_unexpected": len(per_unit_atoms - expected_atoms),
        "predicates": dict(preds.most_common()),
    }


def main(argv: list[str] | None = None) -> int:
    p = argparse.ArgumentParser(description="Validate the generated ontology.")
    p.add_argument("--out", default="out")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--include-external", action="store_true")
    p.add_argument("--json", action="store_true", help="dump the full report as JSON")
    a = p.parse_args(argv)

    ontology = Path(a.out) / "ontology.pl"
    if not ontology.exists():
        print(f"no ontology at {ontology} -- run merge.py first", file=sys.stderr)
        return 2

    report = {
        "syntax": check_syntax(ontology),
        "coverage": check_coverage(ontology, Path(a.out) / "units", Path(a.units),
                                   a.include_external),
        "references": check_references(ontology, Path(a.units), a.include_external,
                                       Path(a.out) / "units"),
    }
    (Path(a.out) / "report.json").write_text(json.dumps(report, indent=2), encoding="utf-8")

    if a.json:
        print(json.dumps(report, indent=2))
        return 0

    s, c, r = report["syntax"], report["coverage"], report["references"]
    print("== syntax ==")
    if not s.get("ran"):
        print(f"  {s['note']}")
    else:
        print(f"  consult {'OK' if s['ok'] else 'FAILED'}  "
              f"errors={s['errors']} warnings={s['warnings']}")
        if s["detail"]:
            print("  " + s["detail"].replace("\n", "\n  "))

    print("\n== coverage ==")
    print(f"  units with output      {c['units_selected'] - c['units_without_snippet']}"
          f"/{c['units_selected']}")
    print(f"  total facts            {c['total_facts']}")
    print(f"  distinct predicates    {c['distinct_predicates']}")
    print(f"  unit/3 facts matching  {c['unit_facts_present']}"
          f" (+{c['unit_facts_unexpected']} unrecognised)")
    print("  top predicates:")
    for k, v in list(c["predicates"].items())[:12]:
        print(f"    {k:<28} {v}")

    print("\n== reference graph vs annotated ground truth ==")
    print(f"  ground-truth edges     {r['truth_edges']}")
    print(f"  emitted edges          {r['emitted_edges']}")
    ch, stc = r["chunk"], r["strict"]
    print(f"  chunk-level   precision {ch['precision']}  recall {ch['recall']}  F1 {ch['f1']}"
          f"   ({r['units_with_chunk_errors']} units imperfect)")
    print(f"  + source atom precision {stc['precision']}  recall {stc['recall']}  F1 {stc['f1']}"
          f"   ({r['units_with_strict_errors']} units imperfect)")
    print("  (the second also requires the right source atom; container units")
    print("   correctly attribute refs to sub-provisions, so it reads low by design)")

    print(f"\nfull report: {Path(a.out) / 'report.json'}")
    return 0 if report["syntax"].get("ok", True) else 1


if __name__ == "__main__":
    sys.exit(main())
