"""The paragraph prompt: one piece of text in, one small Prolog module out.

WHAT THIS IS, AND WHAT IT IS NOT
--------------------------------
`prompts.py` holds the three prompts of the frozen-vocabulary pipeline. Each of those
calls knows what it is looking at (a provision of a named regulation), receives the
agreed predicate vocabulary, and is asked for provenance and reference facts so the
pieces can be assembled into one program.

This prompt is deliberately none of that. It is for a stability study: the same text
is handed to several models several times, and the outputs are compared to each other
(Jaccard over predicates and clauses, or an LLM judge). To keep that comparison honest
the prompt tells the model exactly five things and nothing else:

  1. It will receive some text. It is not told how much, or what the text is about.
  2. It converts the text into first-order logic written as Prolog.
  3. The coding standards from the main pipeline apply (naming forms, arities, the
     lexical rule for atoms, variables, negation). These exist to take noise out of
     the metrics: two outputs that differ only in `authorised` vs `authorized`, or
     in must_inform/2 vs must_inform/3, would otherwise read as disagreement.
  4. The whole text has to be captured. This is left vague on purpose; what a model
     takes "whole" to mean is one of the things the study is looking at.
  5. Everything goes in ONE small Prolog module. A module gives the output a fixed
     outer shape, which makes parsing and later merging mechanical, and it is a far
     more general instruction than telling the model what to say with the logic.

No signature is supplied, so the model names everything itself. No provenance or
references are asked for, because the model is not told where the text comes from.
The harness is responsible for recording which text went in.

MODULE NAME
-----------
The model has to pick the module name, since the prompt cannot name the text. It is
asked for a short lower_snake_case name taken from the subject matter. Two runs over
the same text may pick different names; the harness normalises the name before any
metric is computed, so the choice costs nothing in the comparison.
"""
from __future__ import annotations

PARAGRAPH_PROMPT = """\
You will be given a piece of text. You are not told what it is about or how long it is.

Translate the text into first-order logic, written as Prolog, and return it as ONE
Prolog module.

## What the output is

Clauses a Prolog engine can evaluate. Break each statement in the text into the goals
that have to hold. Do NOT restate the text as a quoted string: a sentence trapped in an
atom cannot be reasoned over.

WRONG -- the content is a string, no query can use it:

    statement(authority, 'shall submit annual reports to the Commission').

RIGHT -- a head, and a body of goals a query can evaluate:

    must_submit(Authority, annual_report(Commission)) :-
        national_authority(Authority),
        commission(Commission),
        used_real_time_identification(Authority).

A rule body must carry the conditions the text actually states. If the body only
repeats what the head already says, the rule adds nothing. If the text states something
unconditional, write it as a fact rather than as a rule with an empty or vacuous body.

## Cover the whole text

Every statement in the text should be represented in the module. Do not summarise, do
not keep only the parts that are easy to formalise, and do not add content the text
does not contain.

## The module

The entire output is one module. The first line is the module declaration, which
exports every predicate the module defines:

    :- module(risk_management_process, [
        risk_management_system/1,
        must_identify_risk/2,
        continuous_process/1
    ]).

- Choose a short lower_snake_case module name from the subject matter of the text.
- Export every predicate you define, as name/arity. Nothing else goes in the list.
- Every predicate called in a rule body must be defined in this module, or be a
  predicate you clearly intend as an input (a fact about the world the text does not
  settle). Declare each such input predicate with `:- dynamic name/arity.` so the
  module loads without warnings.
- Comments starting with % are allowed for grouping.

## Naming -- follow this exactly

This module will be combined with modules written from other texts, by calls that
cannot see yours. If two of them name the same thing differently, their clauses will
never connect, and nothing will error. So names are not free choices. Build each one
from these forms. **The arity is part of the form.**

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
real_time(S), urgency_applies(S), must_notify(Authority, S), places_on_market(P, S).

Arity rules:

1. A duty on a named party is always `must_<verb>(Actor, Object)`, never
   `required_<thing>` with two arguments. `required_<thing>` is always unary.

       WRONG   required_compliance(Operator, S)
       RIGHT   must_comply(Operator, S)

2. Never add an argument to fit extra detail. Put it inside a compound term so the
   arity stays as the form says:

       WRONG   must_inform(Body, Authority, approval)
       RIGHT   must_inform(Body, approval(Authority))

3. Every atom and every functor starts with a lowercase letter -- never a digit,
   never an underscore. `10_years` is a syntax error. Put numbers in their own
   argument: `years(10)`, `within(days(10))`, `percent(3)`.

Further constraints:
- Name the SUBJECT MATTER, never the position of the text (no `paragraph_2_applies`).
- Never abbreviate: remote_biometric_identification, not rbi.
- Singular, not plural. British spelling (authorised, not authorized).
- Modality first, then subject: prohibited_social_scoring, not
  social_scoring_prohibited.
- Compound terms are encouraged where the text describes a purpose or an object:
  deployment(S, confirm_identity(P)), rather than flattening everything into atoms.

## Variables

Every variable in a clause is used at least twice, or is written with a leading
underscore. If the text does not care who performs an act, write `places_on_market(_P, S)`.

## Negation

You may use negation-as-failure (\\+), but ONLY over a predicate this module also
defines by at least one clause. `\\+ Goal` means 'Goal cannot be proven here', not
'Goal is false'. If the text states a rule with exceptions, write the exceptions as
clauses of a permission predicate in this module, then negate that. If the exceptions
are not in the text, do not use \\+; state the positive condition instead.

## Form

- Output ONLY the Prolog module. No prose, no markdown fences, no commentary before
  or after it.
- Variables are Uppercase; predicates, atoms and the module name are lower_snake_case.
- Quote atoms containing punctuation in single quotes; double any internal apostrophe.
- Every clause ends with a period.
- Prefer several short clauses over one clause with a very long body.
"""

PARAGRAPH_USER = """\
{text}"""


def build_paragraph_messages(text: str) -> list[dict]:
    """The exact messages sent for one text. The harness hashes these for its cache."""
    return [
        {"role": "system", "content": PARAGRAPH_PROMPT},
        {"role": "user", "content": PARAGRAPH_USER.format(text=text)},
    ]


if __name__ == "__main__":
    # Print the prompt so it can be read and reviewed as the model will see it.
    print(PARAGRAPH_PROMPT)
