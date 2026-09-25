"""Deterministic selection of the unit files to feed the LLM.

No model involvement here on purpose (see DECISIONS.md D1/D6): this module only
decodes filenames, groups units by act, and drops units that are structurally
contained in another unit.
"""
from __future__ import annotations

import re
import urllib.parse
from dataclasses import dataclass
from pathlib import Path

ROOT_CELEX = "32024R1689"

REF_RE = re.compile(r'<ref\s+id="([^"]+)"')
UNIT_OPEN_RE = re.compile(r"<unit\b([^>]*)>", re.DOTALL)
ATTR_RE = re.compile(r'([a-z_0-9]+)="([^"]*)"')


@dataclass(frozen=True)
class Unit:
    """One annotated chunk of a legal act."""

    uid: str  # e.g. celex:32024R1689/oj#art_16/par_2
    path: Path
    celex: str
    bind: str
    xml: str

    @property
    def fragment(self) -> str:
        """The part after '#', e.g. 'art_16/par_2'. Empty for whole-document units."""
        _, _, frag = self.uid.partition("#")
        return frag

    @property
    def kind(self) -> str:
        """Coarse unit type: art / anx / chp / sec / document."""
        if not self.fragment:
            return "document"
        return self.fragment.split("/")[0].split("_")[0]

    @property
    def size(self) -> int:
        return len(self.xml)

    def refs(self) -> list[str]:
        """Annotated cross-reference targets, in order of appearance, with duplicates."""
        return REF_RE.findall(self.xml)

    def safe_name(self) -> str:
        """Filesystem-safe stem derived from the uid."""
        return re.sub(r"[^A-Za-z0-9]+", "_", self.uid).strip("_")


def load_units(units_dir: Path) -> list[Unit]:
    """Read every *.xml in units_dir into a Unit."""
    units: list[Unit] = []
    for path in sorted(units_dir.glob("*.xml")):
        xml = path.read_text(encoding="utf-8")
        match = UNIT_OPEN_RE.search(xml)
        if not match:
            continue
        attrs = dict(ATTR_RE.findall(match.group(1)))
        # The id attribute is authoritative; the filename is a URL-encoded copy of it.
        uid = attrs.get("id") or urllib.parse.unquote(path.stem)
        units.append(
            Unit(
                uid=uid,
                path=path,
                celex=attrs.get("celex", ""),
                bind=attrs.get("bind", ""),
                xml=xml,
            )
        )
    return units


def leaves(units: list[Unit]) -> list[Unit]:
    """Drop units whose content is contained in another unit of the same set.

    Unit ids are hierarchical paths ('...#art_16' contains '...#art_16/par_2'), so
    a unit is a container iff some other id starts with it plus a separator. The
    whole-document unit ('celex:X/oj', no fragment) contains every '#...' unit of
    the same document, which the '#' separator catches.
    """
    ids = {u.uid for u in units}
    out = []
    for u in units:
        if any(other != u.uid and other.startswith(u.uid + sep)
               for sep in ("/", "#") for other in ids):
            continue
        out.append(u)
    return out


def select(units_dir: Path, include_external: bool = False) -> list[Unit]:
    """The corpus the generator runs over: AI Act leaf units, in document order."""
    units = load_units(units_dir)
    if not include_external:
        units = [u for u in units if u.celex == ROOT_CELEX]
    return sorted(leaves(units), key=_document_order)


def _document_order(unit: Unit) -> tuple:
    """Sort key putting art_2 before art_10 and articles before annexes."""
    section_rank = {"art": 0, "chp": 1, "anx": 2}
    frag = unit.fragment
    rank = section_rank.get(unit.kind, 3)
    # Numeric-aware: split each path step into (text, number) pairs.
    steps = []
    for step in frag.split("/"):
        name, _, num = step.partition("_")
        steps.append((name, int(num) if num.isdigit() else 0, num))
    return (rank, steps)


if __name__ == "__main__":
    import sys
    from collections import Counter

    d = Path(sys.argv[1] if len(sys.argv) > 1 else "20260922T172249_32024R1689_3f672e3e/units")
    sel = select(d)
    total = sum(u.size for u in sel)
    print(f"{len(sel)} units, {total:,} bytes (~{total // 4:,} tokens)")
    print("by kind:", dict(Counter(u.kind for u in sel)))
    print("refs:", sum(len(u.refs()) for u in sel))
    print("largest:", *[f"{u.uid} ({u.size:,}B)" for u in sorted(sel, key=lambda u: -u.size)[:3]], sep="\n  ")
