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


DEFAULT_COVERAGE_THRESHOLD = 0.6


def _merged_span_length(spans: list[tuple[int, int]]) -> int:
    """Total length covered by a set of possibly-overlapping spans."""
    merged: list[list[int]] = []
    for s, e in sorted(spans):
        if merged and s <= merged[-1][1]:
            merged[-1][1] = max(merged[-1][1], e)
        else:
            merged.append([s, e])
    return sum(e - s for s, e in merged)


def deduplicate_overlaps(
    candidates: list[Unit], threshold: float = DEFAULT_COVERAGE_THRESHOLD
) -> tuple[list[Unit], list[dict]]:
    """Remove structural overlap, returning (kept, decisions).

    THE PROBLEM THIS SOLVES (v3 fix)
    --------------------------------
    Chapter and article units overlap: `chp_3` (108k chars) physically contains
    Articles 8-15, which are also selected in their own right. Processing both means
    the same provision gets two independent formalisations under two different
    predicate vocabularies -- the worst possible input to a rule base.

    Id prefixes cannot detect this, because `chp_3` and `art_9` are sibling
    fragments. Character spans can, and exactly.

    THE RULE
    --------
    For every container (a unit whose span encloses other candidates), measure how
    much of it the contained units actually cover:

      * coverage >= threshold -> drop the CONTAINER. The fine-grained articles are
        better input and they already cover it.
      * coverage <  threshold -> keep the container, drop the contained units. The
        articles barely cover it, so dropping the container would lose text. This is
        the case for Chapter I, only 6% covered by the four Article 1-4 fragments
        the corpus happens to carry.

    Either way the result is a partition: no character of the act is processed twice.
    Both decisions are returned so the caller can report them.
    """
    decisions: list[dict] = []
    dropped: set[str] = set()

    containers = [c for c in candidates if any(c.contains(o) for o in candidates)]
    for c in sorted(containers, key=lambda u: -(u.end - u.start)):
        if c.uid in dropped:
            continue
        inner = [o for o in candidates if c.contains(o) and o.uid not in dropped]
        if not inner:
            continue
        total = c.end - c.start
        covered = _merged_span_length([(o.start, o.end) for o in inner])
        ratio = covered / total if total else 0.0
        if ratio >= threshold:
            dropped.add(c.uid)
            decisions.append({"action": "dropped_container", "unit": c.fragment,
                              "coverage": round(ratio, 3), "n_inner": len(inner),
                              "chars": total})
        else:
            for o in inner:
                dropped.add(o.uid)
            decisions.append({"action": "dropped_inner", "unit": c.fragment,
                              "coverage": round(ratio, 3), "n_inner": len(inner),
                              "chars": total})
    return [u for u in candidates if u.uid not in dropped], decisions


def select_provisions(
    units_dir: Path,
    articles: list[str] | None = None,
    threshold: float = DEFAULT_COVERAGE_THRESHOLD,
    return_decisions: bool = False,
):
    """One unit per requested article, with structural overlap removed.

    `articles` is a list like ['art_5', 'art_6']. None selects every article.
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

    candidates: list[Unit] = []
    for key in wanted:
        if key in by_id:
            candidates.append(by_id[key])       # the complete article
        else:
            candidates.extend(sorted(groups[key], key=lambda u: u.fragment))

    kept, decisions = deduplicate_overlaps(candidates, threshold)
    kept = sorted(kept, key=_order)
    return (kept, decisions) if return_decisions else kept


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
    p.add_argument("--threshold", type=float, default=DEFAULT_COVERAGE_THRESHOLD,
                   help="coverage above which a container is dropped in favour of its parts")
    p.add_argument("--verbose", action="store_true")
    a = p.parse_args()

    arts = None if a.articles == "all" else [s.strip() for s in a.articles.split(",")]
    sel, decisions = select_provisions(Path(a.units), arts, a.threshold,
                                       return_decisions=True)
    total = sum(u.size for u in sel)
    if decisions:
        print("overlap removal (v3):")
        for d in decisions:
            verb = ("dropped container" if d["action"] == "dropped_container"
                    else "kept container, dropped its parts")
            print(f"  {d['unit']:<14} {verb:<34} coverage {d['coverage']:>5.0%} "
                  f"({d['n_inner']} inner, {d['chars']:,} chars)")
        print()
    print(f"{len(sel)} provisions, {total:,} chars (~{total // 4:,} tokens)")
    if a.verbose:
        for u in sel:
            print(f"  {u.fragment:<38} {u.size:>7,}B  refs={len(set(u.refs())):>3}")
