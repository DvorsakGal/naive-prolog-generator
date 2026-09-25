# Naive Prolog Generator — Task Overview & Plan

## 1. The task

Build a **naive** LLM-driven pipeline that turns the annotated legal-act chunks in
`20260922T172249_32024R1689_3f672e3e/units/` into a **single Prolog ontology file**.

"Naive" is a hard constraint, per `requirements-overview.md`:

- The LLM gets **one prompt + the raw unit contents**. Nothing else.
- No pre-extracted schema, no RAG, no symbolic pre-parsing, no iterative refinement loop
  that feeds analysis back in. The orchestration only **chunks, calls, and concatenates**.
- Any model will do — this is a baseline to measure better approaches against.

## 2. What the data actually is

The folder is a **1-hop reference closure** around CELEX `32024R1689` (the EU AI Act),
produced by a Formex parser + manual annotation (`manifest.json` documents the run,
counts, and self-checks — all green).

| Fact | Value |
|---|---|
| Unit files total | 624 (~25 MB) |
| Belonging to the AI Act itself | 383 |
| External referenced acts (GDPR, MDR, Treaties, …) | 241 |
| **Non-overlapping AI Act leaf units** | **285 (~515 KB ≈ 130k tokens)** |
| Inline `<ref>` occurrences in those leaves | 1,638 (493 distinct targets) |
| …of which point back into the AI Act | 1,252 |
| Leaf units by kind | 230 `art`, 43 `anx`, 12 `chp` |
| Units with no refs at all | 78 |

### Shape of one unit

```xml
<unit id="celex:32024R1689/oj#art_16" node="…" bind="exact"
      start="304847" end="306499" version="oj" celex="32024R1689"
      doc="celex:32024R1689/oj" run="…" source_sha256="…">
Article 16 Obligations of providers of high-risk AI systems
Providers of high-risk AI systems shall:
(a) ensure that their high-risk AI systems are compliant with the requirements
    set out in <ref id="celex:32024R1689/oj#chp_3/sec_2"/>;
(c) have a quality management system in place which complies with
    <ref id="celex:32024R1689/oj#art_17"/>;
…
</unit>
```

The `id` is a **stable, machine-readable address** (`celex:<act>/oj#art_16/par_2/pnt_g`)
and every cross-reference in the prose has been resolved to one. That is the manual
annotation value: the LLM never has to guess what "referred to in Annex III" means.

### Three gotchas the orchestration must handle

1. **Units overlap.** `celex:32024R1689/oj` (628 KB, the whole act), `#chp_3` (121 KB),
   and `#art_16` all exist as separate files and contain each other. Feeding all 383
   would triple-count everything. → Iterate over the **285 leaves** only.
2. **Filenames are URL-encoded** (`celex:32024R1689%2Foj#art_16.xml`). Decode to recover
   the `id`; the `id=` attribute is authoritative either way.
3. **Not every ref resolves locally** — 54 distinct targets are outside the closure, plus
   placeholders like `celex:32024R1689/oj#anx_?`. Emit them as facts anyway; just don't
   assume a corresponding unit exists.

## 3. Proposed approach

```
units/ ──► select leaves ──► 1 LLM call per unit ──► .pl snippet ──► merge ──► ontology.pl
              (deterministic)      (the naive part)     (per unit)    (dedupe)      │
                                                                                    ▼
                                                                          swipl consult check
```

**Step 1 — Selection (deterministic, no LLM).**
Walk `units/`, keep `celex:32024R1689/oj#…`, drop any unit that is a prefix-ancestor of
another. 285 files. External acts are **out of scope for v1** — they are context the AI
Act points *at*, not content we are modelling. (Optional flag to include them later.)

**Step 2 — One prompt, one unit, one call.**
A single fixed system prompt describing: the target Prolog dialect, how to name atoms
(derive them from the `id`, e.g. `'celex:32024R1689/oj#art_16'` → `art_16`), the small
suggested predicate vocabulary, and "output only Prolog, no prose". User message = the
raw XML, verbatim. That's it — this is deliberately the whole of the intelligence.

**Step 3 — Suggested predicate seed** (a *suggestion* in the prompt, not enforced):

```prolog
unit(art_16, 'celex:32024R1689/oj#art_16', article).
title(art_16, 'Obligations of providers of high-risk AI systems').
references(art_16, art_17).
obligation(art_16, provider_of_high_risk_ai_system, 'have a quality management system in place').
definition(ai_system, 'a machine-based system that …').
applies_to(art_16, provider).
```

Letting the model drift from this is *informative* — schema incoherence across 285
independent calls is exactly the weakness a naive baseline should expose.

**Step 4 — Orchestration.** Async with a concurrency cap, one snippet written per unit to
`out/units/<safe_id>.pl`, retry on API/parse failure, resume by skipping existing files,
JSONL run log (unit id, model, tokens, cost, retries, duration).

**Step 5 — Merge.** Concatenate in document order with `% ==== <id> ====` banners, dedupe
identical facts, emit `:- discontiguous` for every predicate seen, write `ontology.pl`.

**Step 6 — Validate (mechanical only).** `swipl -g "consult('ontology.pl')"` for syntax;
then a small report: facts emitted, distinct predicates/arities, units that produced
nothing, and how many `references/2` facts match the ground-truth `<ref>` edges we can
extract for free from the XML. That last one is a real, cheap accuracy signal.

## 4. Suggested layout

```
naive_prolog_generator/
├── PLAN.md
├── src/
│   ├── select_units.py     # leaf selection, id decoding
│   ├── prompt.py           # the single system prompt (the whole "method")
│   ├── generate.py         # async orchestration, retry, resume
│   ├── merge.py            # concat + dedupe + discontiguous
│   └── validate.py         # swipl consult + coverage report
├── out/units/*.pl
├── out/ontology.pl
└── out/run.jsonl
```

Python 3.12 venv already present (pip only — will need an SDK + `python-dotenv`).
SWI-Prolog needed for validation (`brew install swi-prolog`), optional if we skip step 6.

## 5. Decisions I'd like confirmed before coding

1. **Scope** — AI Act leaves only (285 units, my recommendation), or all 624 including
   external acts?
2. **Model / provider** — requirement says "any model". I'd default to Claude via the
   Anthropic SDK unless you have a provider already wired up elsewhere.
3. **Chapter leaves** — 12 `chp_*` units are leaves only because their children weren't
   annotated separately; the largest is 121 KB. Split them, or pass whole?
4. **Prolog dialect** — plain SWI facts as above, or do you want it to lean toward an
   OWL-ish shape (`class/1`, `subclass_of/2`, `property/3`) for later comparison?

## 6. Explicitly *not* doing (keeps it naive)

No reference graph pre-resolution, no two-pass schema harmonisation, no self-critique
loop, no few-shot examples harvested from the corpus, no post-hoc predicate renaming.
Every one of those is a candidate for the *next*, non-naive iteration — and the point of
this build is to have something to compare them against.
