# v4 — full-act results: pass 1 vs pass 2

Results of running the pipeline in [`README.md`](README.md) over the whole AI Act, in both
configurations, in `out_2/`. Design rationale and the options rejected before building:
[`v4_plan.md`](v4_plan.md).

Both passes now produce a Prolog program that **loads cleanly with zero syntax errors** and
covers **125 of 125 work units** (112 articles + 13 annexes). That is the first time that
has been true, and it is the main thing this run establishes.

Pass 2 is **not better than pass 1**. It is different, with one real win, several
improvements inside measurement noise, and three regressions. Detail in §3–§5; the
decision summary is immediately below.

---

## 1. Summary for a decision

### Pass 1 — one call per provision, against a frozen vocabulary

```
126 LLM calls      640k prompt + 480k completion tokens      ~22 min
```

**What it is.** The definitions article is read once to produce the predicate vocabulary,
which is then frozen. Every other article and annex is read by one independent call that
receives that vocabulary verbatim. No call sees any other call's output.

**Use it when** you want the act formalised once, reproducibly, at the lowest cost, and
you can tolerate a fragmented invented vocabulary.

| | |
|---|---|
| Coverage | 125/125 |
| Loads in SWI-Prolog | yes, 0 errors |
| Clauses · rule heads | 4,401 · 542 |
| Link integrity | 0.960 |
| Reference fidelity (F1) | 0.973 |
| Arity collisions | 9 |
| Invented predicates | 1,096, of which 71 shared across provisions |

**Strengths.** Cheapest. Fully parallel and cacheable; re-running costs nothing. Every
call is a pure function of `(provision, vocabulary)`, so a failure is attributable to one
call. More predicates declared (880) and more rules (542), i.e. more of the act expressed.

**Weaknesses.** 1,096 invented names, only 71 of which are shared — the invented
vocabulary is mostly provision-local. 9 arity collisions: names like `must_inform` used at
two different argument counts, which in Prolog are two unrelated predicates that merely
look alike.

### Pass 2 — pass 1, plus a reconciliation step and a re-run

```
+3 reconciliation calls, +125 re-run calls      796k prompt + 472k completion      ~19 min
TOTAL for both passes: 254 calls, ~41 min
```

**What it is.** A mechanical pass proposes candidate pairs of invented names; 3 LLM calls
adjudicate each pair `same`/`different`; the surviving name of each group is chosen in code
by usage count. The result is frozen as a second vocabulary file, and all 125 calls are
re-run against both files.

**Use it when** vocabulary consistency matters more than cost or coverage, and someone will
review the merge list.

| | | vs pass 1 |
|---|---|---|
| Coverage | 125/125 | = |
| Loads in SWI-Prolog | yes, 0 errors | = |
| Clauses · rule heads | 4,083 · 526 | **−7% · −3%** |
| Link integrity | 0.965 | +0.005 |
| Reference fidelity (F1) | 0.973 | = |
| Arity collisions | **3** | **−6, real** |
| Invented predicates | 991, of which 88 shared | −105, +17 shared |

**Strengths.** Arity collisions down 9→3 — the only change in this run that is larger than
measurement noise. Better vocabulary reuse (88 shared vs 71) and lower fragmentation.
Vacuous negations 7→1. Fewer non-discriminating rules (129 vs 150). Markedly better style:
compound terms instead of long bespoke predicate names (§5).

**Weaknesses.** Costs twice as much for effects that are mostly inside the noise floor.
Only **20 of 1,096 names (1.8%) were actually merged**. Naming-rule violations went *up*,
18→27, partly because reconciliation promoted three rule-breaking names to canonical.
Placeholder names (`required_condition_a`…`_j`) doubled, 8→16. Rules containing a repeated
goal more than doubled, 29→69. 7% fewer clauses, so some content was lost rather than
consolidated.

### Recommendation

**Ship pass 1 as the default.** It is half the cost, expresses more of the act, and the
quality gap is not established.

**Keep pass 2 as an option, not a default,** and fix the three regressions before relying
on it. The arity result is the reason not to abandon the idea — but see §6: the benefit
appears to come from *pinning arities*, not from merging names, and pinning needs no LLM
call at all. That is the cheap experiment this run points to.

---

## 2. What this run achieved

Three defects from the previous run were fixed, and the fixes are verified rather than
assumed.

| fix | before | after |
|---|---|---|
| **Arity conventions pinned in the Phase B prompt** — each naming form has a fixed arity; extra detail goes into a compound term, not another argument | 22 collisions | **9** (pass 1), **3** (pass 2) |
| **Lexical rule** — every atom and functor starts with a lowercase letter, so durations are `years(10)` and not `10_years` | 9 syntax errors | **0** |
| **Malformed clauses degrade gracefully** — Phase C checks paren/quote balance, drops what fails, and names it | 1 bad clause killed the whole run | 1 clause dropped from `art_95`, program loads |

Two pipeline-correctness fixes also landed, and both had been silently corrupting results:

- **Rule-file staleness is now keyed on the full call key** (model, temperature, seed,
  `num_predict` and the entire prompt text), not on the vocabulary hash. Previously,
  editing the Phase B prompt left every rule file looking current, so a prompt experiment
  silently reused the previous prompt's output. One run reported a result after making only
  14 of 250 calls.
- **Reconciliation is self-invalidating** on a fingerprint of its own inputs. Previously it
  refused to rebuild whenever its output file existed, so a rewritten prompt reused a
  previous, empty result.

And the reconciliation step itself was rebuilt and now works mechanically: **213 of 213
candidate pairs answered, zero unanswered.** The previous design asked one call to find
duplicates among 1,469 names and received a single comment line in reply; forcing one
verdict per proposed pair removed that null exit.

---

## 3. The comparison, read against measurement noise

An earlier run accidentally produced a **null experiment**: two executions with identical
inputs. The differences between them are pure resampling variance at temperature 0, and
they are large. That floor is the column that makes this table interpretable.

| metric | pass 1 | pass 2 | delta | noise floor | verdict |
|---|---|---|---|---|---|
| **arity collisions** | 9 | **3** | **−6** | **0** | **real** |
| shared across files | 71 | 88 | +17 | ±14 | marginal |
| multi-goal rules | 150 | 129 | −21 | ±17 | marginal |
| alias candidates | 213 | 180 | −33 | ±58 | **inside noise** |
| naming violations | 18 | 27 | **+9** | ±17 | inside noise, but see §4 |
| fragmentation | 0.935 | 0.911 | −0.024 | — | small |
| vacuous negations | 7 | 1 | −6 | small counts | directionally good |
| link integrity | 0.960 | 0.965 | +0.005 | ±0.003 | marginal |
| dangling goals | 69 | 66 | −3 | ±7 | inside noise |
| coverage | 1.0 | 1.0 | 0 | 0 | stable |
| syntax errors | 0 | 0 | 0 | — | stable |
| reference F1 (chunk) | 0.973 | 0.973 | 0 | — | stable |
| reference precision | 0.983 | 0.991 | +0.008 | — | |
| reference recall | 0.963 | 0.955 | −0.008 | — | |
| clauses | 4,401 | 4,083 | **−318** | — | real shrinkage |
| rule heads | 542 | 526 | −16 | ±11 | |
| declared predicates | 880 | 838 | −42 | ±10 | |
| input slots | 442 | 381 | −61 | — | |

**Arity collisions are the only unambiguous win.** That metric sat at exactly 22 across
both halves of the null experiment, so it has a noise floor of zero on this corpus, and
9→3 is signal.

Everything else that improved did so by about as much as the pipeline moves on its own.
Reporting "shared predicates rose from 71 to 88" as a result of reconciliation would not be
defensible from one run against one run.

---

## 4. Problems, ranked

**1. Reconciliation merged only 1.8% of names.** 20 of 1,096. The mechanical pass proposed
213 pairs and the adjudicator called 23 of them `same`. 128 extra calls and ~19 minutes for
20 merges is poor value, and it is the main reason pass 2 does not justify itself.

**2. Reconciliation promoted rule-breaking names to canonical.** The surviving name of each
group is chosen purely by usage count, with no check against the naming rules. Three names
with an annex or article number baked in won and were then handed to all 125 calls as the
preferred form:

```
annex_3_ai_system        meets_requirements_art_31        annex_3_pnt_1_a
```

This is why naming violations rose 18→27. It is a ~5-line fix: rank rule-violating names
last when picking the survivor.

**3. One merge is semantically wrong.**

```prolog
alias(risk_management_system/1, required_risk_management_system/1).
```

That collapses *the thing* into *the obligation about the thing*. An earlier run flagged
this exact pair as arguable and the adjudicator called it `same`. Of the 20 merges, roughly
15 are clearly right, 1 is wrong, and a few are arguable — `must_adopt_in_accordance` →
`must_adopt` discards "in accordance with".

**4. Placeholder names doubled.** Predicates whose distinguishing part is a bare label
rather than subject matter: 8 in pass 1, 16 in pass 2, running to
`required_condition_a` … `required_condition_j`. These name a position in a list, which is
the same defect as baking in an article number: no other provision can ever reuse them.

**5. Repeated goals in rule bodies more than doubled**, 29→69 of ~900 rules — bodies like
`provider(P), provider(P), high_risk_ai_system(S)`. Harmless to execution, but it indicates
the model padding bodies rather than finding conditions.

**6. 150 non-discriminating rules remain in pass 1 (18.8%), 129 in pass 2 (17.1%).** Bodies
that type each head argument once and constrain nothing, so they restate the provision's
scope rather than its test. These score perfectly on every other check. Neither prompt fix
addressed this, and it is the largest remaining quality gap.

**7. 69 dangling goals and 442 input slots in pass 1.** Most input slots are legitimate —
whether a system is `real_time` is a question about the world, not the text — but 69 goals
resolve to nothing at all.

---

## 5. Prolog quality compared

Metrics do not settle this; the generated code does. Article 9 (risk management), same
article, both passes.

### Pass 1

```prolog
:- pred must_establish_risk_management_system/2, gloss('provider must establish ...').
:- pred must_implement_risk_management_system/2, gloss('provider must implement ...').
:- pred must_document_risk_management_system/2,  gloss('provider must document ...').
:- pred must_maintain_risk_management_system/2,  gloss('provider must maintain ...').
:- pred required_testing_for_risk_management_measures/1, gloss('...').

required_risk_management_system(S) :-
    high_risk_ai_system(S),
    ai_system(S).                     % redundant: high_risk_ai_system implies ai_system

must_establish_risk_management_system(P, S) :-
    provider(P),
    provider(P),                      % repeated goal
    high_risk_ai_system(S),
    ai_system(S).
```

Four near-identical predicate names, one per verb. Each is 38 characters and **can never be
reused by another article**, because the object is welded into the name. Redundant and
repeated goals in the bodies. But the names do state their subject matter
(`required_testing_for_risk_management_measures`), so they are readable in isolation.

### Pass 2

```prolog
must_establish(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_implement(Provider, risk_management_system(System)) :- ...
must_document(Provider,  risk_management_system(System)) :- ...
must_maintain(Provider,  risk_management_system(System)) :- ...

required_step_a(risk_management_system(System)) :- high_risk_ai_system(System).
required_step_b(risk_management_system(System)) :- high_risk_ai_system(System).
required_step_c(risk_management_system(System)) :- high_risk_ai_system(System).
required_step_d(risk_management_system(System)) :- high_risk_ai_system(System).
```

**Structurally much better.** `must_establish/2` is a general predicate that any article can
reuse with a different object; the object is a compound term rather than part of the name.
This is why pass 2 has 105 fewer invented predicates and 17 more shared ones — it is the
compound-term instruction working as intended. No repeated goals in this article.

**But the naming is worse.** `required_step_a` through `required_step_d` name the *position
of a point in a list*. Pass 1's `required_testing_for_risk_management_measures` says what it
is about; `required_step_b` says nothing and is unreusable and unreviewable.

### The trade-off, stated plainly

| | pass 1 | pass 2 |
|---|---|---|
| predicate **shape** | long bespoke names, one per article | general verbs + compound objects — **better** |
| predicate **naming** | states subject matter | more placeholders (`_step_a`, `_condition_j`) — **worse** |
| vocabulary reuse | 71 shared of 1,096 | 88 shared of 991 — **better** |
| arity consistency | 9 collisions | 3 — **better** |
| body hygiene | 29 rules with a repeated goal | 69 — **worse** |
| naming-rule violations | 18 | 27 — **worse** |
| coverage of content | 4,401 clauses, 880 predicates | 4,083 / 838 — **worse** |
| cost | 126 calls | 254 calls — **worse** |

Neither pass dominates. Pass 2 buys structural quality and pays for it in naming quality,
content volume and cost.

Both passes share the same unaddressed weakness: **a large share of rule bodies do not
test anything.** `must_establish(Provider, risk_management_system(System)) :- provider(P),
high_risk_ai_system(S).` is true of every provider and every high-risk system. It is
Article 9's *scope*, not Article 9's *test*. 18.8% of pass 1's rules and 17.1% of pass 2's
are like this by mechanical count, and the real figure is higher because the check is a
deliberate lower bound.

---

## 6. What this run says about the next step

**The arity win probably does not come from merging.** Reconciliation only ever merges
names of the same arity, so by construction it cannot fix an arity collision. The fall from
9 to 3 must be indirect: `signature_2.pl` *declares* each surviving name at a fixed arity,
so pass-2 calls are handed `required_risk_management_system/1` instead of guessing. The
mechanism that helped is **pinning**, not merging.

If that is right, most of the benefit is available for **zero LLM calls**: emit the pass-1
invented vocabulary with its arities fixed, no merging, and re-run. That is the cheapest
experiment available and it directly tests the hypothesis.

Open items, in order of expected value:

1. **Arity-pinning variant** — `signature_2.pl` as a pure, deterministic arity pin with no
   merging. Tests whether the 9→3 gain survives without the adjudication calls.
2. **Fix canonical ranking** (§4.2) — rank rule-violating names last. ~5 lines.
3. **Forbid placeholder names in the Phase B prompt** (§4.4) — `required_condition_a` names
   a list position, the same defect as an article number, and the prompt already forbids
   the latter.
4. **Attack the non-discriminating rules** (§4.6) — the largest quality gap, untouched by
   anything in this run, and the one that decides whether the output is a rule base or a
   restatement of scope.
5. **Repeat runs before trusting any further comparison.** The noise floor is as large as
   most of the effects being measured. One run against one run cannot settle the remaining
   questions.

### What is established, and what is not

**Established.** The pipeline runs the whole act in both configurations with no failed
calls, no truncations, complete coverage by construction, 99 slicer checks passing on every
run, and a program that loads in SWI-Prolog. Reference transcription against the corpus's
human annotation is F1 0.973 in both passes. The arity-convention and lexical prompt fixes
work.

**Not established.** That pass 2 is worth its cost. That reconciliation improves the
namespace by more than the pipeline's own variance. Whether pass 2's 7% content shrinkage
is consolidation or loss — that needs a side-by-side read of several articles, not a metric.

**Known limitation.** Both programs are structurally sound, fully traceable and queryable,
and roughly one rule in six restates a provision's scope instead of encoding its test. That
is the honest statement of what the naive approach produces.
