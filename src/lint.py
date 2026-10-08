"""Phase D -- structural checks on the assembled program. No LLM, fully deterministic.

Nine checks. Seven were built up over earlier versions. Two -- coverage and
discrimination -- exist because the other seven are blind to the defects they measure,
and both blindnesses have cost a run.

  1. COVERAGE         -- did every work unit produce a rule file? A program assembled
                         from 116 of 125 provisions while reporting link integrity 1.0
                         is the failure mode this pipeline has hit twice, in two
                         different places. It is now the first thing printed.
  2. SYNTAX           -- swipl consult.
  3. LINK INTEGRITY   -- every goal in a rule body must resolve to a clause that
                         defines it or to a declared input slot. Anything else is a
                         rule that can never succeed.
  4. DISCRIMINATION   -- does a rule body actually TEST anything, or does it only
                         restate the provision's scope? See check_discrimination().
  5. VACUOUS NEGATION -- `\\+ G` where G is neither defined nor declared is trivially
                         true, so the rule fires unconditionally. For a prohibition
                         rule that means declaring conduct unlawful because nobody
                         modelled the permission.
  6. ARITY COLLISIONS -- one name used at two arities.
  7. PROVENANCE       -- every rule head should carry provenance/2 back to its unit.
  8. REFERENCE GRAPH  -- emitted references/2 against the corpus's <ref> markup.
  9. NAMESPACE        -- is the vocabulary SHARED across provisions, or did each call
                         invent its own? Every other check is per-file and would score
                         a fragmented namespace identically to a coherent one.

A declared predicate with no clauses is NOT an error: it is an input slot, the point
where facts about a concrete AI system get asserted. Separating those from genuinely
dangling goals is what makes check 3 meaningful.
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
from collections import defaultdict
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from prolog import (body_goals, head_indicator, indicator, simple_conjuncts,  # noqa: E402
                    split_clauses, split_head_body, variables)
from signature import collect_invented  # noqa: E402
from structure import phase_b_units, validate  # noqa: E402

STOPWORDS = {"a", "an", "the", "of", "to", "for", "in", "on", "by", "is", "are",
             "that", "which", "and", "or", "as", "with", "its", "their"}
MODALITIES = ("prohibited_", "permitted_", "required_", "exempt_", "objective_",
              "must_")
BOOKKEEPING = ("declared", "provenance", "references", "alias")


# ----------------------------------------------------------------------- 1. coverage

def check_coverage(out_dir: Path, units_dir: Path, rules_dir: Path,
                   include_annexes: bool = True) -> dict:
    """Which work units reached the program, and does the slicer still agree with the
    corpus?

    Two silent-loss bugs motivated this: Phase A once dropped definitions 29-34, and
    selection once dropped 12 articles. In both cases every other number in the report
    looked fine, because a check that only inspects what was produced cannot see what
    was never produced.
    """
    units = phase_b_units(units_dir, include_annexes=include_annexes)
    present, missing = [], []
    for u in units:
        (present if (rules_dir / f"{u.safe_name()}.pl").exists() else missing).append(
            u.fragment)
    slicer = validate(units_dir)
    return {
        "work_units": len(units),
        "articles": sum(1 for u in units if u.kind == "art"),
        "annexes": sum(1 for u in units if u.kind == "anx"),
        "with_rule_file": len(present),
        "missing_rule_file": missing,
        "n_missing": len(missing),
        "score": round(len(present) / len(units), 3) if units else 0.0,
        "slicer_validated": slicer["exact"],
        "slicer_checked": slicer["checked"],
        "slicer_differ": slicer["differ"],
    }


# ------------------------------------------------------------------- 2-7. the program

def analyse(program: Path) -> dict:
    src = program.read_text(encoding="utf-8")
    defined: Counter = Counter()
    declared: set[tuple[str, int]] = set()
    provenance_heads: set[tuple[str, int]] = set()
    provenance_of: dict[tuple[str, int], str] = {}
    rule_heads: set[tuple[str, int]] = set()
    body_refs: list[tuple[tuple[str, int], tuple[str, int], bool]] = []
    rules: list[tuple[tuple[str, int], str, str]] = []   # (head ind, head, body)

    for clause in split_clauses(src):
        head, body = split_head_body(clause)
        ind = head_indicator(clause)
        if ind is None:
            continue
        defined[ind] += 1
        if ind == ("declared", 3):
            m = re.match(r"declared\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)", head)
            if m:
                declared.add((m.group(1), int(m.group(2))))
        elif ind == ("provenance", 2):
            m = re.match(r"provenance\(\s*([a-z_][A-Za-z0-9_]*)\s*/\s*(\d+)\s*,\s*"
                         r"'([^']*)'", head)
            if m:
                key = (m.group(1), int(m.group(2)))
                provenance_heads.add(key)
                provenance_of.setdefault(key, m.group(3))
        if body is not None:
            rule_heads.add(ind)
            rules.append((ind, head, body))
            for name, arity, neg in body_goals(body):
                body_refs.append((ind, (name, arity), neg))

    defined_keys = set(defined)
    dangling, vacuous_neg = [], []
    for src_ind, goal, neg in body_refs:
        if goal not in defined_keys and goal not in declared:
            entry = {"in_rule": f"{src_ind[0]}/{src_ind[1]}",
                     "goal": f"{goal[0]}/{goal[1]}"}
            (vacuous_neg if neg else dangling).append(entry)

    total_goals = len(body_refs)
    linked = total_goals - len(dangling) - len(vacuous_neg)

    all_keys = defined_keys | declared
    arity_clash = {n: sorted(a for nm, a in all_keys if nm == n)
                   for n in {nm for nm, _ in all_keys}}
    arity_clash = {n: a for n, a in arity_clash.items() if len(a) > 1}

    input_slots = sorted(f"{n}/{a}" for n, a in declared if (n, a) not in defined_keys)
    missing_prov = sorted(f"{n}/{a}" for n, a in rule_heads
                          if (n, a) not in provenance_heads and n not in BOOKKEEPING)

    return {
        "clauses": sum(defined.values()),
        "rule_heads": len(rule_heads),
        "declared_predicates": len(declared),
        "input_slots": {"count": len(input_slots), "sample": input_slots[:12]},
        "link_integrity": {
            "body_goals": total_goals,
            "resolved": linked,
            "dangling": len(dangling),
            "vacuous_negations": len(vacuous_neg),
            "score": round(linked / total_goals, 3) if total_goals else 0.0,
            "dangling_detail": dangling[:15],
            "vacuous_detail": vacuous_neg[:15],
        },
        "discrimination": check_discrimination(rules, provenance_of),
        "arity_collisions": arity_clash,
        "provenance": {
            "rule_heads": len(rule_heads),
            "with_provenance": len(rule_heads) - len(missing_prov),
            "missing": missing_prov[:15],
        },
    }


# ----------------------------------------------------------------- 4. discrimination

def check_discrimination(rules: list[tuple[tuple[str, int], str, str]],
                         provenance_of: dict[tuple[str, int], str]) -> dict:
    """Does a rule body TEST anything, or does it only restate the provision's scope?

    WHY THIS EXISTS
    ---------------
    This is the defect every other check in this file is blind to. A rule like

        required_testing_for_risk_management(P, S) :- provider(P), high_risk_ai_system(S).

    loads cleanly, resolves every goal, carries provenance, and uses the frozen
    vocabulary correctly. It scores perfectly. It also says nothing: it is true of
    every provider and every high-risk system, so it restates Article 9's *scope*
    rather than the test Article 9 imposes. A program full of these looks connected
    and answers nothing.

    THE TEST
    --------
    A body is NON-DISCRIMINATING when all four hold:

      * it is a plain conjunction -- no disjunction, if-then or negation. Those carry
        real structure, so they are never flagged.
      * every goal is unary. A relation like places_on_market(P, S) constrains how two
        things stand to each other, which is a genuine test.
      * no goal mentions a variable the head does not already bind. A new variable is
        an existential condition: something must exist for the rule to fire.
      * each head variable appears in at most ONE goal. This is the discriminating
        clause of the check, and it is what separates

            real_time_rbi(S) :- biometric_identification_system(S), remote(S),
                                real_time(S).          <- THREE conditions on one S

        from

            required_testing(P, S) :- provider(P), high_risk_ai_system(S).
                                                       <- one type check per argument

        The first conjoins conditions and is a real definition. The second only
        declares the types of its own arguments and adds nothing to its head.

    TWO SHAPES, REPORTED SEPARATELY
    -------------------------------
    A flagged body with ONE goal is usually a subtype rule, and those are legitimate:

        operator(O) :- provider(O).      % Article 3(8): an operator is a provider,
        operator(O) :- importer(O).      % a product manufacturer, a deployer, ...

    That is a type union written as clauses, which is how you express it in Prolog.
    A flagged body with TWO OR MORE goals is the real defect, because each goal types
    a different argument and none of them constrains the others:

        required_risk_management_system(P, S) :- provider(P), high_risk_ai_system(S).

    `multi_goal` is therefore the number to read, and `single_goal` is reported beside
    it rather than folded in, because folding them together roughly doubles the figure
    with cases that are mostly correct.

    The check is otherwise conservative: it reports a lower bound. A rule it does not
    flag may still be weak; a multi-goal rule it flags is weak by construction.
    """
    flagged: list[dict] = []
    judged = 0
    for ind, head, body in rules:
        if ind[0] in BOOKKEEPING:
            continue
        conj = simple_conjuncts(body)
        if conj is None:
            continue
        judged += 1
        if not conj:
            continue
        head_vars = variables(head)
        if any(len(variables(args)) > 1 or "," in args for _n, args in conj):
            continue                                   # a relation, or a compound term
        goal_vars = [variables(args) for _n, args in conj]
        if any(gv - head_vars for gv in goal_vars):
            continue                                   # an existential condition
        counts = Counter(v for gv in goal_vars for v in gv)
        if counts and max(counts.values()) > 1:
            continue                                   # conditions conjoined on one var
        flagged.append({
            "head": f"{ind[0]}/{ind[1]}",
            "unit": provenance_of.get(ind, "?"),
            "goals": len(conj),
            "clause": re.sub(r"\s+", " ", f"{head} :- {body}.")[:150],
        })
    single = [f for f in flagged if f["goals"] == 1]
    multi = [f for f in flagged if f["goals"] > 1]
    return {
        "rules_judged": judged,
        "non_discriminating": len(flagged),
        "single_goal": len(single),
        "multi_goal": len(multi),
        "rate": round(len(flagged) / judged, 3) if judged else 0.0,
        "multi_goal_rate": round(len(multi) / judged, 3) if judged else 0.0,
        "note": ("lower bound: only plain conjunctive bodies are judged. multi_goal is "
                 "the defect -- one type check per argument, constraining nothing. "
                 "single_goal is mostly legitimate subtype rules (operator(O) :- "
                 "provider(O)) and is reported separately, not folded in."),
        "sample_multi_goal": multi[:12],
        "sample_single_goal": single[:6],
    }


# ---------------------------------------------------------------------- 9. namespace

def _tokens(name: str) -> frozenset[str]:
    return frozenset(w for w in name.split("_") if w and w not in STOPWORDS)


def _gloss_key(gloss: str) -> str:
    words = [w for w in re.sub(r"[^a-z0-9 ]", " ", gloss.lower()).split()
             if w not in STOPWORDS]
    return " ".join(sorted(words))


def _modality(name: str) -> str:
    for m in MODALITIES:
        if name.startswith(m):
            return m
    return ""


def check_namespace(out_dir: Path, rules_dir: Path) -> dict:
    """Is the vocabulary SHARED across provisions, or did each call invent its own?

    WHY THIS EXISTS
    ---------------
    Every other check is per-file. A set of provisions can each be perfectly
    internally consistent -- clean syntax, link integrity 1.0, no vacuous negations --
    while still failing as one program, because call 1 named something
    permitted_use_rt_rbi and call 2 named the same thing permitted_rrbis_use. Nothing
    errors. The clauses simply never connect. A per-file linter scores that identically
    to a good result, which is what makes a 125-call run unjudgeable without this.

    Signature predicates are excluded: those were handed to every call, so agreement on
    them measures nothing. Only what the calls invented is counted, via the same
    `collect_invented()` that feeds reconciliation -- so the linter and the merge call
    can never disagree about what counts as invented.

    INTERPRETING `fragmentation`. It is the share of invented predicates used in only
    one file, which is an UPPER BOUND on the problem rather than a defect count: many
    predicates are legitimately provision-specific. A high value means "could be
    fragmented", not "is broken". The `alias_candidates` list is the part a human can
    review, and it is candidates -- token overlap cannot tell quality management from
    risk management, which is exactly why reconcile.py asks a model and not a regex.
    """
    sig_path = out_dir / "signature.pl"
    if not sig_path.exists() or not rules_dir.exists():
        return {"ran": False, "note": "need signature.pl and a rules directory"}

    inv, n_files = collect_invented(sig_path.read_text(encoding="utf-8"), rules_dir)
    if not inv:
        return {"ran": True, "files": n_files, "invented_predicates": 0,
                "note": "the calls invented nothing -- the frozen vocabulary sufficed"}

    names = [i.name for i in inv]
    shared = [i for i in inv if len(i.used_in) > 1]
    single = [i for i in inv if len(i.used_in) <= 1]

    aliases: list[dict] = []
    by_gloss: dict[str, set[str]] = defaultdict(set)
    for i in inv:
        if i.gloss:
            by_gloss[_gloss_key(i.gloss)].add(i.name)
    for key, group in by_gloss.items():
        if len(group) > 1:
            aliases.append({"reason": "identical gloss", "names": sorted(group),
                            "gloss": key[:70]})

    seen: set[tuple[str, str]] = set()
    uniq = sorted(set(names))
    for idx, a in enumerate(uniq):
        ta = _tokens(a)
        if len(ta) < 2:
            continue
        for b in uniq[idx + 1:]:
            tb = _tokens(b)
            if len(tb) < 2:
                continue
            # Opposite modalities are a DIFFERENT concept, not an alias:
            # permitted_x and prohibited_x are supposed to be distinct predicates.
            # Without this guard the naming forms we hand the calls would make the
            # alias count go UP, because they put identical stems on opposite
            # modalities.
            ma, mb = _modality(a), _modality(b)
            if ma and mb and ma != mb:
                continue
            j = len(ta & tb) / len(ta | tb)
            if j >= 0.6 and (a, b) not in seen:
                seen.add((a, b))
                aliases.append({"reason": f"token overlap {j:.2f}", "names": [a, b]})

    # A real, unambiguous violation of the naming forms: name the SUBJECT MATTER, never
    # the article or annex number. A predicate called annex_3_ai_system cannot be
    # reused by another provision talking about the same thing.
    numbered = sorted({n for n in names
                       if re.search(r"(^|_)(art|article|anx|annex)_?\d", n)})
    return {
        "ran": True,
        "files": n_files,
        "invented_predicates": len(inv),
        "shared_across_files": len(shared),
        "single_file_only": len(single),
        "fragmentation": round(len(single) / len(inv), 3),
        "modality_prefixed": sum(1 for n in names if n.startswith(MODALITIES)),
        "violations_number_in_name": numbered,
        "n_violations_number_in_name": len(numbered),
        "alias_candidates": aliases[:20],
        "n_alias_candidates": len(aliases),
        "shared_sample": sorted(i.name for i in shared)[:15],
    }


# ------------------------------------------------------------------------- 2. syntax

def check_syntax(program: Path) -> dict:
    if not shutil.which("swipl"):
        return {"ran": False, "note": "swipl not on PATH; skipped"}
    proc = subprocess.run(
        ["swipl", "-q", "-g", f"consult('{program}')", "-g", "halt", "-t", "halt(1)"],
        capture_output=True, text=True, timeout=600)
    err = proc.stderr
    return {"ran": True, "ok": proc.returncode == 0 and "ERROR" not in err,
            "errors": err.count("ERROR"), "warnings": err.count("Warning"),
            "singleton_warnings": err.count("Singleton"),
            "detail": "\n".join(err.splitlines()[:15])}


# ---------------------------------------------------------------- 8. reference graph

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
        m = re.match(r"references\(\s*'([^']+)'\s*,\s*'([^']+)'\s*\)\s*\.",
                     clause.strip())
        if m:
            out.add(m.group(2))
    return out


def check_references(program: Path, units_dir: Path, rules_dir: Path,
                     include_annexes: bool = True) -> dict:
    """Emitted references/2 against the <ref> ground truth -- the corpus's human
    annotation, and the only free ground truth in the whole pipeline.

    Two scores:

    * chunk  -- per rule FILE: did the call recover the references in the provision it
      was shown? Attribution-free, and the metric to read.
    * strict -- additionally requires references/2's FIRST argument to be the unit id.
      A call given the whole of Article 5 legitimately attributes a reference to the
      sub-provision carrying it ('...#art_5/par_2'), which is BETTER provenance but
      scores as a miss here. Reported for information only.
    """
    # Only units that produced a rule file are scored. A unit with no file has no
    # emitted references by definition, and counting its <ref> edges as misses would
    # fold a coverage failure into a transcription score and hide both. Coverage is
    # check 1 and says so there.
    units = [u for u in phase_b_units(units_dir, include_annexes=include_annexes)
             if (rules_dir / f"{u.safe_name()}.pl").exists()]
    truth = {u.uid: set(u.refs()) for u in units}

    emitted: dict[str, set[str]] = defaultdict(set)
    for clause in split_clauses(program.read_text(encoding="utf-8")):
        if indicator(clause) != ("references", 2):
            continue
        m = re.match(r"references\(\s*'([^']+)'\s*,\s*'([^']+)'\s*\)\s*\.",
                     clause.strip())
        if m:
            emitted[m.group(1)].add(m.group(2))

    s_tp = s_fp = s_fn = 0
    for uid, want in truth.items():
        got = emitted.get(uid, set())
        s_tp += len(want & got)
        s_fp += len(got - want)
        s_fn += len(want - got)

    c_tp = c_fp = c_fn = 0
    per_unit = []
    for u in units:
        f = rules_dir / f"{u.safe_name()}.pl"
        if not f.exists():
            continue
        want, got = set(u.refs()), _refs_in(f.read_text(encoding="utf-8"))
        c_tp += len(want & got)
        c_fp += len(got - want)
        c_fn += len(want - got)
        if want - got or got - want:
            per_unit.append({"unit": u.fragment, "missed": sorted(want - got)[:4],
                             "spurious": sorted(got - want)[:4]})

    return {"units_scored": len(units),
            "truth_edges": sum(len(v) for v in truth.values()),
            "emitted_edges": sum(len(v) for v in emitted.values()),
            "chunk": _prf(c_tp, c_fp, c_fn), "strict": _prf(s_tp, s_fp, s_fn),
            "units_imperfect": len(per_unit), "worst": per_unit[:8]}


# ----------------------------------------------------------------------------- report

PASS_FILES = {1: ("ai_act.pl", "rules", "report.json"),
              2: ("ai_act_2.pl", "rules_2", "report_2.json")}


def main() -> int:
    p = argparse.ArgumentParser(description="Phase D -- lint the assembled program.")
    p.add_argument("--out", default="out")
    p.add_argument("--units", default="20260922T172249_32024R1689_3f672e3e/units")
    p.add_argument("--pass", dest="pass_", type=int, default=1, choices=(1, 2))
    p.add_argument("--no-annexes", action="store_true")
    p.add_argument("--json", action="store_true")
    a = p.parse_args()

    out_dir, units_dir = Path(a.out), Path(a.units)
    prog_name, rules_name, report_name = PASS_FILES[a.pass_]
    program, rules_dir = out_dir / prog_name, out_dir / rules_name
    if not program.exists():
        print(f"no {program} -- run Phase C first", file=sys.stderr)
        return 2
    annexes = not a.no_annexes

    report = {
        "pass": a.pass_,
        "coverage": check_coverage(out_dir, units_dir, rules_dir, annexes),
        "syntax": check_syntax(program),
        **analyse(program),
        "references": check_references(program, units_dir, rules_dir, annexes),
        "namespace": check_namespace(out_dir, rules_dir),
    }
    (out_dir / report_name).write_text(json.dumps(report, indent=2), encoding="utf-8")

    if a.json:
        print(json.dumps(report, indent=2))
        return 0

    cov, s, li = report["coverage"], report["syntax"], report["link_integrity"]
    print(f"== 1. coverage (pass {a.pass_}) ==")
    print(f"  work units            {cov['work_units']}  "
          f"({cov['articles']} articles + {cov['annexes']} annexes)")
    print(f"  with a rule file      {cov['with_rule_file']}   SCORE {cov['score']}")
    if cov["missing_rule_file"]:
        print(f"  MISSING               {cov['n_missing']}: "
              f"{', '.join(cov['missing_rule_file'][:20])}")
        print("    ^ these provisions are absent from the program. Every number below")
        print("      describes only what was produced, so read them against this line.")
    print(f"  slicer validated      {cov['slicer_validated']}/{cov['slicer_checked']} "
          f"slices match the corpus byte-for-byte")
    if cov["slicer_differ"]:
        print(f"  SLICER DISAGREES      {cov['slicer_differ']}")

    print("\n== 2. syntax ==")
    print(f"  {s['note']}" if not s.get("ran") else
          f"  consult {'OK' if s['ok'] else 'FAILED'}  errors={s['errors']} "
          f"warnings={s['warnings']} singletons={s['singleton_warnings']}")
    if s.get("detail"):
        print("  " + s["detail"].replace("\n", "\n  "))

    print("\n== 3. link integrity ==")
    print(f"  body goals            {li['body_goals']}")
    print(f"  resolved              {li['resolved']}")
    print(f"  dangling              {li['dangling']}")
    print(f"  vacuous negations     {li['vacuous_negations']}")
    print(f"  SCORE                 {li['score']}")
    for d in li["dangling_detail"]:
        print(f"    dangling: {d['goal']:<34} used in {d['in_rule']}")
    for d in li["vacuous_detail"]:
        print(f"    VACUOUS \\+ {d['goal']:<30} in {d['in_rule']}"
              f"  <-- rule fires unconditionally")

    di = report["discrimination"]
    print("\n== 4. discrimination -- do rule bodies TEST anything? ==")
    print(f"  conjunctive rules judged  {di['rules_judged']}")
    print(f"  MULTI-GOAL, no constraint {di['multi_goal']}   RATE {di['multi_goal_rate']}")
    print("    ^ THE DEFECT. Each goal types a different head argument and none")
    print("      constrains another, so the body restates the provision's scope")
    print("      instead of the test it imposes. These score perfectly on every")
    print("      other check in this report.")
    for f in di.get("sample_multi_goal", [])[:8]:
        print(f"    {f['unit'].split('#')[-1]:<10} {f['clause']}")
    print(f"  single-goal bodies        {di['single_goal']}")
    print("    ^ mostly legitimate: a type union written as clauses. Reported")
    print("      separately because folding it in would roughly double the figure")
    print("      with cases that are correct.")
    for f in di.get("sample_single_goal", [])[:3]:
        print(f"    {f['unit'].split('#')[-1]:<10} {f['clause']}")

    print("\n== 5. vocabulary ==")
    print(f"  declared predicates   {report['declared_predicates']}")
    print(f"  input slots           {report['input_slots']['count']} "
          f"(declared, no clauses -- assert facts against these)")
    print(f"  arity collisions      {len(report['arity_collisions'])}"
          f"{'  ' + str(report['arity_collisions']) if report['arity_collisions'] else ''}")

    pv = report["provenance"]
    print("\n== 6. provenance ==")
    print(f"  rule heads            {pv['rule_heads']}")
    print(f"  with provenance/2     {pv['with_provenance']}")
    if pv["missing"]:
        print(f"  MISSING               {pv['missing']}")

    ns = report["namespace"]
    print("\n== 7. namespace consistency across calls ==")
    if not ns.get("ran"):
        print(f"  {ns['note']}")
    else:
        print(f"  rule files             {ns['files']}")
        print(f"  invented predicates    {ns['invented_predicates']} "
              f"(signature predicates excluded -- agreement there proves nothing)")
        print(f"  shared across files    {ns.get('shared_across_files', 0)}")
        print(f"  used in one file only  {ns.get('single_file_only', 0)}")
        print(f"  FRAGMENTATION          {ns.get('fragmentation')}  "
              f"(0 = fully shared, 1 = no sharing)")
        print("    ^ an UPPER BOUND, not a defect count: prohibited_social_scoring")
        print("      legitimately belongs to one provision only. The reviewable")
        print("      signal is the alias list below.")
        print(f"  modality-prefixed      {ns.get('modality_prefixed')}/"
              f"{ns['invented_predicates']}  (descriptive: some forms are un-prefixed "
              f"by design)")
        print(f"  NAMING VIOLATIONS      {ns.get('n_violations_number_in_name')}"
              f"  (article/annex number baked into a predicate name)")
        for v in ns.get("violations_number_in_name", [])[:6]:
            print(f"    {v}")
        print(f"  alias candidates       {ns.get('n_alias_candidates')}  "
              f"(candidates for reconcile.py, not defects)")
        for al in ns.get("alias_candidates", [])[:8]:
            print(f"    {al['reason']:<22} {' ~ '.join(al['names'])}")

    r = report["references"]
    ch, st = r["chunk"], r["strict"]
    print("\n== 8. reference graph vs the corpus's <ref> markup ==")
    print(f"  truth {r['truth_edges']}  emitted {r['emitted_edges']}  "
          f"(over the {r['units_scored']} units that produced a rule file)")
    print(f"  chunk-level   P {ch['precision']}  R {ch['recall']}  F1 {ch['f1']}"
          f"   ({r['units_imperfect']} units imperfect)")
    print(f"  + source atom P {st['precision']}  R {st['recall']}  F1 {st['f1']}"
          f"   (reads low by design -- see docstring)")

    print(f"\nfull report: {out_dir / report_name}")
    return 0 if s.get("ok", True) else 1


if __name__ == "__main__":
    sys.exit(main())
