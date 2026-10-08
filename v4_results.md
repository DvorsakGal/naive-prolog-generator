# v4 — first full-act run: what it produced and what I got wrong

The first run of the pipeline described in [`README.md`](README.md), over the whole AI
Act. Two passes were executed. **Pass 1 did what it was designed to do. Pass 2 did not,
because of a mistake in the prompt I wrote for it** — and that failure turned out to be
the most informative thing in the run.

Design rationale, including the options that were rejected before any of this was built:
[`v4_plan.md`](v4_plan.md).

```
Phase A        1 call      17,200 chars (Article 3, 68 definitions)
Phase B pass 1 125 calls   571,661 prompt + 503,226 completion tokens   ~24 min
Phase B2       1 call      46,855 prompt + 2,049 completion tokens        ~9 s
Phase B pass 2 125 calls   599,786 prompt + 530,771 completion tokens   ~25 min
                           ───────────────────────────────────────────
               252 calls   0 failures · 0 truncations · 0 rate limits
```

---

## 1. Pass 1: the infrastructure holds at full scale

| check | result | what it was at 5 articles (v3) |
|---|---|---|
| **coverage** | **125/125 work units**, zero missing | not measurable — selection silently dropped 12 articles |
| **slicer validation** | **99/99 slices match the corpus byte-for-byte** | n/a |
| syntax | **0 errors**, 46 warnings, 23 singleton | 0 errors, 37 singleton |
| link integrity | **0.985** (2,226/2,261 goals) | 1.0 (109/109) |
| reference graph | **P 0.989 · R 0.952 · F1 0.970** | P 1.0 · R 0.85 · F1 0.919 |
| provenance | 808/809 rule heads | 43/43 |
| clauses · rule heads · declared | 4,691 · 809 · 1,235 | — · 43 · 110 |

Three things are worth pulling out.

**Coverage is complete by construction, and that is new.** Every previous version
derived its work list from `units/`, a reference closure, and could not distinguish
"this provision produced no rules" from "this provision was never shown to the model".
Deriving the list from the act's own headings closed that, and the slicer proves itself
on every run against 99 independent cases.

**The reference score got better at 25× the scope**, which was not the expectation.
Recall rose from 0.85 to 0.952 and the `strict` variant — which additionally requires
`references/2`'s first argument to be the unit id — went from 0.783 to 0.952, converging
with the chunk score. That is a side effect of dropping the closure: when the work unit
*is* the article, article-level unit ids are exactly what the model attributes to, so
the attribution penalty that depressed v3's strict score disappeared.

**The singleton-variable prompt line worked.** v3 produced 37 singleton warnings over 5
articles; pass 1 produced 23 over 125. One line of prompt ("every variable should be
used at least twice, or be written with a leading underscore") for a ~20× reduction in
rate.

---

## 2. Pass 1: three real defects

### 2.1 Arity collisions — 22, and they are new

v3 reported zero at 5 articles. At 125 they appear, and they are a genuine connectivity
failure rather than a cosmetic one.

```
must_inform                       [2, 3, 5]
required_compliance               [1, 2]
must_notify                       [2, 3]
required_annual_report            [2, 3]
condition_a / condition_b / condition_c  [1, 2]   ... 22 in total
```

`must_inform` is used by 16 different rule files, and three of them disagree about what
its arguments are:

```prolog
must_inform(NB, notifying_authority) :- ...                               % art_33
must_inform(NB, NA, quality_management_system_approval) :- ...            % art_45
must_inform(Importer, Provider, Representative, Authority, System) :- ... % art_23
```

In Prolog `must_inform/2`, `must_inform/3` and `must_inform/5` are **three unrelated
predicates that happen to share a spelling**. A query for one never sees the others. The
name looks shared and is not, which is worse than an obvious mismatch because nothing
errors.

The cause is a gap in the Phase B prompt. It forbids re-using a *signature* predicate at
a different arity, and says nothing about consistency of arity among the predicates the
calls invent. Each call independently decided how many arguments "inform" needs.

Note that **reconciliation cannot fix this**: it only merges names of the same arity, by
design, because merging across arities would be merging different predicates.

### 2.2 Non-discriminating rule bodies — 150 (17.8%)

The defect [`v4_plan.md` §5.1](v4_plan.md) predicted, now measured. These load cleanly,
resolve every goal, carry provenance, and use the frozen vocabulary correctly:

```prolog
required_risk_management_system(P, S) :- provider(P), high_risk_ai_system(S).
required_identification_and_analysis_of_risks(P, S) :- provider(P), high_risk_ai_system(S).
required_estimation_and_evaluation_of_risks(P, S) :- provider(P), high_risk_ai_system(S).
```

Each body types its two arguments and constrains nothing. The rule is true of every
provider and every high-risk system, so it restates Article 9's *scope* rather than the
test Article 9 imposes. **Every other check in the report scores these perfectly**, which
is exactly why the check had to exist before the run.

The raw count was 399, and reporting that number would have been misleading: 249 of them
are single-goal bodies like

```prolog
operator(O) :- provider(O).
operator(O) :- product_manufacturer(O).
```

which is Article 3(8)'s type union written as clauses — correct Prolog, not a defect. The
check now reports `multi_goal` (150, the defect) separately from `single_goal` (249,
mostly legitimate) instead of folding them together and roughly doubling the figure with
correct cases.

### 2.3 Names with an article or annex number in them — 39

Up from 2 at 5 articles, so this scaled badly:
`condition_art_51_par_1_unp_1_pnt_a_applies`, `log_referred_in_art_12_par_1`,
`non_compliance_with_art_60_61`.

But the rule it violates may be partly wrong. `annex_3_ai_system` and `listed_in_annex3`
refer to **Annex III as such** — the annex *is* the referent, not a shorthand for a
concept that has a better name. The prompt's prohibition is clearly right for article
numbers (`prohibited_art_5_1_c` names a location instead of a subject) and arguably wrong
for annex-referential predicates. Worth narrowing rather than enforcing harder.

---

## 3. Pass 2: the reconciliation call declined the task

This is the mistake, and it is mine.

`reconcile.py` handed the model all 1,469 invented predicates with their glosses and
usage counts — 46,855 prompt tokens — and asked which denote the same thing. The model
spent 7,386 thinking tokens and returned exactly one line:

```prolog
% No duplicate predicate names with identical arity were identified; therefore no alias facts are required.
```

`signature_2.pl` therefore contains **zero Prolog**. It is entirely comments. The 125
pass-2 calls ran against `signature.pl` plus about 300 tokens of comment stating that
nothing had been merged.

### Why it failed

**I made the caution section the strongest part of the prompt.** It carried four worked
`DIFFERENT` examples against one `SAME`, plus *"A wrong merge is worse than a missed
one"* and *"When the glosses do not make it clear that two names denote the same thing,
leave them separate."* That reasoning is correct — a wrong merge is invisible and
corrupts the program — but I built a free escape hatch and weighted it more heavily than
the task. The model took it.

**And the task shape was wrong.** "Find the duplicates among these 1,469 names" is
open-ended and has a costless null answer. The model's own wording — *"no duplicate
predicate names with identical arity"* — suggests it read "Only merge names with the SAME
arity" as the primary filter and went looking for literal duplicate spellings, which of
course there are none of.

The irony is that `v4_plan.md` argued for the right division of labour and then built the
wrong one. The plan's case was that string similarity should not *decide* merges because
the judgement is semantic. It does not follow that the model should also *find* the
candidates. The linter already computes 410 candidate pairs with glosses and a modality
guard; the model should have been adjudicating those, not searching a 1,469-name list.

---

## 4. The accidental control arm — the run's most useful result

Because `signature_2.pl` was empty of Prolog, pass 2's only real input change was comment
text. So pass 2 is not a test of reconciliation. **It is a resample of pass 1 under
identical conditions**, and every delta below is pipeline noise at temperature 0:

| metric | pass 1 | pass 2 | delta |
|---|---|---|---|
| shared across files | 56 | 70 | **+14** |
| alias candidates | 410 | 352 | **−58** |
| naming violations | 39 | 22 | **−17** |
| multi-goal rules | 150 | 167 | **+17** |
| dangling goals | 33 | 40 | +7 |
| vacuous negations | 2 | 4 | +2 |
| fragmentation | 0.962 | 0.952 | −0.010 |
| link integrity | 0.985 | 0.982 | −0.003 |
| rule heads | 809 | 798 | −11 |
| declared predicates | 1,235 | 1,225 | −10 |
| input slots | 612 | 543 | −69 |
| arity collisions | 22 | 22 | **0** |
| coverage | 1.0 | 1.0 | 0 |

**The noise floor is large, and it is large on exactly the metrics the experiment was
meant to move.** ±14 on shared predicates, ±58 on alias candidates, ±17 on naming
violations — from unchanged inputs. Temperature 0 reduces variation; it does not remove
it, and over 125 independent calls the variation accumulates.

Two consequences:

1. **"Naming violations fell from 39 to 22" is not an improvement.** Reported without
   knowing the noise floor it would have looked like one, and it would have been wrong.
2. **Any future comparison has to beat this floor to mean anything.** A reconciliation
   pass that moves `shared_across_files` from 56 to 70 has demonstrated nothing. One run
   against one run is not enough resolution for a change this size; either the effect
   must be much larger than the floor, or the comparison needs repeats.

Only `coverage`, `arity collisions` and the deterministic slicer checks were perfectly
stable — the first two because they are structural, the third because it has no LLM in it.

This is the kind of thing a null experiment is for, and it was obtained by accident. It
would have been worth running deliberately.

---

## 5. Two linter bugs found and fixed during the run

Both were in the parser, not the output — `swipl` loaded the file with zero errors either
way, so nothing but my own checker was ever confused.

| bug | effect | fix |
|---|---|---|
| `split_clauses` dropped whole comment *lines* but not **trailing** `%` comments, so `provider(Provider), % Provider appears at least twice` had its comment text scanned as three body goals (`appears`, `at`, `least`) | 7 phantom dangling goals; link integrity read 0.981 instead of 0.985 | strip from an unquoted `%` to end of line, quote-aware so `'100% of cases'` survives |
| `false/0` was missing from the builtins set | a rule written `head :- ..., false.` — valid, and the idiomatic way to write a condition that must never hold — was reported as a dangling reference | added `false` and the other common ISO builtins to `CONTROL` |

Recorded because each one distorted a headline number, and because the first is a
reminder that "the model wrote invalid Prolog" and "my parser mis-read valid Prolog" look
identical in a report.

---

## 6. What this run establishes, and what it does not

**Established.** The pipeline runs the whole act — 112 articles and 13 annexes, 125
calls, no failures — and produces a syntactically clean, fully traceable, queryable
Prolog program with coverage complete by construction and verified against the corpus 99
ways on every run. Structural quality held at 25× v3's scope, and the reference
transcription improved. Phase A's frozen vocabulary demonstrably does its job.

**Not established.** Nothing about whether reconciliation helps: that experiment did not
run. And, now measurably, nothing that depends on a single-run difference smaller than
about ±15 on the namespace metrics.

**Open.** Three things, in the order they should be addressed:

1. **Reconciliation, rebuilt as pair adjudication.** Feed the model the 410 candidate
   pairs the linter already computes, batched, and require a `same`/`different` verdict
   on every row — the regex proposes, the model adjudicates. This removes the null
   answer, drops the prompt from 46.8k to roughly 15k tokens, and matches the division of
   labour `v4_plan.md` argued for.
2. **Arity collisions.** A Phase B prompt fix: pin the argument convention for each
   naming form, so `must_<verb>` always takes the same shape. This changes the Phase B
   prompt and therefore forces a full re-run of both passes.
3. **The noise floor.** Decide how to handle it before drawing a conclusion from any of
   the above. The cheapest option is to treat pass 2 as the baseline for the next
   comparison, since it is a sample from the same distribution with reconciliation
   switched off.
