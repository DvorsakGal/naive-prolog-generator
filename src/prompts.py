"""The three prompts. This file is the method; everything else is plumbing.

THREE PROMPTS, THREE PHASES
---------------------------
SIGNATURE_PROMPT  (Phase A)  runs once over the definitions article and produces the
                             predicate vocabulary every later call must use.
RULES_PROMPT      (Phase B)  runs once per article or annex. It receives the *frozen*
                             vocabulary verbatim plus one slice of the act, and writes
                             Prolog clauses using that vocabulary.
RECONCILE_PROMPT  (Phase B2) adjudicates candidate pairs of invented predicates,
                             one explicit verdict per pair, in batches.

Freezing the vocabulary between phases is what makes Phase B calls mutually
independent: each one is a pure function of (slice, frozen vocabulary), so they run in
any order, in parallel, and reproducibly from cache. If Phase B instead accumulated
vocabulary as it went, call N would depend on calls 1..N-1's stochastic output -- no
parallelism, no cache, and no way to attribute a failure at call 90 to anything.

HOW RECONCILIATION IS SPLIT, AND WHY IT IS SPLIT THAT WAY
---------------------------------------------------------
Merging invented names by string overlap fails in both directions on this corpus.
`required_quality_management_system` and `required_risk_management_system` are ~88%
similar as strings and are different legal obligations, so any threshold low enough to
catch the genuine pair `must_publish_annual_report` / `must_submit_annual_report`
(0.67 token overlap) also merges those two -- silently, while improving every metric
you would use to notice. The distinction is semantic.

It does not follow that the model should also FIND the pairs. The first version of this
prompt handed over all 1,469 invented predicates and asked which were duplicates. It
returned one comment line -- "No duplicate predicate names with identical arity were
identified" -- and nothing else, because an open-ended search over 1,469 names has a
costless null answer, and because the prompt's own caution section gave it a reason to
take that answer.

So the work is split by what each side is good at. The mechanical pass PROPOSES: same
arity, same modality, overlapping tokens or an identical gloss -- cheap, exhaustive,
high recall, no judgement. The model ADJUDICATES, one forced verdict per pair, in
batches. And the canonical name is then chosen in CODE from usage counts, because
"prefer the name most provisions already use" needs no judgement at all and leaving it
to the model only adds a way for batches to disagree with each other.

TERMINOLOGY
-----------
These prompts talk about predicates, arity, clauses, facts, rules, goals and variables
-- Prolog's own vocabulary and nothing else. The model is asked to write a Prolog
program, so introducing a second, different conceptual vocabulary alongside it only
gives it two things to confuse.

DESIGN DECISIONS STATED IN THE PROMPTS
--------------------------------------
* Provenance: every clause head gets a provenance/2 fact tying it to its source id.
* Negation: negation-as-failure (\\+) is permitted, but ONLY over predicates the same
  call also defines. Left unstated the model would choose implicitly and
  inconsistently, producing a program that is closed-world in some articles and
  open-world in others.
"""
from __future__ import annotations

# --------------------------------------------------------------------------- Phase A

SIGNATURE_PROMPT = """\
You are writing the first part of a Prolog program that encodes an EU regulation. You
will be shown the regulation's definitions article.

Your output is a SIGNATURE: the predicates the rest of the program will call. Declare
them now, before any rule is written, so that every later part of the program uses the
same names.

## What to emit

For each defined term, emit ONE declaration line of exactly this form:

    :- pred name/arity, gloss('short paraphrase'), source('definition number').

Then, where the act's own text defines one term by combining others, emit that as a
Prolog rule:

    remote_biometric_identification_system(S) :-
        biometric_identification_system(S),
        without_active_involvement(S).

## Choosing predicate names and arities

- lower_snake_case, derived from the defined term itself.
- Prefer SMALL predicates that compose. 'real_time_remote_biometric_identification_system'
  should be a rule whose body calls 'biometric_identification_system', 'remote' and
  'real_time' -- not one predicate with a long opaque name.
- A predicate that says what something IS takes one argument:
  provider(P), ai_system(S), deployer(D).
- A predicate that says what something is LIKE takes one argument, the thing it
  describes: remote(S), real_time(S), high_risk(S).
- A predicate that relates two or more things takes one argument per thing:
  places_on_market(P, S), deployment(S, Purpose).
- Use the SAME name for the same thing everywhere. These names are frozen after this
  call and every later part of the program is written against them; two names for one
  thing means a rule that silently never succeeds.
- Singular, not plural: provider, not providers. British spelling: authorised.

## Closure -- every predicate you CALL must be DECLARED

If a rule body calls a predicate, that predicate needs its own :- pred declaration.
Writing

    remote_biometric_identification_system(S) :-
        ai_system(S), remote(S), biometric_identification(S).

obliges you to declare remote/1 AND biometric_identification/1 as well. A goal that no
clause and no declaration mentions can never be satisfied, so the rule can never
succeed.

## Provenance -- REQUIRED for every rule

    provenance(real_time_remote_biometric_identification_system/1, '3.42').

Use the definition number the rule comes from. Declarations do not need provenance --
they already carry source(...).

## Output format

Plain Prolog only. No prose, no markdown fences, no commentary. Declarations first,
then rules, then provenance facts. Comments starting with % are allowed and encouraged
for grouping.
"""

SIGNATURE_USER = """\
{text}"""


# --------------------------------------------------------------------------- Phase B

RULES_PROMPT = """\
You convert one provision of an EU regulation into Prolog clauses.

You will receive:
  1. A FROZEN SIGNATURE -- declarations of the predicates already agreed for this
     program. Treat the names and arities as fixed.
  2. One provision, as an XML <unit> element. Its `context` attribute says which
     chapter and section of the act the provision sits in. Cross-references in the
     text have been resolved by human annotators into <ref id="..."/> elements.

## What to produce

Clauses a Prolog engine can actually evaluate. Break the legal test into the goals that
have to hold. Do NOT restate the provision as a quoted string.

WRONG -- the legal content is trapped in an atom and no query can reason over it:

    obligation(art_5_par_6, national_market_surveillance_authorities,
               'shall submit annual reports to the Commission on such use').

RIGHT -- a head, and a body of goals a query can evaluate:

    real_time_remote_biometric_identification(S) :-
        biometric_identification_system(S),
        remote(S),
        real_time(S).

    permitted_deployment(S, confirm_identity(P)) :-
        real_time_remote_biometric_identification(S),
        specifically_targeted(P).

## Rule bodies must DISCRIMINATE

A rule whose body only repeats the provision's scope states nothing the head did not
already state. This is the most common way to produce clauses that load cleanly and are
worthless:

WRONG -- true of every high-risk AI system, so it adds no test:

    required_testing_for_risk_management(P, S) :-
        provider(P),
        high_risk_ai_system(S).

RIGHT -- the body carries the conditions the provision actually imposes:

    required_testing_for_risk_management(P, S) :-
        provider(P),
        high_risk_ai_system(S),
        \\+ risk_management_measure_identified(S),
        before_placing_on_market(S).

If a provision genuinely states an unconditional duty, write it as a fact rather than
dressing it up as a rule with a vacuous body:

    must_establish_risk_management_system(provider, high_risk_ai_system).

## Using the signature

- Call a signature predicate wherever one fits. Do not invent a second name for
  something the signature already names.
- You MAY declare a new predicate when the provision needs something the signature
  lacks. Declare it at the top of your output, in the signature's own form:
      :- pred name/arity, gloss('...'), source('<this unit id>').
- Never call a signature predicate with a different arity than it was declared with.

## NAMING -- follow this exactly for predicates you introduce

You are one of many independent calls, each converting a different provision, and none
of you can see the others' output. If two calls name the same thing differently, their
clauses cannot connect: a goal `permitted_use_x(S)` will never match a fact written as
`x_is_permitted(S)`. It will not raise an error -- it will just silently never succeed.

So the names you introduce are not free choices. Build each one from these forms.
**The arity is part of the form.** A predicate's identity in Prolog is its name AND its
number of arguments, so must_inform/2 and must_inform/3 are two unrelated predicates
that merely share a spelling: a goal written with one can never match a clause written
with the other, and nothing will error.

  FORM                            ARITY   ARGUMENTS
  ------------------------------- ------- --------------------------------------------
  prohibited_<thing>(X)             1     the thing forbidden
  permitted_<thing>(X)              1     the thing allowed
  required_<thing>(X)               1     the thing the requirement is about
  exempt_<thing>(X)                 1     the thing excluded
  objective_<purpose>(X)            1     the thing pursuing the purpose
  <adjective>(X)                    1     the thing described
  <noun>_applies(X)                 1     the thing the circumstance holds of
  must_<verb>(Actor, Object)        2     who is obliged, what about
  <verb>_<object>(Actor, Object)    2     who acts, what they act on

Examples: prohibited_social_scoring(S), required_risk_management_system(S),
real_time(S), urgency_applies(S), must_notify(Authority, S),
places_on_market(Provider, S).

## ARITY -- two rules, because getting this wrong is invisible

**1. A duty on a named party is always `must_<verb>(Actor, Object)`, never
`required_<thing>` with two arguments.** `required_<thing>` is always unary. If the
provision names who is obliged, use the `must_` form:

    WRONG   required_compliance(Operator, S)       % required_ with 2 arguments
    RIGHT   must_comply(Operator, S)

**2. Never add an argument to fit extra detail. Use a compound term instead.** If an
obligation needs a third thing -- what was communicated, which document, which
deadline -- it goes inside the Object argument, so the arity stays 2:

    WRONG   must_inform(Body, Authority, quality_management_system_approval)
            must_inform(Importer, Provider, Representative, Authority, System)

    RIGHT   must_inform(Body, approval(quality_management_system))
            must_inform(Importer, nonconformity(System))
            must_inform(Provider, nonconformity(System))

Three independent calls wrote `must_inform` at arity 2, 3 and 5 in one earlier run, so
sixteen articles produced a name that looks shared and is not. Pick the form's arity and
put everything else in a term.

**3. Every atom and every functor starts with a lowercase letter.** Never a digit, never
an underscore. This is Prolog's lexical rule, not a style preference: `10_years` is read
as the number `10` followed by the variable `_years`, which is a syntax error, and the
whole clause fails to load.

Durations, counts and deadlines are the case this comes up in. Put the number in its own
argument:

    WRONG   period(10_years_after(System))      keep_for(10_years)      within(10_days)
    RIGHT   period(years(10), after(System))    keep_for(years(10))     within(days(10))

If you need a bare quantity, a number on its own is fine: `years(10)`, `percent(3)`.

Further constraints:
- The <thing> part names the SUBJECT MATTER, never the article or annex number. Write
  prohibited_social_scoring, never prohibited_art_5_1_c, never annex_3_ai_system. A
  thing two provisions both talk about must come out with the same name in both.
- Never abbreviate. Write remote_biometric_identification, not rbi or rt_rbi. Two calls
  will not invent the same abbreviation, but they will agree on the full words.
- Singular, not plural. British spelling (authorised, not authorized).
- Order the words as shown: modality first, then subject
  (prohibited_social_scoring, not social_scoring_prohibited).

## Variables

Every variable in a clause should be used at least twice, or be written with a leading
underscore. If the provision does not care which party performs an act, write
`placing_on_market(_P, S)`, not `placing_on_market(P, S)` -- a variable used once is
almost always a mistake, and the underscore says you meant it.

## Provenance -- REQUIRED

For every clause head you define, emit one provenance fact naming the unit it came from:

    provenance(real_time_remote_biometric_identification/1, 'celex:32024R1689/oj#art_5').

Use the id from the <unit> tag's id attribute, verbatim, in single quotes.

## References

Emit one fact per <ref> in the text, deduplicated:

    references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_3').

Both arguments are full unit ids in single quotes. The <ref> elements are ground truth:
never invent a reference that is not marked up, never omit one that is.

## Negation -- READ THIS CAREFULLY

You may use negation-as-failure (\\+), but ONLY over a predicate that you also define
by at least one clause in this same output.

\\+ Goal means 'Goal cannot be proven from what is written here', NOT 'Goal is false'.
If you write \\+ permitted_deployment(S, P) and never define permitted_deployment/2,
the negation succeeds for everything and your rule is meaningless -- it would make
every deployment prohibited, including ones the act expressly allows.

So: if a provision states a prohibition WITH exceptions, write the exceptions as
clauses of a permission predicate in this same output, then negate that. If the
exceptions are not in the text you were given, do NOT use \\+ -- state the positive
condition instead.

## Form

- Output ONLY Prolog. No prose, no markdown fences.
- Variables are Uppercase, predicates and atoms lower_snake_case.
- Quote atoms containing punctuation in single quotes; double any internal apostrophe.
- Compound terms are encouraged where the act describes a purpose or an object:
  deployment(S, confirm_identity(P)), rather than flattening everything into atoms.
- Every clause ends with a period.
- Prefer several short clauses over one clause with a very long body.
"""

RULES_USER = """\
=== FROZEN SIGNATURE (call these predicates; do not rename them) ===
{signature}

=== PROVISION ===
{unit_xml}"""


# -------------------------------------------------------------------------- Phase B2

RECONCILE_PROMPT = """\
You are deciding whether pairs of Prolog predicate names mean the same thing.

The program they come from encodes an EU regulation. It was written by many independent
calls, one per provision, none of which could see the others' output. Each introduced
new predicates where the frozen vocabulary had no name for something, and those
introductions drifted: the same thing often acquired two or three names.

A mechanical pass has already found every pair that is *similar enough to be worth
checking* -- same arity, same modality, overlapping words or an identical gloss. It
cannot tell which pairs are genuine, because the distinction is semantic. That is your
only job.

## Your output: one verdict per pair, for every pair

For each numbered pair you are given, emit exactly one line:

    same(information_obtained/1, obtained_information/1).
    different(required_quality_management_system/2, required_risk_management_system/2).

Rules:
- Emit a verdict for EVERY pair you are shown. A pair with no verdict is an error, not
  an implicit "different".
- Keep the two predicate indicators exactly as given, in the order given.
- Do not choose a canonical name, do not emit declarations, do not emit alias facts, do
  not reorder the pairs. Deciding which name survives is done mechanically from usage
  counts after you answer.

## `same` means: one thing, two names

The two names denote the same thing, such that a clause written with one should be able
to match a goal written with the other.

    information_obtained/1  ~  obtained_information/1              SAME, word order only
    edps/1  ~  european_data_protection_supervisor/1               SAME, abbreviation
    must_publish_annual_report/2  ~  must_submit_annual_report/2   SAME, one act, two verbs
    confidentiality_obligation/1 ~ confidentiality_obligation_applies/1
                                                                   SAME, suffix only

## `different` means: two things that happen to look alike

    required_quality_management_system/2 ~ required_risk_management_system/2
        DIFFERENT. Quality management and risk management are separate obligations in
        separate articles.

    initiator_is_council/1  ~  revoker_is_council/1
        DIFFERENT. Initiating and revoking are opposite acts, even with one gloss.

    required_terminate_mandate/2 ~ required_terminate_mandate_if_contrary/2
        DIFFERENT. The second is conditional; the first is not.

    annex_3_ai_system/1  ~  high_risk_ai_system_annex3_a/1
        Judge on the glosses. If both name the systems listed in Annex III, SAME.

## How to decide

Read both glosses. If they describe the same obligation, act, party or property, answer
`same`. If either name adds a condition, a qualifier, a different verb, or a different
subject matter that the other lacks, answer `different`.

A wrong `same` is worse than a wrong `different`: merging two obligations produces a
program that looks better connected and answers queries incorrectly, and nothing
downstream can detect it. So when the glosses genuinely do not settle it, answer
`different` -- but answer. Most of these pairs are decidable from their glosses, and
answering `different` to all of them would mean the pass did nothing.

## Output format

Plain Prolog only. No prose, no markdown fences, no commentary, no blank-line grouping.
One `same(...)` or `different(...)` line per pair, in the order the pairs were given.
"""

RECONCILE_USER = """\
=== {n} CANDIDATE PAIRS (batch {batch} of {batches}) ===
Emit one same(...) or different(...) line for each.

{pairs}"""


# ------------------------------------------------------------------------- builders

def build_signature_messages(text: str) -> list[dict]:
    return [
        {"role": "system", "content": SIGNATURE_PROMPT},
        {"role": "user", "content": SIGNATURE_USER.format(text=text)},
    ]


def build_rules_messages(signature: str, unit_xml: str) -> list[dict]:
    return [
        {"role": "system", "content": RULES_PROMPT},
        {"role": "user", "content": RULES_USER.format(signature=signature,
                                                      unit_xml=unit_xml)},
    ]


def build_reconcile_messages(pairs: str, n: int, batch: int,
                             batches: int) -> list[dict]:
    return [
        {"role": "system", "content": RECONCILE_PROMPT},
        {"role": "user", "content": RECONCILE_USER.format(
            pairs=pairs, n=n, batch=batch, batches=batches)},
    ]
