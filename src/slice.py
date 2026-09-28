"""Phase 0 -- deterministic extraction of provisions from the whole-act unit.

WHY THIS EXISTS
---------------
`units/` is a *reference closure*: it contains the provisions that something pointed
at, not every provision of the act. Article 3 is the case that matters -- only 3 of
its 68 definitions exist as units (points 1, 49(b), 49(c)), and `art_3` is not present
as a unit at all. The definitional primitives v2's rules decompose into therefore have
to come from the whole-act unit, which does carry the full text.

DETERMINISM
-----------
No LLM, no heuristics, no fuzzy matching. A slice is defined by a literal start marker
and a literal end marker. Every slice declares the number of items it expects to find,
and `slice()` raises if the count does not match -- so a corpus change breaks the run
loudly instead of silently shifting the text. Each slice is content-hashed and the hash
goes into the run manifest.

`<ref id="..."/>` markup is preserved verbatim: it is the corpus's most valuable
annotation and Phase B depends on it.
"""
from __future__ import annotations

import hashlib
import re
from dataclasses import dataclass
from pathlib import Path

WHOLE_ACT = "celex:32024R1689%2Foj.xml"
UNIT_BODY_RE = re.compile(r"<unit[^>]*>(.*)</unit>", re.DOTALL)
REF_RE = re.compile(r'<ref\s+id="([^"]+)"\s*/>')


@dataclass(frozen=True)
class SliceSpec:
    """A literal, reproducible span of the whole-act text.

    name        identifier used for filenames and in the manifest
    start_marker literal text the slice begins at (must occur exactly once)
    end_marker   literal text the slice ends before (first occurrence after start)
    item_re      regex whose match count is asserted against `expect_items`
    expect_items exact number of items the slice must contain
    unit_id      the corpus id this span corresponds to, for provenance
    """

    name: str
    start_marker: str
    end_marker: str
    item_re: str
    expect_items: int
    unit_id: str


# Specs are data, not code paths: adding a provision means adding a row here.
SPECS: dict[str, SliceSpec] = {
    "art_3_definitions": SliceSpec(
        name="art_3_definitions",
        start_marker="Article 3 Definitions",
        end_marker="Article 4 ",
        item_re=r"\((\d{1,2})\)\s",
        expect_items=68,
        unit_id="celex:32024R1689/oj#art_3",
    ),
}


@dataclass(frozen=True)
class Slice:
    name: str
    unit_id: str
    text: str
    n_items: int

    @property
    def sha256(self) -> str:
        return hashlib.sha256(self.text.encode("utf-8")).hexdigest()

    def refs(self) -> list[str]:
        return REF_RE.findall(self.text)


def whole_act_text(units_dir: Path) -> str:
    """The body of the whole-act unit, with <ref> markup intact."""
    raw = (units_dir / WHOLE_ACT).read_text(encoding="utf-8")
    body = UNIT_BODY_RE.search(raw)
    if not body:
        raise ValueError(f"{WHOLE_ACT}: no <unit> body found")
    return body.group(1)


def slice_one(units_dir: Path, spec: SliceSpec) -> Slice:
    """Cut one span. Raises rather than guessing if the corpus does not match the spec."""
    text = whole_act_text(units_dir)

    occurrences = text.count(spec.start_marker)
    if occurrences != 1:
        raise ValueError(
            f"{spec.name}: start marker {spec.start_marker!r} occurs {occurrences} times, "
            "expected exactly 1 -- the spec is ambiguous against this corpus"
        )
    start = text.index(spec.start_marker)
    end = text.find(spec.end_marker, start + len(spec.start_marker))
    if end == -1:
        raise ValueError(f"{spec.name}: end marker {spec.end_marker!r} not found after start")

    body = text[start:end]
    n_items = len(re.findall(spec.item_re, body))
    if n_items != spec.expect_items:
        raise ValueError(
            f"{spec.name}: found {n_items} items, spec expects {spec.expect_items}. "
            "Refusing to continue -- the corpus or the spec has changed."
        )
    return Slice(name=spec.name, unit_id=spec.unit_id, text=body, n_items=n_items)


def write_slices(units_dir: Path, out_dir: Path, names: list[str] | None = None) -> list[Slice]:
    """Materialise slices to disk as <slice> XML, mirroring the unit format."""
    out_dir.mkdir(parents=True, exist_ok=True)
    out: list[Slice] = []
    for name in sorted(names or SPECS):
        s = slice_one(units_dir, SPECS[name])
        xml = (
            f'<slice name="{s.name}" unit_id="{s.unit_id}" '
            f'items="{s.n_items}" sha256="{s.sha256}">'
            f"{s.text}</slice>"
        )
        (out_dir / f"{s.name}.xml").write_text(xml, encoding="utf-8")
        out.append(s)
    return out


if __name__ == "__main__":
    import argparse

    p = argparse.ArgumentParser(description="Slice provisions out of the whole-act unit.")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--out", default="out_v2/slices")
    a = p.parse_args()

    for s in write_slices(Path(a.units), Path(a.out)):
        print(f"{s.name:<22} {s.n_items:>3} items  {len(s.text):>7,} chars  "
              f"{len(s.refs()):>3} refs  sha {s.sha256[:12]}")
