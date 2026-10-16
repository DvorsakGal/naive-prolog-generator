"""Loading an assembled program, and aligning predicate names between two of them.

WHY ALIGNMENT EXISTS
--------------------
Consensus scoring compares a candidate's definition of a predicate with a peer's
definition of *the same* predicate. For the frozen vocabulary that is trivial: every
model received signature.pl verbatim, so `high_risk_ai_system/1` is the same name in
every program. For everything a model introduced itself it is not: one program writes
`prohibited_social_scoring/1`, another `prohibited_social_scoring_ai_system/1`, and a
third `social_scoring_prohibited/1`. Compared by name alone, three translations that
say the same thing would score as total disagreement, and the metric would be
measuring spelling.

The scoring paper aligns predicate names before checking equivalence. We do the same,
deterministically and without an LLM, so the score is reproducible and free to re-run:

  1. IDENTITY. If the peer knows a predicate of the same name and arity anywhere in
     its program, that is the alignment. This covers the frozen vocabulary and any
     invented name two models happened to agree on.
  2. GLOSS AND NAME OVERLAP, within the same provision, same arity, compatible
     modality. Every invented predicate carries a gloss in its declaration, so the
     evidence is the same two strings reconcile.py adjudicates on. The score is the
     best of: identical gloss key (1.0), Jaccard overlap of gloss words, Jaccard
     overlap of name tokens. Pairs at or above ALIGN_THRESHOLD are assigned greedily,
     best first, one-to-one.
  3. Otherwise UNALIGNED. The formula counts that as non-equivalent, and the report
     tallies it separately so vocabulary drift is not mistaken for logic disagreement.

The alignment is a map from the candidate's names to the peer's. Its inverse is
applied to the peer's clause bodies before the Z3 check, so a body goal the two
programs spelled differently but mean the same way becomes one symbol.

The threshold is a knob. 0.5 is the default; the report records it, and
`--align-threshold` on consensus.py changes it for a sensitivity check.
"""
from __future__ import annotations

import re
import sys
from dataclasses import dataclass, field
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from fol import Atom, Compound, Term, Var, indicator, parse_clause, ParseError  # noqa: E402
from prolog import split_clauses  # noqa: E402
from signature import STOPWORDS, _modality, _tokens, gloss_key  # noqa: E402

ALIGN_THRESHOLD = 0.5
META_PREDICATES = {("declared", 3), ("provenance", 2), ("references", 2), ("alias", 2)}
CONTROL = {",", ";", "|", "->", "\\+", "=", "\\=", "==", "\\==", "<", ">", "=<", ">=",
           "=:=", "=\\=", "is", "true", "fail", "false"}
BLOCK_RE = re.compile(r"^% ==== (.+?) ====$", re.M)
DECLARED_RE = re.compile(
    r"^declared\(\s*([a-z][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*'((?:[^']|'')*)'\s*,\s*'((?:[^']|'')*)'\s*\)\.$",
    re.S)


def unit_key(label: str) -> str:
    """'celex:32024R1689/oj#art_5' -> 'art_5'; the two vocabulary blocks keep their
    names."""
    if label.startswith("SIGNATURE"):
        return "SIGNATURE"
    if label.startswith("RECONCILED"):
        return "RECONCILED"
    return label.split("#", 1)[1] if "#" in label else label


def body_goals(t: Term, acc: set[tuple[str, int]] | None = None) -> set[tuple[str, int]]:
    """Predicate indicators called in a body, skipping control constructs."""
    if acc is None:
        acc = set()
    if isinstance(t, Atom):
        if t.name not in CONTROL:
            acc.add((t.name, 0))
    elif isinstance(t, Compound):
        if t.functor in CONTROL:
            for a in t.args:
                if t.functor in (",", ";", "|", "->", "\\+"):
                    body_goals(a, acc)
        else:
            acc.add((t.functor, len(t.args)))
    return acc


@dataclass
class Program:
    """One assembled ai_act.pl, indexed the way alignment and scoring need it."""
    path: Path
    label: str
    # unit -> (name, arity) -> clause texts, in file order
    defs: dict[str, dict[tuple[str, int], list[str]]] = field(default_factory=dict)
    # unit -> every indicator mentioned in that unit (heads and body goals)
    mentioned: dict[str, set[tuple[str, int]]] = field(default_factory=dict)
    # unit -> indicators declared with source == this unit (invented there)
    declared_in: dict[str, set[tuple[str, int]]] = field(default_factory=dict)
    gloss: dict[tuple[str, int], str] = field(default_factory=dict)
    signature: set[tuple[str, int]] = field(default_factory=set)
    known: set[tuple[str, int]] = field(default_factory=set)     # defined or declared anywhere
    unparsed: int = 0

    @property
    def units(self) -> list[str]:
        return [u for u in self.defs if u not in ("SIGNATURE", "RECONCILED")]

    @classmethod
    def load(cls, path: Path, label: str | None = None) -> "Program":
        p = cls(path, label or path.parent.name)
        text = path.read_text(encoding="utf-8")
        marks = list(BLOCK_RE.finditer(text))
        for k, m in enumerate(marks):
            unit = unit_key(m.group(1))
            end = marks[k + 1].start() if k + 1 < len(marks) else len(text)
            p.defs.setdefault(unit, {})
            p.mentioned.setdefault(unit, set())
            p.declared_in.setdefault(unit, set())
            for clause in split_clauses(text[m.end():end]):
                if clause.startswith(":-"):
                    continue
                dm = DECLARED_RE.match(clause)
                if dm:
                    ind = (dm.group(1), int(dm.group(2)))
                    p.known.add(ind)
                    p.gloss.setdefault(ind, dm.group(3).replace("''", "'"))
                    if unit == "SIGNATURE":
                        p.signature.add(ind)
                    src = dm.group(4)
                    p.declared_in.setdefault(unit_key(src) if "#" in src else unit, set()).add(ind)
                    continue
                try:
                    head, body = parse_clause(clause)
                    ind = indicator(head)
                except ParseError:
                    p.unparsed += 1
                    continue
                if ind in META_PREDICATES:
                    continue
                p.known.add(ind)
                p.defs[unit].setdefault(ind, []).append(clause)
                p.mentioned[unit].add(ind)
                if body is not None:
                    goals = body_goals(body)
                    p.mentioned[unit] |= goals
                    p.known |= goals
        return p

    def heads(self, unit: str) -> list[tuple[str, int]]:
        return list(self.defs.get(unit, {}).keys())


# ------------------------------------------------------------------------ alignment

def _gloss_words(g: str) -> frozenset[str]:
    return frozenset(w for w in re.sub(r"[^a-z0-9 ]", " ", g.lower()).split()
                     if w not in STOPWORDS)


def _jaccard(a: frozenset, b: frozenset) -> float:
    if not a or not b:
        return 0.0
    return len(a & b) / len(a | b)


def similarity(a: tuple[str, int], b: tuple[str, int], ga: str | None, gb: str | None) -> float:
    """Best available evidence that a and b name the same thing."""
    best = _jaccard(_tokens(a[0]), _tokens(b[0]))
    if ga and gb:
        if gloss_key(ga) == gloss_key(gb):
            return 1.0
        best = max(best, _jaccard(_gloss_words(ga), _gloss_words(gb)))
    return best


@dataclass
class Alignment:
    unit: str
    mapping: dict[tuple[str, int], tuple[str, int]]
    identity: int = 0
    by_gloss: int = 0
    unaligned: int = 0
    pairs: list[tuple[str, str, float]] = field(default_factory=list)   # gloss matches, for the report

    def inverse(self):
        inv = {v: k for k, v in self.mapping.items()}

        def rename(name: str, arity: int) -> tuple[str, int]:
            return inv.get((name, arity), (name, arity))
        return rename


def align(cand: Program, peer: Program, unit: str,
          threshold: float = ALIGN_THRESHOLD) -> Alignment:
    """Map every indicator the candidate mentions in `unit` onto the peer's names."""
    wanted = sorted(cand.mentioned.get(unit, set()))
    mapping: dict[tuple[str, int], tuple[str, int]] = {}
    al = Alignment(unit, mapping)

    # 1. identity
    rest = []
    for ind in wanted:
        if ind in peer.known:
            mapping[ind] = ind
            al.identity += 1
        else:
            rest.append(ind)

    # 2. gloss / name overlap within the unit
    pool = (peer.mentioned.get(unit, set()) | peer.declared_in.get(unit, set())) - set(mapping.values())
    scored: list[tuple[float, tuple[str, int], tuple[str, int]]] = []
    for a in rest:
        ma = _modality(a[0])
        for b in pool:
            if b[1] != a[1]:
                continue
            mb = _modality(b[0])
            if ma and mb and ma != mb:
                continue
            s = similarity(a, b, cand.gloss.get(a), peer.gloss.get(b))
            if s >= threshold:
                scored.append((s, a, b))
    scored.sort(key=lambda x: (-x[0], x[1], x[2]))
    taken: set[tuple[str, int]] = set()
    for s, a, b in scored:
        if a in mapping or b in taken:
            continue
        mapping[a] = b
        taken.add(b)
        al.by_gloss += 1
        al.pairs.append((f"{a[0]}/{a[1]}", f"{b[0]}/{b[1]}", round(s, 2)))

    al.unaligned = len([i for i in wanted if i not in mapping])
    return al


if __name__ == "__main__":
    # Smoke test on two real programs: load, then align one unit and show the result.
    a = Program.load(Path(sys.argv[1]) if len(sys.argv) > 1 else Path("out_2/ai_act.pl"))
    b = Program.load(Path(sys.argv[2]) if len(sys.argv) > 2 else Path("out_deepseek/ai_act.pl"))
    unit = sys.argv[3] if len(sys.argv) > 3 else "art_5"
    for p in (a, b):
        print(f"{p.label:<14} units {len(p.units):>3}  signature {len(p.signature):>3}  "
              f"known {len(p.known):>5}  heads in {unit}: {len(p.heads(unit))}  unparsed {p.unparsed}")
    al = align(a, b, unit)
    print(f"\n{unit}: {len(al.mapping)} aligned ({al.identity} identity, {al.by_gloss} by gloss), "
          f"{al.unaligned} unaligned")
    for x, y, s in al.pairs:
        print(f"   {s:.2f}  {x:<52} -> {y}")
    heads_a = set(a.heads(unit))
    print("\ncandidate heads with no aligned peer definition:")
    for h in sorted(heads_a):
        t = al.mapping.get(h)
        if t is None or t not in b.defs.get(unit, {}):
            print(f"   {h[0]}/{h[1]}" + (f"   (aligned to {t[0]}/{t[1]}, undefined there)" if t else ""))
