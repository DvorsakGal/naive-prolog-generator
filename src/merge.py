"""Merge per-unit snippets into one ontology.pl.

Concatenation, deduplication of identical facts, and the :- discontiguous
directives SWI-Prolog needs when clauses of a predicate are not adjacent.
No semantic reconciliation of the schema -- that would not be naive.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from select_units import select  # noqa: E402

HEAD_RE = re.compile(r"^([a-z][A-Za-z0-9_]*)\s*\(")


def split_clauses(text: str) -> list[str]:
    """Split Prolog source into clauses on top-level '.' terminators.

    Quote- and paren-aware, so periods inside 'text like this. And this.' and
    inside nested terms do not split. Lines starting with % are dropped.
    """
    clauses, buf = [], []
    in_quote = False
    depth = 0
    i = 0
    # Strip line comments outside quotes first.
    lines = []
    for line in text.splitlines():
        stripped = line.lstrip()
        if stripped.startswith("%"):
            continue
        lines.append(line)
    src = "\n".join(lines)

    while i < len(src):
        ch = src[i]
        if in_quote:
            if ch == "'":
                if i + 1 < len(src) and src[i + 1] == "'":  # escaped quote
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
        elif ch == "." and depth == 0 and (i + 1 >= len(src) or src[i + 1] in " \t\r\n"):
            clause = "".join(buf).strip()
            if clause:
                clauses.append(clause + ".")
            buf = []
        else:
            buf.append(ch)
        i += 1

    tail = "".join(buf).strip()
    if tail:
        clauses.append(tail + ".")
    return clauses


def indicator(clause: str) -> tuple[str, int] | None:
    """(name, arity) of a fact's head, or None if it is not a plain fact."""
    m = HEAD_RE.match(clause)
    if not m:
        return None
    name = m.group(1)
    args, depth, in_quote = 1, 0, False
    i = m.end()
    while i < len(clause):
        ch = clause[i]
        if in_quote:
            if ch == "'":
                if i + 1 < len(clause) and clause[i + 1] == "'":
                    i += 2
                    continue
                in_quote = False
        elif ch == "'":
            in_quote = True
        elif ch in "([":
            depth += 1
        elif ch == ")" and depth == 0:
            return name, args
        elif ch in ")]":
            depth -= 1
        elif ch == "," and depth == 0:
            args += 1
        i += 1
    return None


def merge(snippet_dir: Path, units_dir: Path, out_file: Path,
          include_external: bool = False) -> dict:
    """Write out_file; return counts for the caller to report."""
    order = select(units_dir, include_external=include_external)

    seen: set[str] = set()
    blocks: list[tuple[str, list[str]]] = []
    predicates: dict[tuple[str, int], int] = {}
    stats = {"units_expected": len(order), "units_with_output": 0,
             "clauses_read": 0, "clauses_kept": 0, "non_facts": 0}

    for unit in order:
        path = snippet_dir / f"{unit.safe_name()}.pl"
        if not path.exists():
            continue
        stats["units_with_output"] += 1
        kept = []
        for clause in split_clauses(path.read_text(encoding="utf-8")):
            stats["clauses_read"] += 1
            ind = indicator(clause)
            if ind is None:
                stats["non_facts"] += 1
                continue
            norm = re.sub(r"\s+", " ", clause)
            if norm in seen:
                continue
            seen.add(norm)
            predicates[ind] = predicates.get(ind, 0) + 1
            kept.append(clause)
        stats["clauses_kept"] += len(kept)
        if kept:
            blocks.append((unit.uid, kept))

    out_file.parent.mkdir(parents=True, exist_ok=True)
    with out_file.open("w", encoding="utf-8") as fh:
        fh.write("% Naive Prolog ontology of Regulation (EU) 2024/1689 (the AI Act).\n")
        fh.write(f"% Generated from {stats['units_with_output']} annotated units.\n")
        fh.write("% One LLM call per unit, no cross-unit reconciliation. See DECISIONS.md.\n\n")
        for (name, arity) in sorted(predicates):
            fh.write(f":- discontiguous {name}/{arity}.\n")
        fh.write("\n")
        for uid, clauses in blocks:
            fh.write(f"% ==== {uid} ====\n")
            fh.write("\n".join(clauses))
            fh.write("\n\n")

    stats["distinct_predicates"] = len(predicates)
    stats["predicate_counts"] = dict(sorted(
        ((f"{n}/{a}", c) for (n, a), c in predicates.items()),
        key=lambda kv: -kv[1]))
    return stats


if __name__ == "__main__":
    p = argparse.ArgumentParser(description="Merge unit snippets into one ontology.")
    p.add_argument("--out", default="out")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--include-external", action="store_true")
    a = p.parse_args()

    st = merge(Path(a.out) / "units", Path(a.units), Path(a.out) / "ontology.pl",
               a.include_external)
    print(f"units with output : {st['units_with_output']}/{st['units_expected']}")
    print(f"clauses           : {st['clauses_kept']} kept of {st['clauses_read']} "
          f"({st['clauses_read'] - st['clauses_kept'] - st['non_facts']} duplicates, "
          f"{st['non_facts']} non-facts dropped)")
    print(f"predicates        : {st['distinct_predicates']}")
    for k, v in list(st["predicate_counts"].items())[:15]:
        print(f"  {k:<28} {v}")
