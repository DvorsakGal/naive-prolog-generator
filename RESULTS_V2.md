# Results — v2 (Article 5 slice)

Scope: Article 3 definitions (Phase A) + Article 5 in full (Phase B).
Model `gpt-oss:120b-cloud`, temperature 0, seed 0. **5 LLM calls, 79 s, 19k prompt +
18k completion tokens.**

Commands to reproduce: [`RUNBOOK_V2.md`](RUNBOOK_V2.md). Design rationale:
[`PLAN_V2.md`](PLAN_V2.md).

---

## 1. The pipeline works, and the output is genuinely low-level

| check | result |
|---|---|
| `swipl` consult | clean — 0 errors, 0 warnings, 0 singletons |
| **Link integrity** (headline) | **1.0** — 40/40 rule-body goals resolve |
| Vacuous negations | **0** |
| Arity collisions | **0** |
| Provenance coverage | **9/9** rule heads |
| Reference graph (carried from v1) | **P 1.0 · R 1.0 · F1 1.0** (11/11 edges) |
| Vocabulary | 70 signature predicates, 97 declared in total, 88 ABox primitives |

The v1 → v2 shift landed. Article 5(1)(h) went from an opaque string to this:

```prolog
prohibited_ai_system(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(_Loc),
    law_enforcement_authority(_Auth),
    \+ permitted_use_rt_rbi(S).

permitted_use_rt_rbi(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_localise_suspect(S).

provenance(prohibited_ai_system/1, 'celex:32024R1689/oj#art_5').
```

And it executes. Against the demo ABox:

```
classified as real-time RBI:  cam_net_01, cam_net_02
permitted use:                cam_net_01     (localising a suspect — an allowed objective)
PROHIBITED under Article 5:   cam_net_02     (mass screening — no allowed objective)
provenance:                   celex:32024R1689/oj#art_5
```

Real legal inference, with a traceable link back to the provision.

**The negation discipline held.** `\+ permitted_use_rt_rbi(S)` negates a predicate
defined by three clauses in the same file. The failure mode from PLAN_V2 §6.2 — a
prohibition rule that fires unconditionally because nobody modelled the permission — did
not occur once, and the linter confirms it mechanically rather than by inspection.

---

## 2. The headline problem: rule names are not stable across runs

Two Phase A runs, **same model, same temperature 0, same seed**, differing only by a
prompt edit that touched the *output-format* section:

| | run 1 | run 2 |
|---|---|---|
| signature predicates | 62 | 70 |
| `remote_biometric_identification_system/1` | **derived** by a rule | **declared only**, no rule |

Two Phase B runs over the identical provision named the same concept differently:

| run 1 | run 2 |
|---|---|
| `permitted_rrbis_use/2` | `permitted_use_rt_rbi/1` |
| `prohibited_rrbis_use/2` | folded into `prohibited_ai_system/1` |
| `allowed_objective/1` + `use_objective/2` | `objective_localise_suspect/1`, `objective_targeted_search/1`, … |

Neither output is wrong. Both are defensible formalisations. But they are **not
interchangeable**: a query written against one returns `Unknown procedure` against the
other, and any hand-written ABox has to be rewritten after every regeneration.

This is v1's schema-drift finding (115 actor atoms, 75 singletons) reappearing one level
up. In v1 it degraded queries. In v2 it means **the ontology has no stable API**.

**What the frozen signature did and did not fix.** It worked exactly as designed for the
*shared vocabulary* — 88 ABox primitives, zero arity collisions, zero dangling goals,
because Phase B was handed the names rather than inventing them. What it does not cover
is predicates Phase B has to invent because the signature has no word for them —
`permitted_use_rt_rbi` is a creature of Article 5, not of Article 3. That is where all
the instability now lives.

The design bounded the damage to one layer. It did not eliminate it.

---

## 3. The linter earned its place immediately

It found three real defects in the first run, two in the prompt and one in my code:

| defect | how it surfaced | fix |
|---|---|---|
| Signature used `biometric_identification/1` in a rule body without declaring it | link integrity 0.98, 1 dangling goal | prompt now requires closure: every predicate used must be declared |
| 5 signature rules had no `provenance/2` | provenance 4/9 | signature prompt now requires it |
| `merge_v2` silently dropped `publish_annual_report :- true.` | "1 unparsed" in the merge summary | v1's `indicator()` requires `(`; added zero-arity handling |

A fourth only appeared at query time: **`Unknown procedure` on the first question.** A
predicate that is declared but never given a clause is the ABox interface — but SWI
raises rather than failing when you call it. Assembly now emits `:- dynamic` for all 88
of them, which turns a crash into a clean `false`. Worth knowing for anyone assembling
Prolog from generated parts.

---

## 4. Answers to the questions PLAN_V2 posed

**Article-level batching was right.** One call covering all 8 paragraphs of Article 5
produced a prohibition rule whose exceptions were modelled in the same output, which is
precisely what makes the `\+` safe. Under v1's leaf-level batching the exceptions would
have been in a different call — or absent, since the corpus only carries 3 of Article
5(1)'s points as leaves.

**`gpt-oss:120b` is adequate for this task — the bottleneck is elsewhere.** It produced
syntactically clean, logically sensible, well-decomposed rules and perfect reference
transcription. Its weakness is naming consistency, and a stronger model would not
obviously fix that: nothing in the prompt tells it which of several correct names to
pick. **Do not buy an API key to solve §2** — fix it by constraining the namespace, not
by upgrading the model. A model comparison remains worth running as a controlled
experiment (`RUNBOOK_V2.md` §4), just not as a remedy for this.

**The scope was right.** 5 calls and 79 seconds means a prompt change costs nothing to
evaluate. Two full regenerations happened during this session purely to test fixes.

---

## 5. What to do next, in order

1. **Stabilise the rule-layer namespace.** Options, cheapest first:
   - Have Phase B *declare* its new predicates into a second frozen signature layer, then
     re-run everything against the union. Costs one extra pass.
   - Give the prompt a naming grammar (`permitted_<practice>`, `prohibited_<practice>`,
     `objective_<x>`) so independent calls converge by construction.
   - Post-hoc alignment — cheap to try, but it papers over the problem rather than fixing
     it, and it puts a stochastic step back into the deterministic part of the pipeline.

   I would do the naming grammar first: it is a prompt change, costs nothing to test, and
   keeps the pipeline shape intact.

2. **Generate the ABox too.** `demo_abox.pl` is hand-written, so the rules are only
   exercised where someone bothered to write facts. A generated ABox per provision would
   make "does this rule ever fire?" an automatic check rather than a manual one.

3. **Then scale to `--articles all`** (~110 calls). Not before step 1 — regenerating 110
   files to fix a naming convention is a waste when 1 file will tell you the same thing.

4. **Add a contradiction probe** — anything both permitted and prohibited under the same
   facts. Cheap, deterministic, and the check most likely to catch a real modelling error
   once more than one article is in scope.
