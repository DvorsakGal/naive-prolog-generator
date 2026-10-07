"""Phase A -- build the predicate vocabulary, then freeze it.

The signature is the namespace every Phase B call writes into. It is produced by ONE
LLM call over the definitions article, written to signature.pl, and content-hashed.
Phase B refuses to run against a signature whose hash is not the one recorded here, so
the vocabulary can never change silently underneath a set of clauses already written
against it.

Freezing is the point. See prompts.py for why.

The input is `structure.definitions_unit()`, which asserts the definition count before
returning. An earlier version silently dropped definitions 29-34, and since every
later call is written against whatever this file contains, a short vocabulary is the
one failure that propagates into all 125 downstream calls.
"""
from __future__ import annotations

import argparse
import asyncio
import hashlib
import json
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from llm import Client, LLMConfig, append_log  # noqa: E402
from prolog import (DECL_SYNTAX, DECLARED_RE, PRED_DECL_RE, body_goals,  # noqa: E402
                    head_indicator, split_clauses, split_head_body)
from prompts import build_signature_messages  # noqa: E402
from structure import AI_ACT, definitions_unit  # noqa: E402

PRED_INDICATOR_RE = re.compile(r":-\s*pred\s+([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)")
SOURCE_RE = re.compile(r"source\(\s*'([^']*)'\s*\)")


def parse_declarations(text: str) -> list[tuple[str, int]]:
    """The (name, arity) pairs a signature declares, in order of appearance."""
    return [(n, int(a)) for n, a in PRED_INDICATOR_RE.findall(text)]


def signature_names(*texts: str) -> set[str]:
    """Predicate names a frozen vocabulary declares, in either written form.

    Accepts both `:- pred f/1, ...` (as Phase A and B write it) and `declared(f/1, ...)`
    (as assembly rewrites it), so the same function works on signature.pl and on the
    assembled program.
    """
    names: set[str] = set()
    for text in texts:
        names |= {n for n, _a, _g in PRED_DECL_RE.findall(text)}
        names |= {n for n, _a, _g in DECLARED_RE.findall(text)}
    return names


def signature_sha(text: str) -> str:
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def cited_items(text: str) -> set[str]:
    """The item labels a signature's source(...) annotations point at.

    The model is inconsistent about the format -- '29' in one run, '3.29' in another,
    and a full unit id in Phase B output. Take the last dot-separated component, which
    is the item label in every form seen.
    """
    return {raw.strip().split(".")[-1].strip() for raw in SOURCE_RE.findall(text)}


def coverage_report(text: str, items: tuple[str, ...]) -> dict:
    """Which of the definitions article's own enumerated items the signature declares.

    Deliberately NOT a hardcoded count: `items` are the labels the slice itself
    carries, captured by ActConfig.definitions_item_re, so another act is checked
    against its own enumeration. Empty `items` makes this a no-op.
    """
    expected = list(dict.fromkeys(items))          # de-duplicated, order preserved
    cited = cited_items(text)
    missing = [i for i in expected if i not in cited]
    return {
        "expected": len(expected),
        "cited": len(expected) - len(missing),
        "missing": missing,
        "ratio": round((len(expected) - len(missing)) / len(expected), 3) if expected else None,
    }


def print_coverage(cov: dict, slice_name: str) -> None:
    """One terminal block so a gap is visible without reading signature.pl."""
    if cov["expected"] == 0:
        return
    print(f"\n== coverage check: {slice_name} ==")
    print(f"  items in slice        {cov['expected']}")
    print(f"  items with a source   {cov['cited']}  ({cov['ratio']:.0%})")
    if not cov["missing"]:
        print("  OK -- every item in the slice is accounted for")
        return
    print(f"  NOT DECLARED          {len(cov['missing'])}: {', '.join(cov['missing'])}")
    print("  These items produced no declaration, so they are absent from the frozen")
    print("  vocabulary. Phase B will invent its own names for them, inconsistently")
    print("  across calls. Resample Phase A with --force if that matters.")


async def build(args: argparse.Namespace) -> int:
    out_dir = Path(args.out)
    out_dir.mkdir(parents=True, exist_ok=True)
    sig_path = out_dir / "signature.pl"

    sl = definitions_unit(Path(args.units))

    if sig_path.exists() and not args.force:
        text = sig_path.read_text(encoding="utf-8")
        decls = parse_declarations(text)
        print(f"signature.pl already exists ({len(decls)} predicates, "
              f"sha {signature_sha(text)[:12]}). Use --force to rebuild.")
        print_coverage(coverage_report(text, sl.items), sl.fragment)
        return 0

    print(f"input slice : {sl.fragment}  {len(sl.items)} items  {sl.size:,} chars  "
          f"sha {sl.sha256[:12]}")

    cfg = LLMConfig(model=args.model, host=args.host, concurrency=1)
    client = Client(cfg, out_dir / "cache")
    messages = build_signature_messages(sl.text)

    async with httpx.AsyncClient() as http:
        text, rec = await client.call(http, messages, label=f"signature:{sl.fragment}")
    append_log(out_dir / "run.jsonl", rec)

    if not rec.ok:
        print(f"FAILED: {rec.error}", file=sys.stderr)
        return 1

    decls = parse_declarations(text)
    header = (
        "% ============================================================\n"
        "% FROZEN SIGNATURE -- the predicate vocabulary for this program.\n"
        "%\n"
        "% Generated by ONE LLM call over the definitions article, then frozen.\n"
        "% Every Phase B rule-generation call receives this file verbatim, so all\n"
        "% Phase B calls are mutually independent and order-free.\n"
        "%\n"
        f"% source slice : {sl.fragment} ({len(sl.items)} items)\n"
        f"% slice sha256 : {sl.sha256}\n"
        f"% source unit  : {sl.uid}\n"
        f"% model        : {cfg.model} (temperature {cfg.temperature}, seed {cfg.seed})\n"
        f"% definitions  : Article {AI_ACT.definitions_article}\n"
        f"% prompt sha   : {rec.prompt_sha}\n"
        f"% declarations : {len(decls)}\n"
        "%\n"
        "% DO NOT EDIT BY HAND without re-running Phase B: rules generated against a\n"
        "% different signature may reference predicates that no longer exist.\n"
        "% ============================================================\n\n"
    )
    sig_path.write_text(header + text + "\n", encoding="utf-8")

    full = sig_path.read_text(encoding="utf-8")
    meta = {
        "slice": sl.fragment,
        "slice_sha256": sl.sha256,
        "signature_sha256": signature_sha(full),
        "model": cfg.model,
        "temperature": cfg.temperature,
        "seed": cfg.seed,
        "prompt_sha": rec.prompt_sha,
        "cached": rec.cached,
        "n_declarations": len(decls),
        "declarations": [f"{n}/{a}" for n, a in decls],
        "item_coverage": coverage_report(full, sl.items),
    }
    (out_dir / "signature.meta.json").write_text(json.dumps(meta, indent=2), encoding="utf-8")

    dupes = [d for d in {n for n, _ in decls}
             if len({a for n, a in decls if n == d}) > 1]
    print(f"\nwrote {sig_path}")
    print(f"  declarations : {len(decls)}")
    print(f"  distinct     : {len({n for n, _ in decls})}")
    print(f"  sha256       : {meta['signature_sha256'][:12]}")
    print(f"  cached       : {rec.cached}")
    if dupes:
        print(f"  WARNING: predicates declared at two arities: {dupes}")
    print_coverage(meta["item_coverage"], sl.fragment)
    return 0


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Phase A -- build and freeze the signature.")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--out", default="out")
    p.add_argument("--model", default=LLMConfig.model)
    p.add_argument("--host", default=LLMConfig.host)
    p.add_argument("--force", action="store_true", help="rebuild even if signature.pl exists")
    return p


if __name__ == "__main__":
    sys.exit(asyncio.run(build(build_parser().parse_args())))


# ------------------------------------------------- the inventory Phase B2 works from

@dataclass
class Invented:
    """One predicate Phase B introduced because the frozen vocabulary lacked it.

    `used_in` is what matters for reconciliation: a name three provisions already
    agree on is a better canonical choice than a better-sounding name used once.
    """

    name: str
    arity: int
    glosses: list[str] = field(default_factory=list)
    declared_in: set[str] = field(default_factory=set)
    used_in: set[str] = field(default_factory=set)

    @property
    def key(self) -> str:
        return f"{self.name}/{self.arity}"

    @property
    def gloss(self) -> str:
        return self.glosses[0] if self.glosses else ""


def collect_invented(signature_text: str, rules_dir: Path) -> tuple[list[Invented], int]:
    """Every predicate the Phase B calls introduced, with usage, from rules/*.pl.

    Signature predicates are excluded: those were handed to every call, so agreement
    on them proves nothing and reconciling them would be reconciling Phase A's work.

    Returns (inventory sorted by name, number of rule files read). Used by
    `reconcile.py` to build the merge call's input and by `lint.py` to measure how
    fragmented the namespace is -- the same extraction, so the two can never disagree
    about what counts as invented.
    """
    sig_names = signature_names(signature_text)
    found: dict[tuple[str, int], Invented] = {}

    def entry(name: str, arity: int) -> Invented:
        return found.setdefault((name, arity), Invented(name=name, arity=arity))

    files = sorted(rules_dir.glob("*.pl")) if rules_dir.exists() else []
    for f in files:
        src = f.read_text(encoding="utf-8")
        for name, arity, gloss in PRED_DECL_RE.findall(src):
            if name in sig_names or name in DECL_SYNTAX:
                continue
            e = entry(name, int(arity))
            e.declared_in.add(f.name)
            g = gloss.replace("''", "'").strip()
            if g and g not in e.glosses:
                e.glosses.append(g)
        for clause in split_clauses(src):
            if clause.lstrip().startswith(":-"):
                # A directive, not a clause. `:- pred foo/1, gloss(..), source(..)`
                # splits into an empty head and a body, and scanning that body as
                # goals records foo at arity 0 alongside its real arity -- inflating
                # the inventory and splitting one predicate into two entries.
                continue
            head, body = split_head_body(clause)
            ind = head_indicator(clause)
            if ind and ind[0] not in sig_names and ind[0] not in DECL_SYNTAX:
                entry(*ind).used_in.add(f.name)
            for nm, ar, _neg in body_goals(body or ""):
                if nm not in sig_names and nm not in DECL_SYNTAX:
                    entry(nm, ar).used_in.add(f.name)

    return sorted(found.values(), key=lambda i: (i.name, i.arity)), len(files)
