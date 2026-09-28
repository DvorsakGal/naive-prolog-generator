"""Phase C -- assemble signature + rule files into one consultable ontology.

Purely deterministic: concatenation in a canonical order, exact-duplicate removal, and
one mechanical rewrite.

THE REWRITE. Phase A and B emit vocabulary declarations as

    :- pred foo/1, gloss('...'), source('...').

which is a readable convention but not valid SWI: as a directive it would try to call
pred/1, gloss/1 and source/1 and throw existence errors. We rewrite each into a fact

    declared(foo/1, '...', '...').

so the vocabulary stays machine-queryable (the linter uses it to tell a legitimately
undefined primitive -- one an ABox supplies -- from a genuinely broken reference).
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from merge import indicator, split_clauses  # noqa: E402  (v1 helpers, unchanged)
from select_provisions import select_provisions  # noqa: E402

PRED_DIRECTIVE_RE = re.compile(
    r":-\s*pred\s+([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*"
    r"gloss\(\s*('(?:[^']|'')*')\s*\)\s*,\s*"
    r"source\(\s*('(?:[^']|'')*')\s*\)\s*\.",
    re.DOTALL,
)


def indicator2(clause: str) -> tuple[str, int] | None:
    """v1's indicator(), extended to zero-arity heads.

    v1 only ever emitted facts with arguments, so `indicator()` requires a '('.
    v2 emits rules, and a rule head can be a bare atom (`publish_annual_report :- ...`).
    Without this those clauses were silently dropped at merge.
    """
    ind = indicator(clause)
    if ind is not None:
        return ind
    head = split_on_neck(clause)
    m = re.match(r"^([a-z][A-Za-z0-9_]*)\s*(?:\.)?$", head)
    return (m.group(1), 0) if m else None


def split_on_neck(clause: str) -> str:
    """The head of a clause, i.e. everything before a top-level ':-'."""
    depth, in_q, i = 0, False, 0
    while i < len(clause) - 1:
        ch = clause[i]
        if in_q:
            if ch == "'":
                if clause[i + 1] == "'":
                    i += 2
                    continue
                in_q = False
        elif ch == "'":
            in_q = True
        elif ch in "([":
            depth += 1
        elif ch in ")]":
            depth -= 1
        elif ch == ":" and clause[i + 1] == "-" and depth == 0:
            return clause[:i].strip()
        i += 1
    return clause.rstrip(". ").strip()


def rewrite_declarations(text: str) -> tuple[str, int]:
    """`:- pred f/1, gloss(G), source(S).` -> `declared(f/1, G, S).`"""
    n = 0

    def sub(m: re.Match) -> str:
        nonlocal n
        n += 1
        return f"declared({m.group(1)}/{m.group(2)}, {m.group(3)}, {m.group(4)})."

    return PRED_DIRECTIVE_RE.sub(sub, text), n


def merge(out_dir: Path, units_dir: Path, articles: list[str] | None) -> dict:
    sig_path = out_dir / "signature.pl"
    if not sig_path.exists():
        raise SystemExit(f"no {sig_path} -- run Phase A first")

    seen: set[str] = set()
    blocks: list[tuple[str, list[str]]] = []
    preds: dict[tuple[str, int], int] = {}
    declared_preds: set[tuple[str, int]] = set()
    stats = {"declarations": 0, "clauses_read": 0, "clauses_kept": 0,
             "duplicates": 0, "unparsed": 0, "sources": 0}

    def absorb(label: str, raw: str) -> None:
        text, n = rewrite_declarations(raw)
        stats["declarations"] += n
        kept = []
        for clause in split_clauses(text):
            stats["clauses_read"] += 1
            ind = indicator2(clause)
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
                    declared_preds.add((m.group(1), int(m.group(2))))
            kept.append(clause)
        stats["clauses_kept"] += len(kept)
        if kept:
            blocks.append((label, kept))
            stats["sources"] += 1

    absorb("SIGNATURE (Phase A)", sig_path.read_text(encoding="utf-8"))
    for u in select_provisions(units_dir, articles):
        p = out_dir / "rules" / f"{u.safe_name()}.pl"
        if p.exists():
            absorb(u.uid, p.read_text(encoding="utf-8"))

    dest = out_dir / "ontology.pl"
    with dest.open("w", encoding="utf-8") as fh:
        fh.write("% ============================================================\n"
                 "% v2 ontology -- low-level FOL for Regulation (EU) 2024/1689.\n"
                 "%\n"
                 "% Phase A froze the predicate vocabulary; Phase B wrote rules against\n"
                 "% it, one LLM call per provision. Assembly here is deterministic.\n"
                 "%\n"
                 "% declared/3 records the vocabulary: declared(Name/Arity, Gloss, Source).\n"
                 "% A declared predicate with no clauses is an ABox primitive -- facts about\n"
                 "% a concrete system are asserted against it. That is expected, not broken.\n"
                 "% ============================================================\n\n")
        fh.write(":- discontiguous declared/3.\n")
        for name, arity in sorted(preds):
            if (name, arity) != ("declared", 3):
                fh.write(f":- discontiguous {name}/{arity}.\n")

        # ABox interface: a predicate that is declared but never given a clause is
        # where facts about a concrete system get asserted. Declaring it dynamic
        # makes an absent fact FAIL cleanly instead of raising "Unknown procedure",
        # which is the difference between a queryable ontology and one that crashes
        # on the first question.
        underived = sorted(declared_preds - set(preds))
        if underived:
            fh.write("\n% --- ABox interface: assert facts against these at runtime ---\n")
            for name, arity in underived:
                fh.write(f":- dynamic {name}/{arity}.\n")
        fh.write("\n")
        for label, clauses in blocks:
            fh.write(f"% ==== {label} ====\n")
            fh.write("\n".join(clauses))
            fh.write("\n\n")

    stats["abox_primitives"] = len(declared_preds - set(preds))
    stats["distinct_predicates"] = len(preds)
    stats["predicate_counts"] = dict(
        sorted(((f"{n}/{a}", c) for (n, a), c in preds.items()), key=lambda kv: -kv[1]))
    return stats


if __name__ == "__main__":
    p = argparse.ArgumentParser(description="Phase C -- assemble the ontology.")
    p.add_argument("--out", default="out_v2")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--articles", default="art_5")
    a = p.parse_args()

    arts = None if a.articles == "all" else [s.strip() for s in a.articles.split(",")]
    st = merge(Path(a.out), Path(a.units), arts)
    print(f"sources merged  : {st['sources']}")
    print(f"declarations    : {st['declarations']} rewritten to declared/3")
    print(f"clauses         : {st['clauses_kept']} kept "
          f"({st['duplicates']} duplicates, {st['unparsed']} unparsed)")
    print(f"predicates      : {st['distinct_predicates']}")
    print(f"ABox primitives : {st['abox_primitives']} declared :- dynamic")
    for k, v in list(st["predicate_counts"].items())[:10]:
        print(f"   {k:<34} {v}")
