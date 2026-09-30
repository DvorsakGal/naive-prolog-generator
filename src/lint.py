"""Phase D -- structural checks on the assembled ontology. No LLM, fully deterministic.

v1 could only score the reference graph, because a bag of facts has almost no structure
to check. v2 emits a program, so real checks become possible:

  1. SYNTAX            -- swipl consult.
  2. LINK INTEGRITY    -- every goal in a rule body must resolve to either a clause that
                          defines it or a declared/3 primitive. Anything else is a rule
                          that can never succeed. THIS IS THE HEADLINE METRIC: it is the
                          quantity that decides whether the rule base is connected at all.
  3. VACUOUS NEGATION  -- the guard from PLAN_V2.md 6.2. `\\+ G` where G is neither
                          defined nor declared is trivially true, so the rule fires
                          unconditionally. For a prohibition rule that means declaring
                          conduct unlawful because nobody modelled the permission.
  4. ARITY COLLISIONS  -- one name used at two arities: v1's condition/2 vs condition/3.
  5. PROVENANCE        -- every rule head should carry provenance/2 back to its unit.
  6. REFERENCE GRAPH   -- carried over from v1: emitted references/2 vs the <ref> markup.

A declared predicate with no clauses is NOT an error: it is the ABox interface, the
point where facts about a concrete AI system get asserted. The linter separates those
from genuinely dangling goals, which is the distinction that makes metric 2 meaningful.
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from merge import indicator, split_clauses  # noqa: E402
from select_provisions import select_provisions  # noqa: E402

CONTROL = {",", ";", "->", "\\+", "!", "true", "fail", "not"}
GOAL_RE = re.compile(r"(\\\+\s*)?([a-z][A-Za-z0-9_]*)\s*(\()?")


def split_head_body(clause: str) -> tuple[str, str | None]:
    """Split on the top-level ':-', respecting quotes and parens."""
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
            return clause[:i].strip(), clause[i + 2:].rstrip(". ").strip()
        i += 1
    return clause.rstrip(". ").strip(), None


def body_goals(body: str) -> list[tuple[str, int, bool]]:
    """(name, arity, negated) for each goal in a rule body, quote-aware."""
    goals, depth, in_q, i, negated = [], 0, False, 0, False
    while i < len(body):
        ch = body[i]
        if in_q:
            if ch == "'":
                if i + 1 < len(body) and body[i + 1] == "'":
                    i += 2
                    continue
                in_q = False
            i += 1
            continue
        if ch == "'":
            in_q = True
            i += 1
            continue
        if body.startswith("\\+", i):
            negated = True
            i += 2
            continue
        if ch in "([":
            depth += 1
            i += 1
            continue
        if ch in ")]":
            depth -= 1
            i += 1
            continue
        if depth == 0 and (ch.islower() and (i == 0 or not (body[i - 1].isalnum() or body[i - 1] == "_"))):
            m = re.match(r"([a-z][A-Za-z0-9_]*)\s*(\()?", body[i:])
            if m:
                name = m.group(1)
                if name in CONTROL:
                    i += len(name)
                    continue
                arity = 0
                if m.group(2):
                    arity, d2, q2, j = 1, 1, False, i + m.end()
                    while j < len(body) and d2 > 0:
                        c2 = body[j]
                        if q2:
                            if c2 == "'":
                                if j + 1 < len(body) and body[j + 1] == "'":
                                    j += 2
                                    continue
                                q2 = False
                        elif c2 == "'":
                            q2 = True
                        elif c2 in "([":
                            d2 += 1
                        elif c2 in ")]":
                            d2 -= 1
                        elif c2 == "," and d2 == 1:
                            arity += 1
                        j += 1
                    goals.append((name, arity, negated))
                    negated = False
                    i = j
                    continue
                goals.append((name, 0, negated))
                negated = False
                i += len(name)
                continue
        if ch in ",;" and depth == 0:
            negated = False
        i += 1
    return goals


def analyse(ontology: Path) -> dict:
    src = ontology.read_text(encoding="utf-8")
    defined: Counter = Counter()
    declared: set[tuple[str, int]] = set()
    provenance_heads: set[tuple[str, int]] = set()
    rule_heads: set[tuple[str, int]] = set()
    body_refs: list[tuple[tuple[str, int], tuple[str, int], bool]] = []

    for clause in split_clauses(src):
        head, body = split_head_body(clause)
        ind = indicator(head if head.endswith(")") else head + ".")
        if ind is None:
            m = re.match(r"^([a-z][A-Za-z0-9_]*)$", head)
            ind = (m.group(1), 0) if m else None
        if ind is None:
            continue
        defined[ind] += 1
        if ind == ("declared", 3):
            m = re.match(r"declared\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)", head)
            if m:
                declared.add((m.group(1), int(m.group(2))))
        elif ind == ("provenance", 2):
            m = re.match(r"provenance\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)", head)
            if m:
                provenance_heads.add((m.group(1), int(m.group(2))))
        if body is not None:
            rule_heads.add(ind)
            for name, arity, neg in body_goals(body):
                body_refs.append((ind, (name, arity), neg))

    defined_keys = set(defined)
    dangling, vacuous_neg = [], []
    for src_ind, goal, neg in body_refs:
        resolved = goal in defined_keys or goal in declared
        if not resolved:
            entry = {"in_rule": f"{src_ind[0]}/{src_ind[1]}", "goal": f"{goal[0]}/{goal[1]}"}
            (vacuous_neg if neg else dangling).append(entry)

    total_goals = len(body_refs)
    linked = total_goals - len(dangling) - len(vacuous_neg)

    arity_clash = {n: sorted(a for nm, a in (defined_keys | declared) if nm == n)
                   for n in {nm for nm, _ in (defined_keys | declared)}}
    arity_clash = {n: a for n, a in arity_clash.items() if len(a) > 1}

    abox_primitives = sorted(f"{n}/{a}" for n, a in declared if (n, a) not in defined_keys)
    missing_prov = sorted(f"{n}/{a}" for n, a in rule_heads
                          if (n, a) not in provenance_heads
                          and n not in ("declared", "provenance", "references"))

    return {
        "clauses": sum(defined.values()),
        "rule_heads": len(rule_heads),
        "declared_predicates": len(declared),
        "abox_primitives": {"count": len(abox_primitives), "sample": abox_primitives[:12]},
        "link_integrity": {
            "body_goals": total_goals,
            "resolved": linked,
            "dangling": len(dangling),
            "vacuous_negations": len(vacuous_neg),
            "score": round(linked / total_goals, 3) if total_goals else 0.0,
            "dangling_detail": dangling[:15],
            "vacuous_detail": vacuous_neg[:15],
        },
        "arity_collisions": arity_clash,
        "provenance": {
            "rule_heads": len(rule_heads),
            "with_provenance": len(rule_heads) - len(missing_prov),
            "missing": missing_prov[:15],
        },
    }


# --------------------------------------------------------------------- v3 addition

STOPWORDS = {"a", "an", "the", "of", "to", "for", "in", "on", "by", "is", "are",
             "that", "which", "and", "or", "as", "with", "its", "their"}

# Vocabulary-declaration syntax, not domain predicates. `:- pred foo/1, gloss('x'),
# source('y').` is a directive whose own functors would otherwise be scraped as
# predicates named pred/gloss/source and counted as invented vocabulary.
DECL_SYNTAX = {"pred", "gloss", "source", "declared", "provenance", "references",
               "discontiguous", "dynamic", "module", "use_module", "ensure_loaded"}
MODALITIES = ("prohibited_", "permitted_", "required_", "exempt_", "objective_",
              "must_")


def _tokens(name: str) -> frozenset[str]:
    return frozenset(w for w in name.split("_") if w and w not in STOPWORDS)


def _gloss_key(gloss: str) -> str:
    words = [w for w in re.sub(r"[^a-z0-9 ]", " ", gloss.lower()).split()
             if w not in STOPWORDS]
    return " ".join(sorted(words))


def check_cross_file(out_dir: Path) -> dict:
    """Is the namespace SHARED across provisions, or did each call invent its own?

    WHY THIS EXISTS (v3)
    --------------------
    Every other check in this file is per-file. A set of provisions can each be
    perfectly internally consistent -- clean syntax, link integrity 1.0, no vacuous
    negations -- while still failing as one ontology, because call 1 named a concept
    permitted_use_rt_rbi and call 2 named the same concept permitted_rrbis_use.
    Nothing errors. The rules simply never connect.

    A per-file linter scores that situation identically to a good one, which makes a
    large run impossible to judge. This check is what distinguishes them.

    Signature predicates are excluded: those were handed to every call, so agreement
    on them proves nothing. Only predicates the calls INVENTED are measured.

    INTERPRETING `fragmentation`. It is the share of invented predicates used in only
    one file, which is an UPPER BOUND on the problem rather than a defect count: many
    predicates are legitimately provision-specific (prohibited_social_scoring belongs
    to Article 5 and nowhere else). A high value means "could be fragmented", not "is
    broken". The `alias_candidates` list is the part a human can actually review, and
    the cross-file appearance of central concepts (high_risk_ai_system) is the part
    that shows convergence working.
    """
    sig_path = out_dir / "signature.pl"
    rules_dir = out_dir / "rules"
    if not sig_path.exists() or not rules_dir.exists():
        return {"ran": False, "note": "need signature.pl and rules/"}

    sig_names = {n for n, _ in re.findall(
        r"declared\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)", sig_path.read_text("utf-8"))}
    sig_names |= {n for n, _ in re.findall(
        r":-\s*pred\s+([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)", sig_path.read_text("utf-8"))}

    # Per-file: which predicates does it declare, define, and reference?
    declared_in: dict[str, set[str]] = defaultdict(set)
    glosses: dict[str, list[tuple[str, str]]] = defaultdict(list)  # gloss_key -> [(name, file)]
    used_in: dict[str, set[str]] = defaultdict(set)

    files = sorted(rules_dir.glob("*.pl"))
    for f in files:
        src = f.read_text(encoding="utf-8")
        for m in re.finditer(
                r":-\s*pred\s+([a-z_][A-Za-z0-9_]*)\s*/\s*\d+\s*,\s*gloss\(\s*'((?:[^']|'')*)'",
                src):
            name, gloss = m.group(1), m.group(2)
            if name not in sig_names and name not in DECL_SYNTAX:
                declared_in[name].add(f.name)
                glosses[_gloss_key(gloss)].append((name, f.name))
        for clause in split_clauses(src):
            head, body = split_head_body(clause)
            ind = indicator(head if head.endswith(")") else head + ".")
            if ind and ind[0] not in DECL_SYNTAX and ind[0] not in sig_names:
                used_in[ind[0]].add(f.name)
            if body:
                for nm, _a, _n in body_goals(body):
                    if nm not in sig_names and nm not in DECL_SYNTAX:
                        used_in[nm].add(f.name)

    invented = sorted(set(declared_in) | set(used_in))
    shared = [n for n in invented if len(used_in.get(n, set())) > 1]
    single = [n for n in invented if len(used_in.get(n, set())) <= 1]

    # Alias candidates -- the same concept under two names.
    aliases: list[dict] = []
    for key, entries in glosses.items():
        names = {n for n, _ in entries}
        if len(names) > 1:
            aliases.append({"reason": "identical gloss", "names": sorted(names),
                            "gloss": key[:70]})
    def _modality(name: str) -> str:
        for m in MODALITIES:
            if name.startswith(m):
                return m
        return ""

    seen_pairs = set()
    for i, a in enumerate(invented):
        ta = _tokens(a)
        if len(ta) < 2:
            continue
        for b in invented[i + 1:]:
            tb = _tokens(b)
            if len(tb) < 2:
                continue
            # A different modality is a DIFFERENT CONCEPT, not an alias:
            # permitted_x and prohibited_x are supposed to be distinct predicates.
            # Without this guard the grammar we just introduced would make the alias
            # count go UP, because it puts near-identical stems on opposite modalities.
            ma, mb = _modality(a), _modality(b)
            if ma and mb and ma != mb:
                continue
            j = len(ta & tb) / len(ta | tb)
            if j >= 0.6 and (a, b) not in seen_pairs:
                seen_pairs.add((a, b))
                aliases.append({"reason": f"token overlap {j:.2f}", "names": [a, b]})

    # Descriptive, not a score: the grammar also permits un-prefixed PROPERTY and ACT
    # forms (causes_significant_harm, employs_subliminal_techniques), so the absence
    # of a modality prefix is not itself a violation.
    modality_prefixed = [n for n in invented if n.startswith(MODALITIES)]

    # A real, unambiguous grammar violation: the grammar says name the SUBJECT MATTER,
    # never the article or annex number. A predicate called annex_3_ai_system cannot
    # be reused by another provision talking about the same concept.
    numbered = sorted(n for n in invented
                      if re.search(r"(^|_)(art|article|anx|annex)_?\d", n))
    frag = len(single) / len(invented) if invented else 0.0

    return {
        "ran": True,
        "files": len(files),
        "invented_predicates": len(invented),
        "shared_across_files": len(shared),
        "single_file_only": len(single),
        "fragmentation": round(frag, 3),
        "modality_prefixed": len(modality_prefixed),
        "violations_number_in_name": numbered,
        "n_violations_number_in_name": len(numbered),
        "alias_candidates": aliases[:20],
        "n_alias_candidates": len(aliases),
        "shared_sample": sorted(shared)[:15],
    }


def check_syntax(ontology: Path) -> dict:
    if not shutil.which("swipl"):
        return {"ran": False, "note": "swipl not on PATH; skipped"}
    proc = subprocess.run(
        ["swipl", "-q", "-g", f"consult('{ontology}')", "-g", "halt", "-t", "halt(1)"],
        capture_output=True, text=True, timeout=300)
    err = proc.stderr
    return {"ran": True, "ok": proc.returncode == 0 and "ERROR" not in err,
            "errors": err.count("ERROR"), "warnings": err.count("Warning"),
            "singleton_warnings": err.count("Singleton"),
            "detail": "\n".join(err.splitlines()[:15])}


def _prf(tp: int, fp: int, fn: int) -> dict:
    pr = tp / (tp + fp) if tp + fp else 0.0
    rc = tp / (tp + fn) if tp + fn else 0.0
    return {"true_positives": tp, "false_positives": fp, "false_negatives": fn,
            "precision": round(pr, 3), "recall": round(rc, 3),
            "f1": round(2 * pr * rc / (pr + rc), 3) if pr + rc else 0.0}


def _refs_in(text: str) -> set[str]:
    out = set()
    for clause in split_clauses(text):
        if indicator(clause) != ("references", 2):
            continue
        m = re.match(r"references\(\s*'([^']+)'\s*,\s*'([^']+)'\s*\)\s*\.", clause.strip())
        if m:
            out.add(m.group(2))
    return out


def check_references(ontology: Path, units_dir: Path, articles: list[str] | None,
                     rules_dir: Path | None = None) -> dict:
    """Emitted references/2 against the <ref> ground truth.

    Two scores, for the same reason as v1:

    * chunk  -- per rule FILE: did the call recover the references in the provision it
      was shown? Attribution-free, and the metric to read.
    * strict -- additionally requires references/2's FIRST argument to be the unit id.
      A call given the whole of Article 5 legitimately attributes a reference to the
      sub-provision carrying it ('...#art_5/par_2'), which is BETTER provenance but
      scores as a miss here. Reported for information only.
    """
    units = select_provisions(units_dir, articles)
    truth = {u.uid: set(u.refs()) for u in units}

    emitted: dict[str, set[str]] = defaultdict(set)
    for clause in split_clauses(ontology.read_text(encoding="utf-8")):
        if indicator(clause) != ("references", 2):
            continue
        m = re.match(r"references\(\s*'([^']+)'\s*,\s*'([^']+)'\s*\)\s*\.", clause.strip())
        if m:
            emitted[m.group(1)].add(m.group(2))

    s_tp = s_fp = s_fn = 0
    for uid, want in truth.items():
        got = emitted.get(uid, set())
        s_tp, s_fp, s_fn = s_tp + len(want & got), s_fp + len(got - want), s_fn + len(want - got)

    c_tp = c_fp = c_fn = 0
    per_unit = []
    if rules_dir is not None:
        for u in units:
            f = rules_dir / f"{u.safe_name()}.pl"
            if not f.exists():
                continue
            want, got = set(u.refs()), _refs_in(f.read_text(encoding="utf-8"))
            c_tp += len(want & got); c_fp += len(got - want); c_fn += len(want - got)
            if want - got or got - want:
                per_unit.append({"unit": u.fragment, "missed": sorted(want - got)[:4],
                                 "spurious": sorted(got - want)[:4]})

    return {"truth_edges": sum(len(v) for v in truth.values()),
            "emitted_edges": sum(len(v) for v in emitted.values()),
            "chunk": _prf(c_tp, c_fp, c_fn), "strict": _prf(s_tp, s_fp, s_fn),
            "units_imperfect": len(per_unit), "worst": per_unit[:8]}


def main() -> int:
    p = argparse.ArgumentParser(description="Phase D -- lint the assembled ontology.")
    p.add_argument("--out", default="out_v2")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--articles", default="art_5")
    p.add_argument("--json", action="store_true")
    a = p.parse_args()

    ontology = Path(a.out) / "ontology.pl"
    if not ontology.exists():
        print(f"no {ontology} -- run Phase C first", file=sys.stderr)
        return 2
    arts = None if a.articles == "all" else [s.strip() for s in a.articles.split(",")]

    report = {"syntax": check_syntax(ontology), **analyse(ontology),
              "references": check_references(ontology, Path(a.units), arts,
                                            Path(a.out) / "rules"),
              "cross_file": check_cross_file(Path(a.out))}
    (Path(a.out) / "report.json").write_text(json.dumps(report, indent=2), encoding="utf-8")

    if a.json:
        print(json.dumps(report, indent=2))
        return 0

    s, li = report["syntax"], report["link_integrity"]
    print("== 1. syntax ==")
    print(f"  {s['note']}" if not s.get("ran") else
          f"  consult {'OK' if s['ok'] else 'FAILED'}  errors={s['errors']} "
          f"warnings={s['warnings']} singletons={s['singleton_warnings']}")
    if s.get("detail"):
        print("  " + s["detail"].replace("\n", "\n  "))

    print("\n== 2. link integrity (headline) ==")
    print(f"  body goals            {li['body_goals']}")
    print(f"  resolved              {li['resolved']}")
    print(f"  dangling              {li['dangling']}")
    print(f"  vacuous negations     {li['vacuous_negations']}")
    print(f"  SCORE                 {li['score']}")
    for d in li["dangling_detail"]:
        print(f"    dangling: {d['goal']:<34} used in {d['in_rule']}")
    for d in li["vacuous_detail"]:
        print(f"    VACUOUS \\+ {d['goal']:<30} in {d['in_rule']}  <-- rule fires unconditionally")

    print("\n== 3. vocabulary ==")
    print(f"  declared predicates   {report['declared_predicates']}")
    print(f"  ABox primitives       {report['abox_primitives']['count']} "
          f"(declared, no clauses -- expected)")
    print(f"  arity collisions      {len(report['arity_collisions'])}"
          f"{'  ' + str(report['arity_collisions']) if report['arity_collisions'] else ''}")

    pv = report["provenance"]
    print("\n== 4. provenance ==")
    print(f"  rule heads            {pv['rule_heads']}")
    print(f"  with provenance/2     {pv['with_provenance']}")
    if pv["missing"]:
        print(f"  MISSING               {pv['missing']}")

    cf = report["cross_file"]
    print("\n== 5. cross-file namespace consistency (v3) ==")
    if not cf.get("ran"):
        print(f"  {cf['note']}")
    else:
        print(f"  rule files             {cf['files']}")
        print(f"  invented predicates    {cf['invented_predicates']} "
              f"(signature predicates excluded -- agreement there proves nothing)")
        print(f"  shared across files    {cf['shared_across_files']}")
        print(f"  used in one file only  {cf['single_file_only']}")
        print(f"  FRAGMENTATION          {cf['fragmentation']}  (0 = fully shared, 1 = no sharing)")
        print("    ^ an UPPER BOUND on the problem, not a defect count: a predicate like")
        print("      prohibited_social_scoring legitimately belongs to one provision only.")
        print("      The reviewable signal is the alias list below.")
        print(f"  modality-prefixed      {cf['modality_prefixed']}/{cf['invented_predicates']}"
              f"  (descriptive: PROPERTY/ACT forms are un-prefixed by design)")
        print(f"  GRAMMAR VIOLATIONS     {cf['n_violations_number_in_name']}"
              f"  (article/annex number baked into a predicate name)")
        for v in cf["violations_number_in_name"][:6]:
            print(f"    {v}")
        print(f"  alias candidates       {cf['n_alias_candidates']}")
        for al in cf["alias_candidates"][:8]:
            print(f"    {al['reason']:<22} {' ~ '.join(al['names'])}")

    r = report["references"]
    ch, st = r["chunk"], r["strict"]
    print("\n== 6. reference graph (carried from v1) ==")
    print(f"  truth {r['truth_edges']}  emitted {r['emitted_edges']}")
    print(f"  chunk-level   P {ch['precision']}  R {ch['recall']}  F1 {ch['f1']}"
          f"   ({r['units_imperfect']} units imperfect)")
    print(f"  + source atom P {st['precision']}  R {st['recall']}  F1 {st['f1']}"
          f"   (reads low by design -- see docstring)")

    print(f"\nfull report: {Path(a.out) / 'report.json'}")
    return 0 if s.get("ok", True) else 1


if __name__ == "__main__":
    sys.exit(main())
