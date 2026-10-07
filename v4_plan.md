# v4 — simplify: an honest review of the plan, and what I'd actually do

> **Status: implemented.** Sections 1–6 were the proposal; the pipeline described in
> [`README.md`](README.md) is what was built from it. The v1–v3 code, documents and run
> outputs this review cites (`V3.md`, `out_v3_2/report.json`, `out_v3_2/run.jsonl`) were
> removed from the working tree in the same change and live in git history at commit
> `c2f7263`. The measured numbers quoted below are reproduced inline, so nothing here
> depends on those files being present.

You asked three things: is the pipeline overengineered, does the whole-act article
slicing idea work, and Option 1 vs Option 2 for Phase B.

Short answers: **yes it is, and your fix is the right one** — but it's a bigger win than
you framed it as, because it lets you *delete* the most complicated part of the repo.
**Option 1, not Option 2** — Option 2 is a regression dressed as an improvement, and I
have the numbers for that. And **the 85%-overlap auto-merge is the one thing in your plan
I'd argue against**, because the existing data shows it fails in both directions. There's
a cheaper fix that is already half-built.

Everything below is measured against this corpus, not estimated.

---

## 1. Where the overengineering actually is

It is not spread evenly. It's concentrated in one place, and it exists for one reason.

`select_units.py` (153 lines) + `select_provisions.py` (181 lines) exist to answer "what
should Phase B process?" from the `units/` reference closure. Because the closure is a
*citation index* and not an *index of the act*, articles and their chapter containers both
appear in it, overlapping. So v3 added `deduplicate_overlaps()`: character-span
containment arithmetic, a 60% coverage threshold, two branches, and a decision log — about
80 lines of genuinely subtle code, plus a section of `V3.md` explaining it.

**All of that is solving a problem created by the input choice.** Your post-run finding
already says so: the threshold was never meant to be a text-loss decision, and it became
one. The 60% threshold, the containment check, the `Unit.span` plumbing and the
`dropped_container` / `dropped_inner` decision log all disappear the moment the work list
comes from the act's own structure. Nothing replaces them.

Second, smaller spot: `slice.py`'s `SliceSpec` machinery (start marker, end marker, item
regex, expected count) is a general mechanism with exactly one row in `SPECS`, and that row
hardcodes `"Article 3 Definitions"` / `"Article 4 "`. Once articles are sliced generically,
Article 3 is just `articles[3]` and the spec table collapses to one assertion.

What is **not** overengineered, and should not be touched:

| component | keep, because |
|---|---|
| frozen signature + sha check | it's the mechanism that makes independent calls agree; v3 proved it (`high_risk_ai_system` converged across 4 blind calls) |
| prompt-hash response cache | it's what makes 125 calls affordable to re-run and prompt iteration nearly free |
| `lint.py`'s `check_cross_file` | without it a 125-call run is unjudgeable, which was the whole point of v3 |
| `provenance/2` + `references/2` | the only free ground truth you have |
| `:- pred` → `declared/3` rewrite in merge | small, load-bearing, and the linter depends on it |

So the simplification is real but it is a **deletion of ~250 lines in two modules**, not a
rewrite. That's the best kind.

---

## 2. Your slicing idea works — verified, not assumed

I ran the check rather than reasoning about it. A monotone scan over the whole-act unit
body for `Article (\d{1,3})\b`, accepting a match only when its number equals the one
expected next:

```
raw "Article N" matches in the act body : 123
accepted by the monotone scan           : 113   (exactly articles 1..113, in order)
rejected                                : 10
```

All 10 rejects are in-text cross-references (`"pursuant to Article 16(1) of that
Regulation"`, `"in Article 43, the following paragraph is added"`, `"as referred to in
Article 113(3)"`). Monotonicity rejects every one of them without a single special case,
because an in-text reference never happens to be the next article number in sequence.

Then I checked the slices against the units that *do* exist:

```
articles with a unit file          : 87 of 113
slice == unit body, byte-for-byte  : 70
slice differs                      : 17
articles with no unit file at all  : 26
```

The 17 differences are all the same thing: the slice runs on past the article's end and
picks up the next `CHAPTER`/`SECTION` heading line (art_5's slice ends
`"...infringes other Union law.\nCHAPTER III HIGH-RISK AI SYSTEMS \nSECTION 1 ..."`). Trim
trailing heading lines and all 87 match exactly.

Three consequences worth stating plainly:

1. **The slicer is self-validating.** "For every article that has a unit file, the slice
   must equal the unit body" is an assertion you can run on every execution, over 87
   independent cases. That is a much stronger determinism guarantee than `slice.py`'s
   current single `expect_items=68`, and it's what makes it safe to stop trusting the
   closure.
2. **Coverage goes from 87 to 113 articles**, not from 101 to 113. v3's count of 12 lost
   articles was after chapter containers rescued some; the closure itself only carries 87
   as article units. The real gap was larger than the post-run finding reported.
3. **The trailing heading is a feature, not just noise.** The same scan that finds article
   boundaries finds the `CHAPTER`/`SECTION` headings between them — so you can hand each
   call its structural breadcrumb (`CHAPTER III HIGH-RISK AI SYSTEMS › SECTION 2
   Requirements for high-risk AI systems`) for about 5 lines of code. More on why that
   matters in §4.

### Generalisation boundary

For a different act you need three values, not new code:

```python
HEADING_RE      = r"Article (\d{1,3})\b"     # article heading form
DEFINITIONS_ART = 3                           # which article is the definitions article
ANNEX_RE        = r"ANNEX ([IVX]+)(?![IVX])"  # where the enacting terms stop
```

That is the honest generalisation line: structure detection is act-dependent and belongs
in config; everything downstream is act-independent. Pretending otherwise is what produced
`SliceSpec`.

---

## 3. Option 1 vs Option 2 — Option 1, and the margin is not close

I want to be specific here because Option 2 sounds like the more principled design and
isn't.

### What Option 2 costs you

**It deletes the property the pipeline is built on.** Right now a Phase B call is a pure
function of `(provision, frozen signature)`. That buys three things: calls run at
concurrency 3; re-running costs nothing because every prompt hash hits the cache; and
editing one prompt line re-runs only the calls it affected. Under Option 2, call N's prompt
contains calls 1..N-1's output, so all three go away at once. Strictly sequential. And one
changed character anywhere — a prompt tweak, a retry, a different article order —
invalidates every downstream call. **Every experiment becomes a full re-run.**

**The measured wall times make that fatal, not just annoying.** From `out_v3_2/run.jsonl`:

```
signature:art_3    12.9 s
rules:art_8         8.8 s
rules:art_5        22.3 s
rules:art_6       225.2 s      ← and ct = 86,890 completion tokens
rules:art_9       228.0 s
rules:art_16      224.3 s
```

Three of five Phase B calls took ~225 s. Sequentially, 125 calls at that rate is **~7–8
hours per run**, before the growing prefill. Option 1 at concurrency 3, using v1's measured
rate (285 calls in 26.6 min), is **30–60 minutes, and ~0 on every re-run**.

**The token arithmetic, since you raised the input limit.** The act's enacting terms are
330,411 chars (~82k tokens); articles minus Article 3 are 313,210 chars. Generated Prolog
runs about 0.7× input chars (`out_v3_2`: 5 articles → 23.2 KB of rules). So:

| | Option 1 | Option 2 |
|---|---|---|
| prompt at the *last* article | ~5k tokens | **~63k tokens** (signature + accumulated ontology) |
| total prompt tokens over the run | ~600k | **~4.5M** (7.5×) |
| parallelism | 3 | **1** |
| cache value on re-run | total | **none** |

So it fits in gpt-oss:120b's window — but at the tail you're asking a 120B model to hold
63k tokens of its own prior Prolog and stay disciplined. Note `rules:art_6` already emitted
**86,890 completion tokens** on a 5,189-token prompt in the current, easy setup. That is a
runaway, and it is the model telling you it is not robust at this scale yet.

**And it makes the result uninterpretable, which is the real objection.** If naming drifts
at article 90, you cannot attribute it to the prompt, the model, or to drift inherited from
article 12 — and you have no control arm to compare against, because the control arm *is*
Option 1. `requirements-overview.md` says the point of determinism is to gain experimental
insight. Option 2 produces one number and no insight. `PLAN_V2.md` §3 made this argument
and it's still correct.

### Verdict

Build **Option 1**. Keep Option 2 as a *measurable experiment arm* on a 10-article subset
later if you want the number — it's a `--mode sequential` flag over the same slicer, maybe
30 lines, and you can then say what it's actually worth instead of guessing. But it is not
the v4 architecture.

---

## 4. The naming problem: what I'd do instead of the 85% merge

You're right that Option 1 walks into naming problems. But look at what the existing data
says about fixing them with string similarity. From `out_v3_2/report.json`, 8 alias
candidates at Jaccard ≥ 0.6 over 56 invented predicates:

```
required_compliance             ~ required_compliance_with_requirements     0.67  GENUINE
required_compliance             ~ required_accessibility_compliance         0.67  GENUINE
required_risk_management_system ~ risk_management_system                    0.75  arguable (duty vs entity)
required_risk_management_step   ~ required_risk_management_system           0.60  arguable
required_quality_management_system ~ required_risk_management_system        0.60  FALSE POSITIVE
```

That last pair is the problem. `required_quality_management_system` and
`required_risk_management_system` differ in one word out of four and are **~88% similar at
the character level** — an 85% string-similarity merge would unify them. Quality management
(Article 17) and risk management (Article 9) are different legal obligations with different
provenance. Merging them produces a rule base that *scores better on connectivity* and is
*wrong*, and nothing in the output would show it.

Meanwhile `must_publish_annual_report` / `must_submit_annual_report` — a genuine synonym
pair you *want* merged — sits at 0.67 token overlap, below any threshold safe enough to
exclude the quality/risk pair.

**So precision and recall fail in opposite directions, and no threshold separates them.**
String similarity cannot distinguish "quality" from "risk" because the distinction is
semantic. That is exactly the judgement an LLM can make and a regex cannot. I would not
auto-merge on similarity at any threshold; keeping `alias_candidates` as a *human-reviewable
list*, which is what v3 correctly called it, is the right use of that signal.

### The cheaper fix: reconciliation as one call, not as growing context

This is the `signature_2.pl` idea at the end of `V3.md`, and it gets you Option 2's benefit
without Option 2's cost. The key realisation:

> The drift is not in concepts Article 3 defines. It is entirely in the recurring
> *administrative* vocabulary the act never defines — compliance, annual report,
> management system. Those are enumerable **after one cheap parallel pass**, and they are
> the same handful of concepts across all 113 articles.

```
PASS 1   112 articles + 13 annexes, flat Option 1, concurrency 3, fully cached
             ↓  collect every invented :- pred name + gloss + which files use it
RECONCILE    ONE LLM call: "here are 300 invented predicates with glosses and usage
             counts. Emit the canonical name for each concept, and a merge map."
             → signature_2.pl  (canonical additions, frozen and hashed like signature.pl)
             ↓
PASS 2   the same 125 calls, now against signature.pl + signature_2.pl
```

Why this is better than both your options:

- **Determinism survives intact.** Every call in both passes is still a pure function of
  `(provision, frozen vocabulary)`. Parallel, order-independent, cacheable.
- **The semantic judgement goes to the component that can make it.** One call sees all 300
  names at once with their glosses — far better positioned to merge aliases than 112 calls
  that each see one article, and far better than Jaccard.
- **It gives you a controlled A/B on the metric that matters.** Pass 1 and pass 2 differ in
  exactly one variable. `shared_across_files`, `n_alias_candidates` and `fragmentation`
  measured on both is a real experimental result. Option 2 has no control arm.
- **Cost: 251 calls across two parallel passes** ≈ 1–2 hours wall, ~0 on re-run. Versus
  Option 2's single 7–8 hour sequential run you can't re-run.

And the cheap prophylactic that costs almost nothing: **give each call its chapter/section
breadcrumb**. The scan in §2 already produces it. Articles 8–15 all getting
`CHAPTER III › SECTION 2 Requirements for high-risk AI systems` in their prompt is a large
part of what Option 2 was trying to buy with 55k tokens of accumulated Prolog, for 5 lines
of code and ~20 prompt tokens per call.

---

## 5. Two things in the current output that matter more than naming

I'd be doing you a disservice to review this and only talk about what you asked about.

### 5.1 A lot of the generated rules are near-tautologies

From `out_v3_2/rules/...art_9.pl`:

```prolog
required_risk_management_step(identification_and_analysis, S) :- high_risk_ai_system(S).
required_testing_for_risk_management(P, S) :- provider(P), high_risk_ai_system(S).
required_consideration_of_vulnerable_groups(P, S) :- provider(P), high_risk_ai_system(S).
```

Those bodies carry no discriminating condition. They say "if it's a high-risk AI system
then the risk-management step is required" — true, but it's the article's *scope* restated
as a rule, not its legal test. The whole report backs this up: 5 articles produced **28
rule heads** and **110 declared predicates, 96 of which are ABox primitives with no rules
at all**. The artefact is currently a rich vocabulary with a thin rule layer.

That matters for v4 because **link integrity 1.0 and fragmentation 0.964 both look the same
whether the rules are substantive or tautological.** You are about to run 125 calls and
judge them on metrics that cannot see this. One cheap check closes the gap:

> **tautology rate** — count rule heads whose body is a single goal, or whose body consists
> only of signature entity/type predicates with no property, relation or negation. Report it
> next to link integrity.

~20 lines in `lint.py`, same shape as `check_cross_file`, and it's the difference between
"the full run produced a connected rule base" and "the full run produced a connected rule
base that mostly restates article scopes".

### 5.2 Annexes are load-bearing and your plan excludes them

You wrote "113 − art_3 = 112 articles". But Article 6 — the entire high-risk classification
mechanism — is defined by reference to **Annex III**, and v3's two grammar violations were
literally `annex_3_ai_system` and `covered_by_annex1`: the model inventing placeholder
predicates for annex content it was never shown.

The same scan handles them. `ANNEX ([IVX]+)(?![IVX])` finds all 13 cleanly (including the
typeset-mangled `"ANNEX XUnion legislative acts..."`), 49,908 chars total:

```
ANNEX I     6,743   List of Union harmonisation legislation
ANNEX II      862   List of criminal offences
ANNEX III   7,421   High-risk AI systems          ← Article 6 is meaningless without this
ANNEX IV    6,123   Technical documentation
...
```

**Recommendation: 112 articles + 13 annexes = 125 work units.** 13 extra calls for the
content that Chapter III's rules actually need.

---

## 6. The plan

### v4.0 — the deletion, plus the full-act baseline  ✅ built

| # | change | module | status |
|---|---|---|---|
| 1 | monotone heading scan → 113 articles + 13 annexes, with chapter/section breadcrumbs; assert slice == unit body wherever a unit exists | `structure.py` (new, replaces `slice.py`) | done — **99/99 slices match byte-for-byte**, asserted on every run |
| 2 | Phase A reads the definitions article from the same scan; `expect_items=68` assertion and coverage check kept | `signature.py` | done |
| 3 | Phase B work list = `phase_b_units()`; breadcrumb passed in the `<unit context=...>` attribute | `rules.py`, `prompts.py` | done — **125 work units, 361,573 chars** |
| 4 | **delete** `select_provisions.py`, `select_units.py`, `deduplicate_overlaps`, `SliceSpec`/`SPECS` | — | done |
| 5 | cap completion length; a call that hits the cap is reported failed, not written | `llm.py` | done — `num_predict=16384`, part of the cache identity |
| 6 | discrimination check (§5.1) | `lint.py` | done — check 4, verified on a fixture |
| 7 | **run it**: 1 + 125 calls | — | not yet run |

Net: the codebase gets ~200 lines smaller, coverage goes from 87 to 125 work units, and the
output is the first artefact in this project that actually covers the act. The alias list
from a 125-call run is also the input §4's reconciliation call needs — you cannot design
`signature_2.pl` from 5 articles' worth of drift.

### v4.1 — reconciliation, as a measured A/B against v4.0  ✅ built

| # | change | status |
|---|---|---|
| 8 | collect invented predicates + glosses + usage from `rules/*.pl` | done — `signature.collect_invented()`, shared with `lint.check_namespace()` so the two cannot disagree about what counts as invented |
| 9 | one reconciliation call → `signature_2.pl`, frozen and hashed like `signature.pl`, plus mechanical checks on the merge map (cross-arity, chains, unknown sources) | done — `reconcile.py` |
| 10 | Phase B pass 2 against `signature.pl + signature_2.pl` → `out/rules_2/` | done — `rules.py --pass 2`, stamped with the combined hash |
| 11 | report pass 1 vs pass 2 | done — `./run.sh --both` prints the side-by-side table |

Two parallel passes, both cacheable. If pass 2 doesn't move the numbers, you've learned
something real and cheaply.

### What I would not do

- **Option 2 (growing ontology) as the architecture.** 7.5× the prompt tokens, strictly
  sequential, no cache, no control arm, and a documented runaway at 1/12th the context.
  Worth *measuring* on 10 articles behind a flag; not worth *building on*.
- **Auto-merging names on string similarity at any threshold.** §4: it would merge
  quality-management with risk-management while still missing publish/submit-annual-report.
  Silent semantic corruption that improves every metric you'd use to detect it.
- **Batching several articles per call in v4.0.** Median article is 2,122 chars and the
  smallest is 252 (art_64), so there's an obvious temptation. But grouping is a new
  deterministic decision to justify and it muddies provenance. 125 calls is affordable.
  It's the natural *next* experiment arm after a baseline exists, not part of the baseline.
- **Keeping `units/` in the loop for selection.** It stays useful for exactly two things:
  the 87-way slicer validation in §2, and `<ref>` ground truth for the reference score.
  Both are checks on the pipeline, not inputs to it. That distinction is the whole lesson
  of the post-run finding.

---

## 7. Honest statement of what v4 will and won't be

It will be: the complete act — 113 articles and 13 annexes — formalised into a
syntactically clean, fully traceable, queryable Prolog rule base, from a pipeline whose
only stochastic step is the LLM call, with coverage complete **by construction** rather
than by accident of the citation graph, and with naming drift measured rather than hoped
away.

It will not be: a finished legal ontology. §5.1 is the thing to be honest about — a good
share of the rules will restate article scope rather than encode a legal test, and that is
a prompt-and-method problem the naming work doesn't touch. v4 should at least make it
**visible**, because right now it isn't, and that is the same failure mode as the
signature's silently dropped definitions and the selection's silently dropped articles:
the third time in a row the reports could not see what the pipeline was doing.
