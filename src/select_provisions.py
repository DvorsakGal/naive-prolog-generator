"""Phase B input selection -- deterministic, article-level.

WHY ARTICLE-LEVEL AND NOT v1's LEAF-LEVEL
-----------------------------------------
v1 selected *leaf* units (a unit with no sub-unit in the corpus) to avoid double
counting the same text in a catalogue. For rules that is the wrong granularity:

  * The corpus is a reference closure, so an article's leaves are a sparse subset.
    Article 5 has 8 leaf units, but its paragraph 1 only survives as points (d), (g)
    and (h)(iii) -- the rest of the prohibitions are absent at leaf level.
  * A prohibition and its exceptions must be in the same call. Article 5(1)(h)'s
    prohibition is unusable without 5(2)-(4)'s conditions, and a rule that negates a
    permission it cannot see is vacuous (see PLAN_V2.md 6.2).

The container unit 'art_5' carries all 8 paragraphs (11,983 chars) and is therefore the
correct unit of work. Selection prefers the container and falls back to leaves only
when no container exists.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from select_units import ROOT_CELEX, Unit, load_units  # noqa: E402

ARTICLE_RE = re.compile(r"^(art|anx|chp)_(\d+)$")


def article_key(fragment: str) -> str | None:
    """'art_5/par_1/pnt_a' -> 'art_5'. None for the whole-act unit."""
    if not fragment:
        return None
    head = fragment.split("/")[0]
    return head if ARTICLE_RE.match(head) else None


def select_provisions(units_dir: Path, articles: list[str] | None = None) -> list[Unit]:
    """One unit per requested article: the container if present, else its leaves.

    `articles` is a list like ['art_5', 'art_6']. None selects every article in the act.
    Output is sorted by (kind, number) so runs are order-stable.
    """
    units = [u for u in load_units(units_dir) if u.celex == ROOT_CELEX and u.fragment]
    by_id = {u.fragment: u for u in units}

    groups: dict[str, list[Unit]] = {}
    for u in units:
        k = article_key(u.fragment)
        if k:
            groups.setdefault(k, []).append(u)

    wanted = articles if articles else sorted(groups)
    missing = [a for a in wanted if a not in groups]
    if missing:
        raise ValueError(f"no units found for: {missing}")

    out: list[Unit] = []
    for key in wanted:
        if key in by_id:
            out.append(by_id[key])          # the complete article
        else:
            out.extend(sorted(groups[key], key=lambda u: u.fragment))  # fall back to parts
    return sorted(out, key=_order)


def _order(u: Unit) -> tuple:
    rank = {"art": 0, "chp": 1, "anx": 2}
    m = ARTICLE_RE.match(u.fragment.split("/")[0])
    kind, num = (m.group(1), int(m.group(2))) if m else ("zzz", 0)
    return (rank.get(kind, 3), num, u.fragment)


if __name__ == "__main__":
    import argparse

    p = argparse.ArgumentParser(description="Show which provisions Phase B would process.")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--articles", default="art_5",
                   help="comma-separated (e.g. art_5,art_6); 'all' for every article")
    a = p.parse_args()

    arts = None if a.articles == "all" else [s.strip() for s in a.articles.split(",")]
    sel = select_provisions(Path(a.units), arts)
    total = sum(u.size for u in sel)
    print(f"{len(sel)} provisions, {total:,} chars (~{total // 4:,} tokens)")
    for u in sel:
        print(f"  {u.fragment:<38} {u.size:>7,}B  refs={len(set(u.refs())):>3}")
