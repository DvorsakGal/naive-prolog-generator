"""Phase C -- assemble the frozen vocabulary and every rule file into one ai_act.pl.

Purely deterministic: concatenation in document order, exact-duplicate removal, and the
`:- pred` -> `declared/3` rewrite (see prolog.py for why that rewrite is necessary).

Two directives are emitted that the model does not write and should not have to:

  :- discontiguous Name/Arity
      SWI warns when a predicate's clauses are not adjacent. They often are not here,
      because two provisions can both define clauses of the same predicate and each
      provision's block is kept together for readability and provenance.

  :- dynamic Name/Arity
      For every predicate that is DECLARED but has no clause. Those are the program's
      input slots: `real_time(S)` cannot be derived from any legal text, it is a
      question about a particular system that a caller answers by asserting a fact.
      Marking them dynamic makes an unasserted fact FAIL rather than raise
      `Unknown procedure`, which is the difference between a program you can query and
      one that crashes on the first question.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from prolog import (head_indicator, normalise, rewrite_declarations,  # noqa: E402
                    split_clauses, well_formed)
from structure import phase_b_units  # noqa: E402

PASS_DIRS = {1: "rules", 2: "rules_2"}


def assemble(out_dir: Path, units_dir: Path, which_pass: int = 1,
             include_annexes: bool = True) -> dict:
    sig_path = out_dir / "signature.pl"
    if not sig_path.exists():
        raise SystemExit(f"no {sig_path} -- run Phase A first")
    rules_dir = out_dir / PASS_DIRS[which_pass]
    dest = out_dir / ("ai_act.pl" if which_pass == 1 else "ai_act_2.pl")

    seen: set[str] = set()
    blocks: list[tuple[str, list[str]]] = []
    preds: dict[tuple[str, int], int] = {}
    declared: set[tuple[str, int]] = set()
    stats = {"declarations": 0, "clauses_read": 0, "clauses_kept": 0, "duplicates": 0,
             "unparsed": 0, "sources": 0, "missing_rule_files": [],
             "repaired": 0, "malformed": []}

    def absorb(label: str, raw: str) -> None:
        text, n = rewrite_declarations(raw)
        stats["declarations"] += n
        kept: list[str] = []
        for raw in split_clauses(text):
            stats["clauses_read"] += 1
            clause = normalise(raw)
            if clause != raw:
                stats["repaired"] += 1
            # ONE BAD CLAUSE MUST NOT TAKE THE PROGRAM DOWN.
            #
            # A model occasionally emits an extra closing parenthesis in a deeply
            # nested term. swipl then rejects that clause, `consult` reports an error,
            # and the whole run stops -- so 4,000 good clauses were being discarded
            # over 2 typos in one article. A malformed clause is dropped and RECORDED
            # instead, which degrades the program by exactly the clauses at fault and
            # says which they were.
            why = well_formed(clause)
            if why is not None:
                stats["malformed"].append({"source": label, "reason": why,
                                           "clause": re.sub(r"\s+", " ", clause)[:120]})
                continue
            ind = head_indicator(clause)
            if ind is None:
                stats["unparsed"] += 1
                continue
            norm = re.sub(r"\s+", " ", clause)
            if norm in seen:
                stats["duplicates"] += 1
                continue
            seen.add(norm)
            preds[ind] = preds.get(ind, 0) + 1
            if ind == ("declared", 3):
                m = re.match(r"declared\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)", clause)
                if m:
                    declared.add((m.group(1), int(m.group(2))))
            kept.append(clause)
        stats["clauses_kept"] += len(kept)
        if kept:
            blocks.append((label, kept))
            stats["sources"] += 1

    absorb("SIGNATURE (Phase A)", sig_path.read_text(encoding="utf-8"))
    sig2 = out_dir / "signature_2.pl"
    if which_pass == 2 and sig2.exists():
        absorb("RECONCILED VOCABULARY (Phase B2)", sig2.read_text(encoding="utf-8"))

    for u in phase_b_units(units_dir, include_annexes=include_annexes):
        p = rules_dir / f"{u.safe_name()}.pl"
        if p.exists():
            absorb(u.uid, p.read_text(encoding="utf-8"))
        else:
            # Recorded, not ignored. A missing rule file means a Phase B call failed,
            # and an assembled program that silently omits 9 of 125 provisions while
            # reporting link integrity 1.0 is the exact failure this pipeline keeps
            # running into.
            stats["missing_rule_files"].append(u.fragment)

    underived = sorted(declared - set(preds))
    with dest.open("w", encoding="utf-8") as fh:
        fh.write(
            "% ============================================================\n"
            "% Regulation (EU) 2024/1689 (AI Act) as a Prolog program.\n"
            "%\n"
            "% Phase A froze the predicate vocabulary from the definitions article;\n"
            "% Phase B wrote clauses against it, one LLM call per article and annex.\n"
            f"% This file is pass {which_pass}. Assembly is deterministic.\n"
            "%\n"
            "% declared(Name/Arity, Gloss, Source) records the vocabulary.\n"
            "% provenance(Name/Arity, UnitId) ties each clause head to its provision.\n"
            "% references(From, To) is the cross-reference graph, from the corpus's\n"
            "%   human-annotated <ref> markup.\n"
            "%\n"
            "% A declared predicate with no clause is an INPUT SLOT, not a defect:\n"
            "% whether a particular system is real_time(S) is a question about the\n"
            "% world, which no legal text answers. Assert those facts yourself.\n"
            f"% There are {len(underived)} of them, listed as :- dynamic below.\n"
            "% ============================================================\n\n")
        fh.write(":- discontiguous declared/3.\n")
        for name, arity in sorted(preds):
            if (name, arity) != ("declared", 3):
                fh.write(f":- discontiguous {name}/{arity}.\n")
        if underived:
            fh.write("\n% --- input slots: assert facts against these at runtime ---\n")
            for name, arity in underived:
                fh.write(f":- dynamic {name}/{arity}.\n")
        fh.write("\n")
        for label, clauses in blocks:
            fh.write(f"% ==== {label} ====\n")
            fh.write("\n".join(clauses))
            fh.write("\n\n")

    stats["n_malformed"] = len(stats["malformed"])
    stats["input_slots"] = len(underived)
    stats["distinct_predicates"] = len(preds)
    stats["output"] = str(dest)
    stats["n_missing_rule_files"] = len(stats["missing_rule_files"])
    stats["predicate_counts"] = dict(
        sorted(((f"{n}/{a}", c) for (n, a), c in preds.items()), key=lambda kv: -kv[1]))
    return stats


if __name__ == "__main__":
    p = argparse.ArgumentParser(description="Phase C -- assemble ai_act.pl.")
    p.add_argument("--out", default="out")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--pass", dest="pass_", type=int, default=1, choices=(1, 2))
    p.add_argument("--no-annexes", action="store_true")
    a = p.parse_args()

    st = assemble(Path(a.out), Path(a.units), a.pass_, include_annexes=not a.no_annexes)
    print(f"output          : {st['output']}")
    print(f"sources merged  : {st['sources']}")
    print(f"declarations    : {st['declarations']} rewritten to declared/3")
    print(f"clauses         : {st['clauses_kept']} kept "
          f"({st['duplicates']} duplicates, {st['unparsed']} unparsed)")
    if st["repaired"]:
        print(f"repaired        : {st['repaired']} doubled terminators ('..' -> '.')")
    if st["malformed"]:
        print(f"DROPPED         : {st['n_malformed']} malformed clause(s) -- the rest of "
              f"the program is unaffected")
        for m in st["malformed"][:6]:
            print(f"                  {m['source'].split('#')[-1]:<12} {m['reason']}")
            print(f"                    {m['clause'][:96]}")
    print(f"predicates      : {st['distinct_predicates']}")
    print(f"input slots     : {st['input_slots']} declared :- dynamic")
    if st["missing_rule_files"]:
        print(f"MISSING         : {st['n_missing_rule_files']} work units have no rule "
              f"file and are absent from this program:")
        shown = st["missing_rule_files"][:20]
        more = st["n_missing_rule_files"] - len(shown)
        print(f"                  {', '.join(shown)}"
              f"{f' ... and {more} more' if more > 0 else ''}")
    for k, v in list(st["predicate_counts"].items())[:10]:
        print(f"   {k:<34} {v}")
