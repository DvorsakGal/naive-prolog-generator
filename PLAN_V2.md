# Plan v2 — Low-level FOL

> **Status: implemented and run on the Article 5 slice.**
> Commands: [`RUNBOOK_V2.md`](RUNBOOK_V2.md) · Findings: [`RESULTS_V2.md`](RESULTS_V2.md)
> Both §6 decisions are implemented and stated verbatim in `src/prompt_v2.py`.

v1 produced a **catalogue** of provisions. v2 must produce a **program**. That single
change drives everything below.

```prolog
% v1 — the legal content is trapped in an opaque string. Nothing can reason over it.
obligation(art_5_par_6, national_market_surveillance_authorities,
           'shall submit annual reports to the Commission on such use').

% v2 — decomposed into primitives, executable, queryable
real_time_rbi_system(S) :- biometric_identification_system(S), remote(S), real_time(S).
prohibited_deployment(S, Purpose) :-
    real_time_rbi_system(S), deployment(S, Purpose), \+ permitted_deployment(S, Purpose).
```

---

## 1. What actually gets harder

Three things that were cosmetic in v1 become load-bearing in v2.

### 1.1 Vocabulary coherence stops being an observation and becomes a failure mode

v1 measured the drift: **115 distinct actor atoms across the obligation predicates, 75
used exactly once** — `provider` / `providers` / `prospective_provider`,
`authorised_` / `authorized_representative`, `condition/2` alongside `condition/3`.

In v1 that was an annoyance: a query missed some rows. In v2 it is fatal. If Article 3's
call emits `biometric_identification_system(S)` and Article 5's call writes
`biometric_id_system(S)`, the rule **never fires**. Not "less accurate" — silently dead.
A rule base is only as connected as its namespace is consistent.

**This is the central problem of v2.** Everything in the architecture below exists to
solve it.

### 1.2 Rules have cross-unit dependencies; v1's isolation guaranteed they'd break

`real_time_rbi_system/1` decomposes into `biometric_identification_system`, `remote`,
`real_time` — all Article 3 definitions. The rule lives in Article 5. Under v1's strict
one-unit-per-call isolation, the Article 5 call cannot know what Article 3 named things.

So **v2 deliberately relaxes v1's per-call isolation.** Worth stating plainly since it was
v1's defining constraint (DECISIONS.md D6). The naivety requirement is preserved where it
matters — the LLM still only ever sees a prompt plus corpus text — but the orchestration
now has stages. This is a documented change, not a drift.

### 1.3 The corpus does not contain the definitions we need

This is the finding that most affects scope. I checked:

| | |
|---|---|
| Article 3 definition units in `units/` as **leaf units** | **3** (points 1, 49(b), 49(c)) |
| Article 3 definitions in the actual Regulation | **68** |
| `art_3` present as a whole unit | **no** |

`biometric identification` (35), `remote biometric identification system` (41) and
`real-time remote biometric identification system` (42) — the exact primitives
`low_level_example.pl` decomposes into — **are not addressable units in the corpus.**

The reason is structural: `units/` is a *reference closure*, so it contains the provisions
something pointed at, not all provisions. Fine for cataloguing, insufficient for building a
connected rule base.

**They are recoverable.** The whole-act unit (`celex:32024R1689%2Foj.xml`, 628 KB) carries
the full text. Article 3 is a contiguous 17,201-character block, bounded by
`Article 3 Definitions` and `Article 4 `, containing all 68 numbered items — sliceable
deterministically, no LLM, no heuristics.

> Correction to `RESULTS.md` roadmap item 4, which said Article 3's 68 definitions "are
> generated in isolation and never reach the calls that use those terms". Wrong premise:
> 65 of them were never in the processed corpus at all. I'll fix that line.

---

## 2. Answering your four questions

### Q: less data, or still the whole unit XMLs?

**Keep whole unit XMLs — the `<ref>` markup is the single most valuable thing in them**
(v1 recovered the reference graph at F1 0.988, one hallucination in 1,128 edges). Don't
strip or pre-digest them.

But change two things:

1. **Unit of work: article, not leaf.** v1 split Article 5 into 8 par-level leaves — and
   the corpus only has 3 of Article 5(1)'s points (d, g, h(iii)) as leaves. The container
   unit `art_5` has the complete Article (11,983 chars, all 8 paragraphs). For rules you
   need the whole provision: 5(1)(h)'s prohibition is meaningless without 5(2)'s
   exceptions and 5(3)'s conditions. Splitting them across calls makes a correct rule
   impossible to write.

   Note this **inverts a v1 conclusion**, for a good reason. v1's leaf-selection existed to
   stop double-counting in a catalogue; v1's own metrics then showed articles scored
   perfectly and chapters dropped all 25 missed refs. Article-level is the sweet spot for
   both — small enough to cover densely, large enough to be logically self-contained.

2. **Scope: much less, for iteration 1.** See §5.

### Q: batch 1-by-1, or differently?

Not blindly 1-by-1. Batching becomes an **experimental variable** — which is the point of
the determinism requirement. Four strategies, all deterministic functions of the corpus:

| | strategy | rationale |
|---|---|---|
| **B0** | one leaf unit, no signature | v1 shape — the control arm |
| **B1** | one leaf unit + frozen signature | isolates the signature's effect |
| **B2** | one **article** + frozen signature | **recommended default** |
| **B3** | article + the text of everything it `<ref>`s (1-hop) | uses the 0.988 ref graph |

Recommend **B2** as v2's default and **B3** as the first experiment against it, since we
already have the ref graph to build the bundles for free.

### Q: switch to a more capable LLM?

**Don't decide this up front — it's now a measurable variable, so measure it.**

v1's evidence on `gpt-oss:120b` is genuinely two-sided:

- **Strong at transcription**: reference graph P 0.999 / R 0.978 after normalisation, with
  exactly **one** invented reference across 1,128.
- **Weak at exactly what v2 needs**: inventing and holding a consistent vocabulary — 115
  actors, 75 singletons.

So on the face of it, v2 targets its weak axis. But the frozen-signature design (§3)
removes most of that burden: the model no longer has to *remember* or *invent* names, it
is *handed* them. That is a deliberate architectural fix for a known model weakness, and
it may well be sufficient.

**Recommendation:** run the Article 5 slice on `gpt-oss:120b` first. The link-integrity
lint (§4) answers the question quantitatively in an afternoon — if a large share of rule
bodies call predicates nothing defines *even with a frozen signature*, that is hard
evidence for getting an API key, not a hunch. The slice is ~29 KB, so even a paid frontier
model would cost cents to run as a second arm. Build for `--model` swappability and treat
it as an experiment arm.

---

## 3. Architecture

Four phases. Only the shaded step is stochastic.

```
                    ┌─────────────────────────────────────┐
  whole-act unit ──►│ A. SIGNATURE     [1 LLM call]       │──► signature.pl  (frozen, hashed)
  (Art 3 sliced)    │    68 definitions -> predicate      │
                    │    vocabulary + arities + glosses   │
                    └─────────────────────────────────────┘
                                      │ frozen artifact
                    ┌─────────────────▼───────────────────┐
  article units ───►│ B. RULES         [1 LLM call/unit]  │──► out/rules/*.pl
  + their refs      │    signature + unit -> rules        │
                    └─────────────────────────────────────┘
                    ┌─────────────────────────────────────┐
                    │ C. ASSEMBLE      [deterministic]    │──► ontology.pl
                    │    merge, dedupe, discontiguous     │
                    └─────────────────────────────────────┘
                    ┌─────────────────────────────────────┐
                    │ D. LINT + TEST   [deterministic]    │──► report.json
                    │    consult, link integrity, firing  │
                    └─────────────────────────────────────┘
```

**Why freezing the signature matters more than it looks.** If Phase B accumulated
vocabulary as it went, call N's input would depend on calls 1..N-1's stochastic output —
the orchestration would be deterministic but the *run* would not be reproducible, and the
batching experiments would be uninterpretable. Freezing between phases makes every Phase B
call a pure function of `(unit, signature)`: mutually independent, order-free,
parallelisable, and replayable. **This is what buys the determinism the requirements ask
for**, and it's the reason for two phases rather than one.

Phase A's output is small enough to be **human-reviewed once** before the expensive phase
runs — a meaningful practical benefit.

**Optional Phase B2 — generate a test ABox** (the example facts, `low_level_example.pl`
lines 22–30). Without ground facts the rules parse but are never exercised. With them,
"does this rule fire?" becomes a real automatic test. High value; I'd include it.

---

## 4. Determinism and evaluation

### Determinism spec

Everything except the LLM response is reproducible, and the LLM part is *replayable*:

- **Content-address everything.** Run manifest records: corpus SHA, `signature.pl` SHA,
  prompt-template SHA, model id, all sampling params, and a SHA of the exact prompt sent
  per call.
- **Canonical ordering.** Never filesystem order; sort by a defined document order.
- **Batching is a pure function** of (corpus, config) — no LLM output in the loop.
- **Response cache keyed by prompt hash**, so re-runs skip identical calls. Makes prompt
  iteration fast *and* makes a run replayable from cache.
- **Honest caveat to document:** temperature 0 is not bit-reproducibility. Same prompt can
  still yield different text. We record raw responses so everything downstream replays
  exactly; the LLM step is replayable, not deterministic. Say so in the docs rather than
  implying otherwise.

### Evaluation — much richer than v1

v1 could only score the reference graph. v2 has real structural checks:

| check | what it catches | deterministic |
|---|---|---|
| `consult` | syntax | yes |
| **Link integrity** — % of rule-body goals having a definition | **broken rules — the headline metric** | yes |
| Arity / name collisions | `condition/2` vs `condition/3` | yes |
| Singleton variables | typo'd variables | yes (SWI warns) |
| **Rule firing** — ≥1 satisfying instantiation against the ABox | rules that parse but are dead | yes |
| Contradiction probe | same pair both permitted and prohibited | yes |
| Reference graph (carried from v1) | provenance fidelity | yes |
| Provision coverage | provisions yielding ≥1 rule | yes |

**Link integrity is the metric that replaces v1's F1** as the headline. It is exactly the
quantity §1.1 says decides whether v2 works at all.

---

## 5. Scope for v2.0 — a vertical slice

Do **not** start with all 285 units. Start with:

**Article 3 definitions (17 KB, sliced from the whole-act unit) + Article 5 (12 KB).**

| why | |
|---|---|
| It is literally the example | `low_level_example.pl` models real-time RBI = Art 5(1)(h) |
| Logically rich | prohibitions, exceptions, nested conditions, negation |
| Self-contained | Art 5 depends mostly on Art 3, which we include |
| Tiny | ~29 KB total — minutes per run, so prompt iteration is cheap |
| Hand-checkable | the team can read the whole output and judge it |

Scale to the full act only once the rule *shape* is agreed. Getting the shape wrong across
285 units costs a day of regeneration; getting it wrong across 2 articles costs minutes.

---

## 6. Decisions

### 6.1 Provenance — DECIDED: yes, `provenance/2`

Every rule head gets a companion fact linking it to the provision it encodes:

```prolog
real_time_rbi_system(S) :- biometric_identification_system(S), remote(S), real_time(S).
provenance(real_time_rbi_system/1, 'celex:32024R1689/oj#art_3/unp_1/pnt_42').
```

Machine-queryable, one line per rule, and it preserves v1's reference graph as a
cross-check. Note `low_level_example.pl` is a *shape* hint only — it was written against a
single sentence from v1's output and is not expected to be consistent or correct as legal
content.

### 6.2 Negation — RECOMMENDED: keep `\+`, and lint for the dangerous case

**What the issue is.** In Prolog, `\+ Goal` does not mean "Goal is false". It means
"Goal cannot be proven from what is currently in the file". This is *negation as failure*,
and it assumes a **closed world**: anything not written down is taken to be false.

Look at what that does to the example rule:

```prolog
prohibited_deployment(S, Purpose) :-
    real_time_rbi_system(S),
    deployment(S, Purpose),
    \+ permitted_deployment(S, Purpose).      % "no permission found in this file"
```

Article 5(1)(h) prohibits real-time remote biometric identification — but 5(2), 5(3) and
5(4) then lay out real exceptions: prior judicial authorisation, specific listed serious
offences, notification to the market surveillance authority.

If those exceptions are not modelled, `permitted_deployment/2` never succeeds, so
`\+ permitted_deployment(...)` is always true, so **every** real-time RBI deployment is
reported as prohibited — including ones the Regulation expressly allows. And the query
answers a confident `true`, not "unknown". The rule base is wrong in the direction that
looks authoritative.

Law is generally open-world: "not established as permitted" is not the same as
"prohibited". Prolog's default is the opposite.

**Three ways to handle it:**

| | approach | cost |
|---|---|---|
| **A** | Keep `\+`, ensure a provision's exceptions are always in the same call | simple; correctness rests on batching |
| **B** | Three-valued — add `undetermined/2` when neither is derivable | honest; more machinery, harder prompt |
| **C** | Never derive prohibition by failure; model it positively from the text | safest; may not match how the act is written |

**Recommendation: A, plus a mechanical guard.** Article-level batching (B2, §2) already
puts 5(1)(h) and its 5(2)–5(4) exceptions in the same call, which is precisely the
condition A needs. And the failure mode is *detectable without an LLM*: extend the
link-integrity lint to flag any `\+ Goal` whose predicate has **no defining clause
anywhere in the ontology**. That is the vacuous case — the negation is trivially true and
the rule is meaningless. It is the same check as §4's link integrity, applied to negated
goals.

Whichever we pick, **the prompt must state it explicitly.** Left unsaid, the model will
make the choice implicitly and inconsistently across calls.

Revisit after the Article 5 slice: if the lint shows many vacuous negations, that is the
evidence for moving to B.

## 7. Proposed module layout

```
src/
├── slice.py        # NEW  deterministic text slicing from the whole-act unit (Art 3 etc.)
├── select_units.py #      reused; gains article-level selection alongside leaf
├── signature.py    # NEW  Phase A — build and freeze signature.pl
├── prompt.py       #      rewritten — rules not facts; carries the frozen signature
├── generate.py     #      reused — orchestration, retry, resume, cache is already there
├── merge.py        #      extended — rules as well as facts, module structure
├── lint.py         # NEW  Phase D — link integrity, arity clashes, firing, contradictions
├── validate.py     #      reused for the reference-graph carry-over
└── compare.py      #      reused — now the main experimental instrument
```

`generate.py` and `compare.py` carry over essentially unchanged, which is convenient: the
concurrency/retry/429 handling and the run-diffing are exactly what the batching
experiments need.
