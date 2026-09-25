# Design Decisions

Decisions taken before implementation, with the reasoning behind each. Companion to
[`PLAN.md`](PLAN.md).

---

## D1 — Scope: AI Act leaf units only (285 of 624)

**Decision.** Generate Prolog from the 285 non-overlapping leaf units of
`celex:32024R1689` (the AI Act). Exclude the 241 external-act units and the 98 AI Act
container units. External acts are reachable via a `--include-external` flag but are off
by default.

**Why — three independent reasons, any one of which is sufficient:**

### 1. Container units would triple-count the corpus

The 383 AI Act units are **not a partition — they nest**. All three of these are separate
files, and each contains the next:

```
celex:32024R1689%2Foj.xml            628 KB   the entire act
celex:32024R1689%2Foj#chp_3.xml      121 KB   Chapter III, containing Articles 8-15
celex:32024R1689%2Foj#art_16.xml       1.6 KB Article 16
```

Feeding all 383 to the LLM means Article 16's text arrives three times, in three different
contexts, producing three independent and almost certainly **mutually inconsistent** sets
of Prolog facts for the same legal provision. The merged ontology would then contain
contradictory arities and predicate names for one article, with no principled way to pick
a winner — and a naive pipeline is not allowed a reconciliation pass to fix it.

Prefix-leaf selection (`keep X unless some other unit id starts with X + "/"`) yields a
**clean partition**: 285 units, every provision exactly once, no gaps. It is also purely
mechanical — no LLM, no heuristics, nothing that compromises naivety.

### 2. External acts are referenced context, not subject matter

The 241 external units exist because `hops=1` in `manifest.json` — the extractor pulled in
every act the AI Act points at (GDPR, the Medical Devices Regulation, the Treaties, and
~138 more). They are the *targets* of references, not the thing we were asked to model.

Including them changes the deliverable from "an ontology of the AI Act" to "a partial,
arbitrarily-truncated ontology of 141 EU legal instruments" — because we only have those
acts to 1 hop, so their own internal references dangle. Worse, they dominate by volume:

| | units | bytes |
|---|---|---|
| AI Act leaves | 285 | 515 KB |
| External acts | 241 | ~23.8 MB |

**98% of the corpus bytes are external acts.** Including them makes the run ~45× more
expensive and buries the actual subject matter under supporting material. The `<ref>`
edges pointing at them are preserved in the output regardless — we emit
`references(art_16, 'celex:32016L2102/oj')` whether or not that act's text was processed,
so nothing is lost from the AI Act's own model.

### 3. It keeps the baseline honest and cheap

At 285 units / ~515 KB (~130k input tokens) a full run is a few minutes and effectively
free on local-ish infrastructure, so the pipeline can be re-run freely as the prompt is
tuned. That matters more than it sounds: the *only* lever in a naive pipeline is the
prompt, so iteration speed on that one lever is the whole development loop.

**What we give up.** Cross-act semantic relations — e.g. that the AI Act's "risk
management system" relates to GDPR Article 35's "data protection impact assessment" —
cannot be inferred, only pointed at. That is an acceptable and explicitly-noted limitation
of the baseline, and a clear target for the next iteration.

---

## D2 — Model: `gpt-oss:120b-cloud` via local Ollama

**Decision.** Default to `gpt-oss:120b-cloud` over Ollama's local HTTP API
(`http://localhost:11434`). No API key needed. Model is a single `--model` flag away from
changing.

**Why.** The requirement says *"this can be any model"* — the naivety of the method, not
the strength of the model, is what is under test. Verified working in this environment:

- `ollama list` shows both `gpt-oss:120b-cloud` and `gpt-oss:20b-cloud` available
- A round-trip to `/api/chat` returns in ~0.6 s
- The response separates reasoning into a `thinking` field, leaving `content` clean —
  which removes an entire class of output-parsing failure for free

`20b-cloud` is available as a cheaper/faster comparison point via `--model`; running both
and diffing the ontologies is a useful sensitivity check on how much of the result is
method versus model.

**Operational note — rate limits.** Ollama's cloud endpoint returns `429 Too Many
Requests` above roughly 4 concurrent requests (measured: 17 failures in the first 40 units
at `--concurrency 8`; zero at `--concurrency 3`). The orchestrator therefore treats 429 as
a *pacing* signal rather than a unit failure — it honours `Retry-After`, backs off
exponentially with jitter, and does **not** consume one of the unit's `--retries`, which
are reserved for genuine errors. Default concurrency is 3; `--max-throttle` bounds the
waiting so a sustained outage still terminates.

**Why not a paid API.** No keys present, and nothing about this task needs frontier
capability. Spend the budget on the *next* iteration, where the method actually matters.

---

## D3 — Chapter leaves passed whole (no splitting)

**Decision.** The 12 `chp_*` units that survive leaf selection are sent to the LLM
unsplit, including the 121 KB `#chp_3`.

**Why.** These are leaves precisely because the annotators did not break them down
further — splitting them ourselves would mean writing a structural parser for legal text,
which is exactly the kind of preprocessing intelligence that "naive" forbids. We honour
the annotation as given. `gpt-oss:120b` has the context window for it; the practical
consequence is simply that these units yield sparser, shallower facts per page of text
than the fine-grained articles do. **That degradation is a finding, not a defect** — it
shows the method's sensitivity to input granularity, which is precisely what a baseline
exists to measure.

Mitigation: the run log records input size per unit, so the correlation between unit size
and facts-per-KB can be read straight off the results.

---

## D4 — Prolog dialect: plain SWI-Prolog ground facts

**Decision.** Flat ground facts, no rules, no OWL/RDF layer.

```prolog
unit(art_16, 'celex:32024R1689/oj#art_16', article).
title(art_16, 'Obligations of providers of high-risk AI systems').
references(art_16, art_17).
obligation(art_16, provider, 'have a quality management system in place').
definition(ai_system, 'a machine-based system that ...').
```

**Why.** Facts are the lowest-assumption representation: they impose no class hierarchy,
no ontological commitments, and no structure the LLM has to be coached into. A single
`consult/1` validates the whole file, and rules can be layered on top later without
regenerating anything. An OWL-ish shape (`class/1`, `subclass_of/2`) would require the
prompt to teach a modelling discipline — pushing method intelligence into the prompt and
undermining the baseline.

The predicate seed above is offered in the prompt as a *suggestion*, deliberately not
enforced. **Where the model drifts from it across 285 independent calls is the single most
informative output of this whole exercise** — it quantifies exactly how much schema
coherence a non-naive approach would need to supply.

---

## D5 — Evaluation against the free ground-truth reference graph

**Decision.** Validate mechanically only: `swipl -g consult` for syntax, plus a coverage
report scoring emitted `references/2` facts against the `<ref>` edges extracted directly
from the XML.

**Why.** The manual annotation already resolved every cross-reference in the prose to a
stable id — 1,638 ref occurrences across the 285 leaves, 493 distinct targets. That is a
**complete, free, objective ground truth** for one slice of the ontology, available
without a human evaluator or an LLM judge. Precision/recall on the reference graph is a
genuine number, not a vibe, and it is directly comparable across prompt revisions, models,
and future non-naive methods.

No LLM-as-judge in the pipeline: it would add cost, non-determinism, and a second model's
opinions to what is supposed to be a clean baseline measurement.

---

## D6 — Orchestration does no thinking

**Decision.** The orchestrator only selects, chunks, calls, retries, and concatenates.
Explicitly absent: reference-graph pre-resolution, two-pass schema harmonisation,
self-critique loops, few-shot examples harvested from the corpus, post-hoc predicate
renaming or alignment.

**Why.** Each of those is a real improvement — and each is a *different experiment*. If
they are folded into the baseline, the baseline no longer measures what the requirement
asked it to measure, and there is nothing left to compare the improvements against. They
are catalogued in `PLAN.md` §6 as the roadmap for iteration two.

The one deliberate exception is **leaf selection** (D1), which is mechanical
de-duplication of overlapping inputs rather than comprehension of them. Without it the
pipeline doesn't produce a coherent artifact at all.
