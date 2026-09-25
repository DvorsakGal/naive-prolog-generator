# Results

Full run over all 285 AI Act leaf units. Model `gpt-oss:120b-cloud`, temperature 0,
concurrency 3, **26.6 minutes**, 419k prompt + 372k completion tokens, **0 failures**.

Reproduce with `./run.sh`.

## Headline numbers

| | |
|---|---|
| Units processed | **285 / 285** (no failures, no retries exhausted) |
| `swipl` consult | **clean** — 0 errors, 0 warnings |
| Facts emitted | 2,468 (66 exact duplicates removed at merge) |
| Distinct predicates | 18 |
| Reference graph vs ground truth | **precision 0.970 · recall 0.949 · F1 0.960** |
| Units with a perfect reference set | 274 / 285 |

## Predicate distribution

```
references/2   1174      title/2         44      condition/3       3
obligation/3    445      prohibition/3   32      permission/3      3
unit/3          403      applies_to/2    24      deadline/3        2
condition/2     123      exempt/3        13      power/3           1
definition/2     88      penalty/3       12      empowered/3       1
requirement/3    85      deadline/2      11      exemption/3       4
```

## Finding 1 — the reference graph comes out very well

The one part of the output with an objective ground truth scores **F1 0.960**. Given that
every call sees one chunk in isolation, with no index of the act and no memory of the
other 284 calls, the model recovers the annotated cross-reference structure almost
completely. The `<ref>` markup does the heavy lifting: the model is transcribing resolved
references, not resolving them.

A second, stricter score additionally requires the model to have named the right *source*
atom, and reads F1 0.834. That gap is not error — container units correctly attribute a
reference to the sub-provision that carries it (`chp_3/sec_4` emits
`references(art_36_par_3, ...)`), which the strict score cannot credit. It is reported for
information only.

## Finding 2 — one ambiguous line in the prompt cost 4.5 F1 points

The first run scored chunk-level F1 0.915. Inspecting the failures showed nearly all of
them were a single underspecified naming rule, failing in *both* directions: the model
sometimes wrote `art_41` for `celex:32016L0680/oj#art_41` (silently claiming the AI Act
has an Article 41 saying what a different Directive says), and sometimes wrote the fully
qualified `'celex:32024R1689/oj#art_43/par_1'` for a plain same-act reference.

Making the rule explicit — bare atoms only within the citing act, everything else stays
fully qualified — and regenerating:

| | before | after |
|---|---|---|
| precision | 0.941 | **0.970** |
| recall | 0.890 | **0.949** |
| F1 | 0.915 | **0.960** |
| units imperfect | 32 | **11** |

In a naive pipeline the prompt is the only lever, so this is the whole development loop:
score → read the failures → tighten one line → re-run. `src/compare.py` diffs two runs.

## Finding 3 — the schema does not converge, and that is the point

18 predicates is a reasonable-looking number, but it hides real instability.

**The actor vocabulary is unnormalised.** Across `obligation/3`, `prohibition/3` and
`requirement/3` there are **115 distinct actor atoms, 75 of which appear exactly once**:

```
provider (145), providers (1), prospective_provider (1), provider_or_prospective_provider (1),
  provider_or_prospective_provider_high_risk_law_enforcement_migration_asylum_border_control (1)
authorised_representative (10), authorized_representative (1), authorised_representative_details (1)
notifying_authority (15), notifying_authorities (2)
market_surveillance_authority (14), market_surveillance_authorities (4),
  national_market_surveillance_authorities (1), market_surveillance_authority_staff (1)
```

Singular/plural splits, a British/American spelling split, and ad-hoc compound actors
carrying an entire scope condition inside the atom name. A query for
`obligation(_, provider, _)` silently misses every provision filed under one of the
variants.

**Predicate choice is unstable even at temperature 0.** Between the two runs — identical
model, identical settings, a prompt change touching only the *naming* section — the
vocabulary shifted: `exempt/3` partly became `exemption/3`, `action/3` and `subpoint/3`
disappeared, `power/3` and `empowered/3` appeared, `applies_to/2` fell 41 → 24 and
`title/2` 58 → 44. Nothing in the prompt asked for any of that.

**Arity drifts too**: `condition/2` and `condition/3`, `deadline/2` and `deadline/3`
coexist for the same concept.

This is the substantive result. The reference graph scores well because the annotators
already resolved it; everything the model has to *invent* — the actor ontology, the
predicate set, the arities — fragments across 285 independent calls, because nothing in
the architecture lets call 200 know what call 3 decided. **That quantifies exactly what a
non-naive method has to supply**, and it is a floor for the next iteration to beat.

## Finding 4 — output volume tracks input granularity

`unit/3` appears 403 times for 285 units. The surplus is the 12 chapter-sized leaves (up
to 36 KB), where the model correctly emits facts for the provisions inside the container.
But it covers them thinly: a chapter yields far fewer facts per KB than a fine-grained
article does. Passing chapters whole was a deliberate choice (DECISIONS.md D3) — the
consequence is measurable in `out/run.jsonl`, which logs input bytes and output lines per
unit.

## Operational note

Ollama's cloud endpoint returns `429` above ~4 concurrent requests: at `--concurrency 8`,
17 of the first 40 units failed; at `--concurrency 3`, zero failed across 285 units in two
full runs. The orchestrator treats 429 as a pacing signal — honours `Retry-After`, backs
off with jitter, and does not spend one of the unit's retries on it.

## Where this goes next

Ranked by expected gain, all deliberately excluded from the baseline:

1. **Normalise the actor vocabulary** — the single largest quality defect. A second pass
   over the collected atoms, or a fixed actor list supplied in the prompt.
2. **Fix the predicate schema** — declare the predicate set and arities up front instead
   of suggesting them.
3. **Split container units** before generation, so chapters get article-level treatment.
4. **Feed definitions as context** — Article 3's 68 definitions are generated in isolation
   and never reach the calls that use those terms.
