# Stage 2 results (2026-11-20)

Plan: `astra_plan.md`. Same prompt, same five texts, same settings as the study; only the
sample grew: Astra at minimal reasoning seeds 1 to 10 and Astra at medium reasoning
seeds 1 to 10, 50 outputs per arm. Spend for the stage: $7.54 (82 generation calls
$6.13, 20 GPT judge calls $0.95, 27 Sonnet adapter calls $0.47).

## Decision: medium reasoning is the frozen baseline for stage 3

| | astra minimal | astra medium |
|---|---|---|
| gate pass, 50 outputs | 96% | 96% |
| art_11 scenarios passed, mean of 10 seeds (of 26) | 5.9 | 7.8 |
| same, without the one output that does not load | 6.4 | 8.7 |
| range over seeds | 1 to 10 | 0 to 10 |
| std of pass rate | 0.085 | 0.111 |
| within-model answer agreement | 0.76 | 0.81 |
| cost per output, all texts | $0.054 | $0.090 |
| cost per passed scenario | $0.007 | $0.011 |
| completion tokens per output | 1,028 | 1,744 |

Medium wins on every norm the models can express at all except one, and that one is a
suite artefact (below). The form identity the report observed on three seeds holds on
ten: 7 of 10 medium seeds pass "the form the Commission establishes is the form the SME
must use", 1 of 10 minimal seeds does. Medium costs 1.7x per output and the same per
passed scenario within a factor of 1.5. The same norms are at zero for both.

## 1. Per norm over 10 seeds, art_11(1), LLM adapters

| norm | minimal: mean, seeds at zero | medium: mean, seeds at zero | reading |
|---|---|---|---|
| draw_up_before_entry | 0.00, 10 | 0.00, 10 | prompt problem |
| keep_up_to_date | 0.00, 10 | 0.00, 10 | prompt problem |
| demonstrate_compliance | 0.00, 10 | 0.00, 10 | prompt problem |
| notified_body_accepts_form | 0.17, 5 | 0.20, 4 | prompt problem (breach half) |
| provide_information | 0.07, 8 | 0.23, 3 | prompt problem (status half), stability (recipients) |
| annex_iv_minimum | 0.15, 7 | 0.40, 2 | prompt problem (breach half), stability (SME keeps Annex IV) |
| sme_must_use_form | 0.32, 1 | 0.62, 1 | stability |
| commission_form | 0.50, 1 | 0.73, 1 | stability (form identity) |
| sme_simplified_permission | 0.60, 1 | 0.80, 1 | stability |
| duty_bearer | 0.60, 4 | 0.10, 9 | suite artefact, see below |

Per scenario, seeds passing of 10 (minimal / medium), the ones that vary:

| scenario | min | med |
|---|---|---|
| form_established_is_form_the_sme_must_use | 1 | 7 |
| form_established_is_form_the_body_must_accept | 5 | 6 |
| information_duty_runs_to_both_recipients | 2 | 7 |
| sme_permitted_but_not_obliged_without_opt_in | 3 | 8 |
| simplification_never_removes_annex_iv | 3 | 8 |
| opt_in_is_per_system | 3 | 7 |
| start_up_above_sme_thresholds_not_permitted | 9 | 7 |
| large_provider_not_permitted, commission_duty_is_unconditional, non_sme_has_no_form_duty | 9 | 9 |

Everything else is 0 of 10 on both arms: every `violation/2` and `status/3` query, and
the pre-launch duty (no module derives a duty before a documentation record exists).

Three kinds of result, which is what stage 3 needs:

- **Prompt problems** (0 of 10 on both arms): breach detection, deadlines as events,
  update triggers, open-textured status, duty before launch. No seed produces them, so
  no amount of sampling will. Stage 3 change 1 (deontic layer) and change 2 (deadline
  events) target these.
- **Stability problems** (pass on some seeds): form identity, opt-in per system, both
  recipients, SME keeps Annex IV. The model knows these; it writes them inconsistently.
  Stage 3 change 4 (one term per object) and change 3 (duty-bearer) target these.
- **Solved**: the Commission duty, "large provider not permitted", "non-SME has no form
  duty", and start-ups as a subset of SMEs at 9 of 10 on minimal.

## 2. Gate, 100 Astra outputs

96% on both arms. Each arm loses one output to load errors (seed 5 on art_11 for both,
seed 4 on rct_34 for medium: exports without a clause), and minimal loses one to
non-termination (rct_135 seed 3). The output that fails to load is also the scenario
outlier: 1 of 26 and 0 of 26. The gate predicts the scenario floor and should be
reported alongside it, never averaged into it.

Position references inside terms (`article_11(1)`, `chp_3`, `article(11, 1)`): 20 of 50
minimal, 19 of 50 medium. Two in five Astra modules guess where the text sits. The
prompt forbids it and the model cannot know it, so this is stage 3 change 5.

## 3. Judge against scenarios

GPT-5.4 judged the within-model pairs for seeds 1 to 3 (the `--max-seeds` cap). On the
six art_11 pairs where both measures exist:

| pair | judge label, sentence agreement | scenario answer agreement |
|---|---|---|
| minimal s1~s2 | same, 1.00 | 0.73 |
| minimal s1~s3 | mostly_same, 0.71 | 1.00 |
| minimal s2~s3 | same, 1.00 | 0.73 |
| medium s1~s2 | mostly_same, 0.86 | 0.67 |
| medium s1~s3 | mostly_same, 0.86 | 0.97 |
| medium s2~s3 | same, 1.00 | 0.70 |

They do not track. The judge reads whether both modules represent a sentence; the
scenarios read whether both modules give the same answer to a question. Two modules
that both "fully capture" sentence 6 can still disagree on whether a non-opted SME must
use the form. The judge is a coverage instrument, not an equivalence instrument, and the
report should say so. For stage 3 the judge is not needed: coverage is also visible in
the per-norm table as "unanswerable", and the scenario numbers carry the comparison.

Judge summary for the record (GPT, medium): within-model agreement astra 0.71 (7 same,
5 mostly, 3 different over 15 pairs), astra-medium 0.75 (5, 10, 0); coverage 0.87 and
0.85. Across models on art_11 with 7 sentences: 0.31, no pair "same".

## 4. Other texts

Only art_11 has a scenario suite, so the other four texts are covered by the gate and
the symbolic metrics. Within-model Jaccard over predicate names at 10 seeds: minimal
0.37, medium 0.29 (3 seeds in the study: 0.37). Medium is less stable in naming and more
stable in answers, which is one more reason to score answers, not names.

## Suite fixes before stage 3

1. `duties_attach_only_to_own_systems` passes vacuously when a module derives no duty at
   all (both queries expect false). Add `obligation(acme, draw_up(s1), _)` expected true
   to the same scenario. This is why minimal "wins" the bearer norm 6 to 1: six minimal
   seeds derive no draw-up duty without a documentation record. The reference passes the
   fixed scenario unchanged.
2. The 12 interpretive expected answers still have no legal review.

## Not done

The hand read of five outputs per text, looking for failure kinds the suite does not
catch, has not been done. The CSV export (`src/export_csv.py`) is there to pick them.
