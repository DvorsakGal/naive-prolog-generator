"""The three prompts. This file is the method; everything else is plumbing.

THREE PROMPTS, THREE PHASES
---------------------------
SIGNATURE_PROMPT  (Phase A)  runs once over the definitions article and produces the
                             predicate vocabulary every later call must use.
RULES_PROMPT      (Phase B)  runs once per article or annex. It receives the *frozen*
                             vocabulary verbatim plus one slice of the act, and writes
                             Prolog clauses using that vocabulary.
RECONCILE_PROMPT  (Phase B2) runs once over every predicate Phase B invented, and
                             decides which of them are the same thing under two names.

Freezing the vocabulary between phases is what makes Phase B calls mutually
independent: each one is a pure function of (slice, frozen vocabulary), so they run in
any order, in parallel, and reproducibly from cache. If Phase B instead accumulated
vocabulary as it went, call N would depend on calls 1..N-1's stochastic output -- no
parallelism, no cache, and no way to attribute a failure at call 90 to anything.

WHY RECONCILIATION IS ONE CALL AND NOT A STRING-SIMILARITY PASS
---------------------------------------------------------------
Merging invented names by string overlap fails in both directions on this corpus.
`required_quality_management_system` and `required_risk_management_system` are ~88%
similar as strings and are different legal obligations, so any threshold low enough to
catch the genuine pair `must_publish_annual_report` / `must_submit_annual_report`
(0.67 token overlap) also merges those two -- silently, while improving every metric
you would use to notice. The distinction is semantic, so it goes to the one component
that can make it, with all the names and glosses visible at once.

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

So the names you introduce are not free choices. Build each one from these forms:

  MODALITY      prohibited_<thing>      something the act forbids
                permitted_<thing>       something the act allows
                required_<thing>        something the act mandates
                exempt_<thing>          something the act excludes from a rule

  PURPOSE       objective_<purpose>     a permitted purpose or objective
                                        e.g. objective_localise_suspect

  DESCRIPTION   <adjective>(X)          one argument, the thing described
                                        e.g. real_time(S), high_risk(S)

  ACT/EVENT     <verb>_<object>(A, B)   one party doing something to something
                                        e.g. places_on_market(P, S)

  DUTY          must_<verb>(Actor, X)   an obligation on a named party
                                        e.g. must_notify(Authority, S)

  CONDITION     <noun>_applies(X)       a circumstance that holds
                                        e.g. urgency_applies(S)

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
You are merging duplicate predicate names in a Prolog program that encodes an EU
regulation.

The program was written by many independent calls, one per provision, none of which
could see the others' output. Each was given a frozen signature, and each introduced
new predicates where the signature had no name for something. Those introductions
drifted: the same thing often acquired two or three names.

You will receive every introduced predicate, with its arity, its gloss, how many
provisions used it, and which ones. Your job is to decide which names denote the SAME
thing and choose one canonical name for each such group.

## What to emit

First, a declaration for every canonical name you choose:

    :- pred canonical_name/arity, gloss('short paraphrase'), source('reconciled').

Then, one alias fact for every name that is NOT canonical, pointing at the name that
replaces it:

    alias(required_compliance_with_requirements/1, required_compliance/1).
    alias(required_ensuring_compliance/1, required_compliance/1).

Do not emit an alias from a name to itself. Do not emit rules or provenance facts.

## Choosing the canonical name

- Prefer the name that is already used by the most provisions. Agreement that already
  exists is worth more than a better-sounding name.
- On a tie, prefer the shorter name that still states the subject matter in full words.
- The canonical name must obey the same forms the calls were given: modality prefix
  first (prohibited_, permitted_, required_, exempt_, objective_, must_), subject matter
  spelled out, no abbreviations, no article or annex numbers, singular, British spelling.
- Only merge names with the SAME arity. Two predicates with different arities are
  different predicates; leave both alone.

## DO NOT MERGE THINGS THAT ARE MERELY SIMILAR

This is the part that matters, and the reason a human is not doing it with a regex.
Names that look almost identical are often different legal obligations:

  required_quality_management_system  vs  required_risk_management_system
      DIFFERENT. Quality management and risk management are separate obligations in
      separate articles. Do not merge them.

  prohibited_social_scoring  vs  permitted_social_scoring
      DIFFERENT. Opposite modalities are never aliases of each other.

  required_risk_management_system  vs  risk_management_system
      DIFFERENT. One is a duty, the other is the thing the duty is about.

  must_publish_annual_report  vs  must_submit_annual_report
      SAME. One act described with two verbs.

A wrong merge is worse than a missed one. A missed merge leaves two names that each
still mean what they say; a wrong merge produces a program that looks better connected
and answers queries incorrectly, and nothing downstream can detect it. When the glosses
do not make it clear that two names denote the same thing, leave them separate.

## Output format

Plain Prolog only. No prose, no markdown fences, no commentary. Declarations first,
then alias facts. Comments starting with % are allowed for grouping.
"""

RECONCILE_USER = """\
=== PREDICATES INTRODUCED BY PHASE B ({n} names over {n_files} provisions) ===
{inventory}"""


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


def build_reconcile_messages(inventory: str, n: int, n_files: int) -> list[dict]:
    return [
        {"role": "system", "content": RECONCILE_PROMPT},
        {"role": "user", "content": RECONCILE_USER.format(
            inventory=inventory, n=n, n_files=n_files)},
    ]
