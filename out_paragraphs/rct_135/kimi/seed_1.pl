:- module(transparency_obligations, [
    mandatory_transparency_obligations/0,
    full_applicability_transparency_obligations/0,
    may_encourage_code_of_practice/2,
    may_facilitate_code_of_practice/2,
    code_of_practice/1,
    union_level/1,
    facilitates_effective_implementation/1,
    obligation_detection_artificially_generated_content/1,
    obligation_labelling_artificially_generated_content/1,
    supports_practical_arrangements/1,
    makes_accessible/2,
    detection_mechanism/1,
    facilitates_cooperation/2,
    other_actor_value_chain/1,
    disseminates_content/1,
    checks_authenticity/1,
    checks_provenance/1,
    enables_public_distinguish/2,
    ai_generated_content/1
]).

mandatory_transparency_obligations.
full_applicability_transparency_obligations.

may_encourage_code_of_practice(commission, Code) :-
    code_of_practice(Code),
    union_level(Code).

may_facilitate_code_of_practice(commission, Code) :-
    code_of_practice(Code),
    union_level(Code).

facilitates_effective_implementation(Code) :-
    code_of_practice(Code),
    union_level(Code),
    obligation_detection_artificially_generated_content(_),
    obligation_labelling_artificially_generated_content(_).

supports_practical_arrangements(Code) :-
    code_of_practice(Code),
    union_level(Code),
    makes_accessible(Code, Mechanism),
    detection_mechanism(Mechanism).

supports_practical_arrangements(Code) :-
    code_of_practice(Code),
    union_level(Code),
    facilitates_cooperation(Code, Actor),
    other_actor_value_chain(Actor).

supports_practical_arrangements(Code) :-
    code_of_practice(Code),
    union_level(Code),
    disseminates_content(Actor),
    other_actor_value_chain(Actor).

supports_practical_arrangements(Code) :-
    code_of_practice(Code),
    union_level(Code),
    checks_authenticity(Actor),
    other_actor_value_chain(Actor).

supports_practical_arrangements(Code) :-
    code_of_practice(Code),
    union_level(Code),
    checks_provenance(Actor),
    other_actor_value_chain(Actor).

enables_public_distinguish(Code, Content) :-
    code_of_practice(Code),
    union_level(Code),
    ai_generated_content(Content).

:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic obligation_detection_artificially_generated_content/1.
:- dynamic obligation_labelling_artificially_generated_content/1.
:- dynamic detection_mechanism/1.
:- dynamic other_actor_value_chain/1.
:- dynamic ai_generated_content/1.
