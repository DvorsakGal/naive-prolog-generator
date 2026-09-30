# How v2 works

A step-by-step walkthrough. One real example is traced all the way through, from the
legal text to an executable answer.

---

## The one-paragraph version

We turn a legal act into a Prolog program in **two LLM calls per run plus deterministic
glue**. The first call reads the act's *definitions* article and produces a **vocabulary**
— the list of predicate names everything else must use. That vocabulary is then **frozen**.
The second call reads *one article* and writes **rules** using that frozen vocabulary.
Everything else — slicing text, choosing which articles to process, assembling the file,
checking it — is plain code with no LLM involved.

Freezing the vocabulary is the whole trick. It is why two rules written by two separate
LLM calls can still connect to each other.

---

## The pipeline

```
                    INPUT: units/ (annotated XML chunks of the AI Act)
                                      │
      ┌───────────────────────────────┴───────────────────────────────┐
      │                                                               │
      ▼                                                               ▼
┌──────────────────────┐                                  ┌──────────────────────┐
│ PHASE 0   slice.py   │                                  │ select_provisions.py │
│ ── deterministic ──  │                                  │ ── deterministic ──  │
│                      │                                  │                      │
│ Cut Article 3 (the   │                                  │ Pick which articles  │
│ definitions) out of  │                                  │ to process.          │
│ the whole-act file.  │                                  │ Default: art_5       │
└──────────┬───────────┘                                  └──────────┬───────────┘
           │ 17,201 chars, 68 definitions                            │ art_5, 11,983 chars
           ▼                                                         │
┌──────────────────────────────────┐                                  │
│ PHASE A   signature.py           │                                  │
│ ★ LLM CALL #1 ★                  │                                  │
│                                  │                                  │
│ "Read these 68 definitions.      │                                  │
│  Give me the predicate names."   │                                  │
└──────────┬───────────────────────┘                                  │
           │                                                          │
           ▼                                                          │
   ┌───────────────────┐                                              │
   │  signature.pl     │  ◄── FROZEN. Hashed. Never changes mid-run.  │
   │  70 predicates    │                                              │
   └─────────┬─────────┘                                              │
             │                                                        │
             └──────────────────────┬─────────────────────────────────┘
                                    ▼
                    ┌──────────────────────────────────┐
                    │ PHASE B   generate_rules.py      │
                    │ ★ LLM CALL #2 (one per article) ★│
                    │                                  │
                    │ Input = frozen signature         │
                    │       + one article's text       │
                    │ Output = Prolog rules            │
                    └──────────────┬───────────────────┘
                                   │ out_v2/rules/*.pl
                                   ▼
                    ┌──────────────────────────────────┐
                    │ PHASE C   merge_v2.py            │
                    │ ── deterministic ──              │
                    │ Concatenate + fix up + dedupe    │
                    └──────────────┬───────────────────┘
                                   │ out_v2/ontology.pl
                                   ▼
                    ┌──────────────────────────────────┐
                    │ PHASE D   lint.py                │
                    │ ── deterministic ──              │
                    │ Does it parse? Do rules connect? │
                    └──────────────┬───────────────────┘
                                   ▼
                              report.json

  ★ = the only stochastic steps. Everything else is ordinary code.
```

---

## Step by step, with one real example

We follow **"real-time remote biometric identification system"** — the concept from
Article 5(1)(h), which is what `low_level_example.pl` was sketching.

### Phase 0 — cut out the definitions *(no LLM)*

The corpus folder `units/` is a *reference closure*: it contains the provisions that
something pointed at, not every provision. That's a problem, because only **3 of Article
3's 68 definitions** are in there. The definitions we need are missing.

But the folder also contains one file with the **entire act** in it. So we cut Article 3
out of that file, using a literal text search:

- start at `"Article 3 Definitions"`
- stop at `"Article 4 "`
- result: 17,201 characters containing exactly 68 numbered items

The code asserts that it found exactly 68. If the corpus ever changes, the run stops with
an error instead of quietly producing a shorter slice.

Among those 68 items is:

> (42) *real-time remote biometric identification system* means a remote biometric
> identification system, whereby the capturing of biometric data, the comparison and the
> identification all occur without a significant delay…

### Phase A — turn the definitions into a vocabulary *(LLM call #1)*

We hand those 17,201 characters to the model and ask for the **predicate names** — not
rules about obligations, just the nouns and adjectives of the domain.

It returns 70 declarations. Three of them matter for our example:

```prolog
:- pred biometric_identification/1,               gloss('automated recognition of a person…'), source('35').
:- pred remote_biometric_identification_system/1, gloss('identifying persons without active involvement…'), source('41').
:- pred real_time/1,                              gloss('operation without significant delay'), source('42').
```

Notice it broke a 12-word legal term into **small reusable pieces**. It also worked out
that definition (42) is built from the others, and wrote that as a rule:

```prolog
real_time_remote_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    real_time(S).
```

**This file is now frozen.** It is saved as `out_v2/signature.pl`, and its SHA-256 hash is
recorded in `out_v2/signature.meta.json`.

### Why freezing matters — the key idea

Every later call gets this **exact same file, verbatim**, pasted at the top of its prompt.

That means:

- Call for Article 5 and call for Article 6 both see `real_time/1`, so both use that name.
  Their rules can therefore refer to each other's concepts.
- No call depends on any *other* call's output. So they can run in any order, all at once,
  and the result is the same.
- If someone edits `signature.pl`, the hash no longer matches and **Phase B refuses to
  run** — because rules written against the old vocabulary can't be mixed with a new one.

Without freezing, one call might invent `real_time/1` and another `realtime_system/1`, and
a rule using the first would silently never match facts written with the second. The rule
wouldn't error. It would just never be true.

### Phase B — turn one article into rules *(LLM call #2)*

Now we pick which articles to process. Default is Article 5. We use the **whole article**
(all 8 paragraphs, 11,983 characters) rather than its individual paragraphs, because a
prohibition and its exceptions have to be in the same call — more on that below.

The prompt is:

```
=== FROZEN SIGNATURE (use these predicates; do not rename them) ===
<the entire signature.pl>

=== PROVISION ===
<the entire Article 5 XML>
```

And the model writes rules. For Article 5(1)(h):

```prolog
% prohibited, unless one of the permitted purposes applies
prohibited_ai_system(S) :-
    real_time_remote_biometric_identification_system(S),   ← from the signature
    publicly_accessible_space(_Loc),                        ← from the signature
    law_enforcement_authority(_Auth),                       ← from the signature
    \+ permitted_use_rt_rbi(S).                             ← defined just below

permitted_use_rt_rbi(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_localise_suspect(S).

provenance(prohibited_ai_system/1, 'celex:32024R1689/oj#art_5').
```

Three things to note:

1. It **reused** the signature's names instead of inventing synonyms.
2. `\+` means "cannot be proven". It's used here to say *"prohibited unless permitted"* —
   and crucially, `permitted_use_rt_rbi` **is defined in the same file**, so the exception
   is really modelled rather than assumed away. (See the trap below.)
3. `provenance/2` records which provision the rule came from, so you can always trace a
   conclusion back to the law.

### Phase C — assemble *(no LLM)*

Glue the signature and all the rule files into one `ontology.pl`. Three mechanical fixes:

1. `:- pred foo/1, gloss(…), source(…).` → `declared(foo/1, …, …).`
   The first form is readable but Prolog would try to *execute* it and crash. As a fact,
   the vocabulary stays queryable.
2. Add `:- discontiguous` where a predicate's clauses aren't adjacent.
3. Add `:- dynamic` for every predicate that is *declared but has no rules* — see below.

### The ABox — where your actual data goes

88 of the 97 predicates have **no rules at all**. That's deliberate, and it's the bit that
confuses people.

Predicates like `real_time/1` and `biometric_identification/1` can't be *derived* from
anything. They're **questions about the real world**: is this particular camera system
real-time? Nothing in the legal text can answer that — a human or a database has to say so.

So those predicates are the **input slots** of the ontology. You supply facts:

```prolog
ai_system(cam_net_01).
remote(cam_net_01).
real_time(cam_net_01).                    % ← a fact about a real system
biometric_identification(cam_net_01).
objective_localise_suspect(cam_net_01).
```

(The jargon for this is *ABox* — the facts — versus *TBox*, the rules. `demo_abox.pl` is a
hand-written example with two imaginary camera systems.)

They're marked `:- dynamic` so that an unasserted fact comes back **false** rather than
crashing with `Unknown procedure`.

### Phase D — check it *(no LLM)*

Five checks, all ordinary code:

| check | question it answers |
|---|---|
| **syntax** | Does Prolog load the file? |
| **link integrity** | Does every condition in every rule refer to something that exists? |
| **vacuous negation** | Is any `\+` negating something nothing defines? (see trap below) |
| **arity collisions** | Is one name used with two different numbers of arguments? |
| **provenance** | Can every rule be traced back to a provision? |

Current result: syntax clean, link integrity **1.0** (40/40), 0 vacuous negations, 0
collisions, provenance 9/9.

### The payoff — ask it a question

```bash
swipl out_v2/ontology.pl out_v2/demo_abox.pl
?- prohibited_ai_system(S).
```

```
classified as real-time RBI:  cam_net_01, cam_net_02
permitted use:                cam_net_01     (localising a suspect — an allowed purpose)
PROHIBITED under Article 5:   cam_net_02     (mass screening — no allowed purpose)
provenance:                   celex:32024R1689/oj#art_5
```

The chain that produced "cam_net_02 is prohibited":

```
  facts you supplied          signature rule                    Article 5 rule
  ─────────────────────       ──────────────────                ──────────────
  remote_biometric_
    identification_system  ┐
                           ├─► real_time_remote_biometric_  ──┐
  real_time                ┘     identification_system         │
                                                               ├─► prohibited_ai_system
  publicly_accessible_space ────────────────────────────────────┤
  law_enforcement_authority ────────────────────────────────────┤
                                                               │
  (no allowed purpose given) ──► \+ permitted_use_rt_rbi  ──────┘
```

Every link in that chain came from the legal text, and `provenance/2` names the provision.

---

## Two design choices worth understanding

### Why whole articles, not paragraphs

v1 processed the smallest available chunks. v2 uses whole articles, for two reasons:

- The corpus only carries **3 of Article 5(1)'s points** as separate chunks. Using chunks
  would simply lose most of the prohibitions.
- **A prohibition and its exceptions must be in the same call.** Article 5(1)(h) bans
  real-time biometric identification; 5(2)–5(4) then list genuine exceptions. If the model
  only sees the ban, it writes a rule that prohibits *everything* — including what the act
  expressly allows.

### The negation trap

`\+ Goal` in Prolog means **"Goal cannot be proven from what's written here"** — *not*
"Goal is false".

Consider what happens if the model writes:

```prolog
prohibited_ai_system(S) :- real_time_rbi(S), \+ permitted_use(S).
```

…and then never defines `permitted_use`. Prolog can never prove `permitted_use(S)`, so
`\+ permitted_use(S)` is **always true**, so **every** system comes out prohibited —
including ones the Regulation explicitly permits. And the query answers a confident
`true`, not "unknown".

Two things protect against this:

1. **The prompt forbids it**: you may only negate a predicate you also define in the same
   output. (Whole-article batching is what makes that possible.)
2. **The linter checks it** mechanically — that's the "vacuous negation" count. Currently 0.

---

## File map

| file | phase | LLM? | what it does |
|---|---|---|---|
| `src/slice.py` | 0 | no | cuts Article 3 out of the whole-act file |
| `src/select_provisions.py` | 0 | no | chooses which articles to process |
| `src/prompt_v2.py` | A, B | — | **the two prompts — this is the method** |
| `src/signature.py` | A | **yes** | builds and freezes the vocabulary |
| `src/generate_rules.py` | B | **yes** | one call per article |
| `src/llm.py` | A, B | — | HTTP, retries, response cache |
| `src/merge_v2.py` | C | no | assembles `ontology.pl` |
| `src/lint.py` | D | no | the five checks |

| output | what it is |
|---|---|
| `out_v2/signature.pl` | the frozen vocabulary — **read this first** |
| `out_v2/rules/*.pl` | one file per article |
| `out_v2/ontology.pl` | the assembled program |
| `out_v2/demo_abox.pl` | hand-written example facts |
| `out_v2/report.json` | lint results |
| `out_v2/run.jsonl` | per-call log: tokens, timing, hashes |

Commands: [`RUNBOOK_V2.md`](RUNBOOK_V2.md) · Findings: [`RESULTS_V2.md`](RESULTS_V2.md) ·
Rationale: [`PLAN_V2.md`](PLAN_V2.md)
