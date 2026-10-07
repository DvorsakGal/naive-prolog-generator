"""Phase 0 -- the work list, derived from the act's own structure. No LLM.

WHY THIS REPLACED THE UNIT-CLOSURE SELECTOR
-------------------------------------------
`units/` is a *reference closure*: a unit file exists for a provision only if something
cited it. Earlier versions used it as the index of what the act contains, which it is
not. Two consequences, both measured on this corpus:

  * Only 87 of 113 articles exist as article-level units. The remaining 26 -- including
    Article 113, which governs when every other obligation applies -- were never shown
    to the model, and nothing in the reports could see that.
  * Articles and their chapter containers both appear in the closure, overlapping. The
    previous selector needed span-containment arithmetic and a 60% coverage threshold to
    partition them. That whole mechanism existed only to repair the input choice.

Here the work list comes from the act's structure instead: one work unit per article
heading and one per annex heading, cut out of the whole-act unit, which carries the
complete text with `<ref>` markup intact. Coverage is complete by construction, nothing
overlaps, and the threshold is gone.

WHY THIS IS SAFE -- THE MONOTONE SCAN
-------------------------------------
The act body contains 123 matches for `Article N`, but only 113 of them are headings;
the rest are in-text cross-references ("pursuant to Article 16(1) of that Regulation",
"in Article 43, the following paragraph is added"). A heading is accepted only when its
number equals the one expected next, so the sequence 1,2,3,...,113 is recovered and every
in-text reference is rejected -- without a single special case, because a cross-reference
never happens to be the next article number in sequence.

WHY THIS IS VERIFIED, NOT ASSUMED
---------------------------------
`validate()` compares every slice against the unit file for the same id, where one
exists. All 87 articles and 12 of 13 annexes match byte-for-byte (anx_8 has no
top-level unit). That is 99 independent checks of the slicer on every run, and the
pipeline refuses to continue if any of them breaks -- so a corpus change is loud
instead of silent.

The closure keeps two jobs, both of them checks on the pipeline rather than inputs to
it: this validation, and the `<ref>` ground truth the reference score is measured against.

ACT-DEPENDENT CONFIGURATION
---------------------------
Three values in `ActConfig` are specific to a regulation's typesetting. Everything
downstream is act-independent. That is the honest generalisation line: structure
detection is per-act and belongs in config, not in code paths.
"""
from __future__ import annotations

import hashlib
import re
from dataclasses import dataclass, field
from pathlib import Path

UNIT_BODY_RE = re.compile(r"<unit[^>]*>(.*)</unit>", re.DOTALL)
REF_RE = re.compile(r'<ref\s+id="([^"]+)"\s*/>')

ROMAN = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII",
         "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX"]


@dataclass(frozen=True)
class ActConfig:
    """Everything about one act's typesetting. The only act-dependent code in the run."""

    celex: str = "32024R1689"
    whole_act_file: str = "celex:32024R1689%2Foj.xml"
    # A heading, not a cross-reference: validated by the monotone scan below.
    article_re: str = r"Article (\d{1,3})\b"
    # The enacting terms stop at the first annex. The negative lookahead keeps
    # 'ANNEX I' from matching the start of 'ANNEX III'.
    annex_re: str = r"ANNEX ([IVX]+)(?![IVX])"
    # Division headings. Used for the breadcrumb, and trimmed off a slice's tail.
    chapter_re: str = r"CHAPTER ([IVX]+)[ \t]*([^\n]*)"
    section_re: str = r"SECTION (\d+)[ \t]*([^\n]*)"
    # Which article defines the act's terms. Phase A reads exactly this one.
    definitions_article: int = 3
    # Phase A asserts this count, so a corpus shift cannot silently shorten the
    # vocabulary the whole run is built on.
    definitions_item_re: str = r"\((\d{1,2})\)\s"
    definitions_expect_items: int = 68

    @property
    def doc_id(self) -> str:
        return f"celex:{self.celex}/oj"


AI_ACT = ActConfig()


@dataclass(frozen=True)
class WorkUnit:
    """One Phase B call's input. A pure slice of the act, plus where it sits in it."""

    kind: str           # 'art' or 'anx'
    number: int         # 5 for Article 5; 3 for Annex III
    uid: str            # 'celex:32024R1689/oj#art_5'
    fragment: str       # 'art_5'
    title: str          # 'Prohibited AI practices'
    breadcrumb: str     # 'CHAPTER II PROHIBITED AI PRACTICES'
    text: str           # the slice, with <ref> markup intact
    start: int
    end: int
    items: tuple[str, ...] = field(default=())

    @property
    def size(self) -> int:
        return len(self.text)

    @property
    def sha256(self) -> str:
        return hashlib.sha256(self.text.encode("utf-8")).hexdigest()

    def refs(self) -> list[str]:
        return REF_RE.findall(self.text)

    def safe_name(self) -> str:
        return re.sub(r"[^A-Za-z0-9]+", "_", self.uid).strip("_")

    def as_xml(self) -> str:
        """The shape Phase B sees. Mirrors the corpus's own unit format, so the
        prompt does not have to explain a second input format."""
        return (
            f'<unit id="{self.uid}" kind="{self.kind}" number="{self.number}" '
            f'title="{_attr(self.title)}" context="{_attr(self.breadcrumb)}" '
            f'chars="{self.size}" sha256="{self.sha256[:16]}">'
            f"{self.text}</unit>"
        )


def _attr(s: str) -> str:
    return s.replace("&", "&amp;").replace('"', "&quot;").replace("<", "&lt;")


def whole_act_body(units_dir: Path, cfg: ActConfig = AI_ACT) -> str:
    """The whole-act unit's body, with <ref> markup preserved verbatim."""
    raw = (units_dir / cfg.whole_act_file).read_text(encoding="utf-8")
    m = UNIT_BODY_RE.search(raw)
    if not m:
        raise ValueError(f"{cfg.whole_act_file}: no <unit> body found")
    return m.group(1)


def _monotone_article_headings(body: str, cfg: ActConfig) -> list[tuple[int, int]]:
    """(number, offset) for each article heading, in order.

    A match is a heading only if its number is the next one expected. Every
    in-text cross-reference fails that test, which is why no exclusion list is needed.
    """
    out: list[tuple[int, int]] = []
    want = 1
    for m in re.finditer(cfg.article_re, body):
        if int(m.group(1)) == want:
            out.append((want, m.start()))
            want += 1
    return out


def _annex_headings(body: str, cfg: ActConfig) -> list[tuple[int, int]]:
    """(number, offset) per annex, numbered 1..n to match the corpus's anx_N ids."""
    out: list[tuple[int, int]] = []
    for i, roman in enumerate(ROMAN, start=1):
        m = re.search(rf"ANNEX {roman}(?![IVX])", body)
        if m:
            out.append((i, m.start()))
    out.sort(key=lambda t: t[1])
    # Renumber by position, so a gap in the roman sweep cannot misalign the ids.
    return [(i, off) for i, (_n, off) in enumerate(out, start=1)]


def _trim_trailing_headings(text: str, cfg: ActConfig) -> str:
    """Drop division headings that belong to whatever comes next.

    An article slice runs from one article heading to the next, so it picks up any
    CHAPTER/SECTION heading sitting between the two -- Article 5's slice ends with
    'CHAPTER III HIGH-RISK AI SYSTEMS' and 'SECTION 1 Classification of AI systems as
    high-risk', which introduce Article 6. Removing them is what makes a slice equal
    the corpus's own unit for that id; see validate().

    The first line is never dropped: it is the slice's OWN heading. Several annexes
    are a single line of heading-plus-content, and a tail-only rule that ignored this
    would delete them entirely.
    """
    division = re.compile(
        rf"^(?:{cfg.chapter_re}|{cfg.section_re}|{cfg.annex_re})\b"
    )
    lines = text.split("\n")
    while len(lines) > 1 and (not lines[-1].strip()
                              or division.match(lines[-1].strip())):
        lines.pop()
    return "\n".join(lines).strip()


def _title(text: str, heading_re: str) -> str:
    """The heading's trailing words: 'Article 5 Prohibited AI practices' -> the title."""
    first = text.split("\n", 1)[0]
    m = re.match(heading_re, first)
    return first[m.end():].strip() if m else first.strip()


def work_units(units_dir: Path, cfg: ActConfig = AI_ACT,
               include_annexes: bool = True) -> list[WorkUnit]:
    """Every article and annex of the act, in document order.

    Annexes are included by default because they are load-bearing, not appendices:
    Article 6's whole high-risk classification is defined by reference to Annex III,
    and a run without it produced invented placeholder predicates (annex_3_ai_system)
    for content the model was never shown.
    """
    body = whole_act_body(units_dir, cfg)
    arts = _monotone_article_headings(body, cfg)
    annexes = _annex_headings(body, cfg)
    if not arts:
        raise ValueError("no article headings found -- check ActConfig.article_re")

    first_annex = annexes[0][1] if annexes else len(body)
    bounds: list[tuple[str, int, int, int]] = []
    for i, (n, s) in enumerate(arts):
        e = arts[i + 1][1] if i + 1 < len(arts) else first_annex
        bounds.append(("art", n, s, e))
    if include_annexes:
        for i, (n, s) in enumerate(annexes):
            e = annexes[i + 1][1] if i + 1 < len(annexes) else len(body)
            bounds.append(("anx", n, s, e))

    chapters = [(m.start(), f"CHAPTER {m.group(1)} {m.group(2).strip()}")
                for m in re.finditer(cfg.chapter_re, body)]
    sections = [(m.start(), f"SECTION {m.group(1)} {m.group(2).strip()}")
                for m in re.finditer(cfg.section_re, body)]

    out: list[WorkUnit] = []
    for kind, n, s, e in bounds:
        text = _trim_trailing_headings(body[s:e], cfg)
        heading_re = cfg.article_re if kind == "art" else cfg.annex_re
        out.append(WorkUnit(
            kind=kind, number=n,
            uid=f"{cfg.doc_id}#{kind}_{n}", fragment=f"{kind}_{n}",
            title=_title(text, heading_re),
            breadcrumb=_breadcrumb(s, chapters, sections) if kind == "art" else "ANNEXES",
            text=text, start=s, end=e,
        ))
    return out


def _breadcrumb(offset: int, chapters: list[tuple[int, str]],
                sections: list[tuple[int, str]]) -> str:
    """Which chapter and section an article sits in.

    This is the cheap half of what accumulating every prior call's output was meant to
    buy: Articles 8-15 all arriving with 'CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2
    Requirements for high-risk AI systems' agree on their subject matter for ~20 prompt
    tokens, instead of tens of thousands of tokens of each other's Prolog.
    """
    parts: list[str] = []
    chp = [t for off, t in chapters if off <= offset]
    if chp:
        parts.append(chp[-1])
        chp_off = max(off for off, _ in chapters if off <= offset)
        sec = [t for off, t in sections if chp_off <= off <= offset]
        if sec:
            parts.append(sec[-1])
    return " > ".join(parts)


def definitions_unit(units_dir: Path, cfg: ActConfig = AI_ACT) -> WorkUnit:
    """Phase A's input: the definitions article, with its item count asserted.

    The assertion is the only reason this is a separate function. The vocabulary the
    entire run is built on comes from this one slice, and a previous version silently
    dropped definitions 29-34 without anything noticing.
    """
    units = work_units(units_dir, cfg, include_annexes=False)
    match = [u for u in units if u.number == cfg.definitions_article]
    if not match:
        raise ValueError(f"no Article {cfg.definitions_article} in the work list")
    u = match[0]
    found = tuple(m if isinstance(m, str) else m[0]
                  for m in re.findall(cfg.definitions_item_re, u.text))
    if len(found) != cfg.definitions_expect_items:
        raise ValueError(
            f"{u.fragment}: found {len(found)} definitions, config expects "
            f"{cfg.definitions_expect_items}. Refusing to continue -- the corpus or "
            f"the config has changed, and the whole run's vocabulary comes from here."
        )
    return WorkUnit(**{**u.__dict__, "items": found})


def phase_b_units(units_dir: Path, cfg: ActConfig = AI_ACT,
                  include_annexes: bool = True) -> list[WorkUnit]:
    """The work list minus the definitions article, which Phase A already consumed."""
    return [u for u in work_units(units_dir, cfg, include_annexes)
            if not (u.kind == "art" and u.number == cfg.definitions_article)]


# ------------------------------------------------------------------- verification

def validate(units_dir: Path, cfg: ActConfig = AI_ACT) -> dict:
    """Compare every slice against the corpus's own unit for the same id.

    Returns counts and the differing ids. `strict_check()` turns a difference into a
    hard failure; this function is also used by the report, which wants the numbers
    even when they are fine.
    """
    exact, differ, absent = 0, [], []
    for u in work_units(units_dir, cfg):
        p = units_dir / f"{cfg.whole_act_file[:-4]}#{u.fragment}.xml"
        if not p.exists():
            absent.append(u.fragment)
            continue
        m = UNIT_BODY_RE.search(p.read_text(encoding="utf-8"))
        if m and m.group(1).strip() == u.text.strip():
            exact += 1
        else:
            differ.append(u.fragment)
    return {"checked": exact + len(differ), "exact": exact,
            "differ": differ, "n_differ": len(differ),
            "no_unit_file": absent, "n_no_unit_file": len(absent)}


def strict_check(units_dir: Path, cfg: ActConfig = AI_ACT) -> dict:
    """validate(), but a mismatch stops the run."""
    v = validate(units_dir, cfg)
    if v["differ"]:
        raise ValueError(
            f"slicer disagrees with the corpus on {v['n_differ']} unit(s): "
            f"{', '.join(v['differ'][:8])}. The act's typesetting or the corpus has "
            f"changed; fix ActConfig rather than running on text nothing has checked."
        )
    return v


if __name__ == "__main__":
    import argparse

    p = argparse.ArgumentParser(description="Show the work list Phase B would process.")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--no-annexes", action="store_true")
    p.add_argument("--verbose", action="store_true")
    a = p.parse_args()

    units_dir = Path(a.units)
    v = strict_check(units_dir)
    print(f"slicer validation: {v['exact']}/{v['checked']} slices match the corpus "
          f"byte-for-byte; {v['n_no_unit_file']} ids have no unit file to check against")

    defs = definitions_unit(units_dir)
    print(f"definitions      : {defs.fragment}  {len(defs.items)} items  "
          f"{defs.size:,} chars")

    units = phase_b_units(units_dir, include_annexes=not a.no_annexes)
    total = sum(u.size for u in units)
    n_art = sum(1 for u in units if u.kind == "art")
    n_anx = sum(1 for u in units if u.kind == "anx")
    print(f"phase B work list: {len(units)} units ({n_art} articles + {n_anx} annexes), "
          f"{total:,} chars (~{total // 4:,} tokens)")
    if a.verbose:
        for u in units:
            print(f"  {u.fragment:<10} {u.size:>7,}B  refs={len(set(u.refs())):>3}  "
                  f"{u.title[:46]:<48} {u.breadcrumb[:40]}")
