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


def check_references(ontology: Path, units_dir: Path, articles: list[str] | None) -> dict:
    """Carried over from v1: emitted references/2 against the <ref> ground truth."""
    units = select_provisions(units_dir, articles)
    truth = {u.uid: set(u.refs()) for u in units}
    emitted: dict[str, set[str]] = defaultdict(set)
    for clause in split_clauses(ontology.read_text(encoding="utf-8")):
        if indicator(clause) != ("references", 2):
            continue
        m = re.match(r"references\(\s*'([^']+)'\s*,\s*'([^']+)'\s*\)\s*\.", clause.strip())
        if m:
            emitted[m.group(1)].add(m.group(2))
    tp = fp = fn = 0
    for uid, want in truth.items():
        got = emitted.get(uid, set())
        tp, fp, fn = tp + len(want & got), fp + len(got - want), fn + len(want - got)
    pr = tp / (tp + fp) if tp + fp else 0.0
    rc = tp / (tp + fn) if tp + fn else 0.0
    return {"truth_edges": sum(len(v) for v in truth.values()),
            "emitted_edges": sum(len(v) for v in emitted.values()),
            "precision": round(pr, 3), "recall": round(rc, 3),
            "f1": round(2 * pr * rc / (pr + rc), 3) if pr + rc else 0.0}


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
              "references": check_references(ontology, Path(a.units), arts)}
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

    r = report["references"]
    print("\n== 5. reference graph (carried from v1) ==")
    print(f"  truth {r['truth_edges']}  emitted {r['emitted_edges']}  "
          f"P {r['precision']}  R {r['recall']}  F1 {r['f1']}")

    print(f"\nfull report: {Path(a.out) / 'report.json'}")
    return 0 if s.get("ok", True) else 1


if __name__ == "__main__":
    sys.exit(main())
