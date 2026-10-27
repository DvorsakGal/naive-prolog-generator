:- module(transparency_obligations, [
    mandatory/1,
    fully_applicable/1,
    transparency_obligations/1,
    may_encourage/2,
    may_facilitate/2,
    code_of_practice/1,
    union_level/1,
    facilitates_implementation/2,
    obligation/1,
    detection_obligation/1,
    labelling_obligation/1,
    artificially_generated_content/1,
    manipulated_content/1,
    supports_practical_arrangements/2,
    detection_mechanism/1,
    accessible/1,
    facilitates_cooperation/2,
    actor/1,
    value_chain/1,
    disseminates_content/1,
    checks_authenticity/1,
    checks_provenance/1,
    enables_distinction/2,
    public/1,
    ai_generated_content/1
]).

mandatory(transparency_obligations).
fully_applicable(transparency_obligations).
transparency_obligations(transparency_obligations).

may_encourage(commission, drawing_up(Code)) :-
    code_of_practice(Code),
    union_level(Code).

may_facilitate(commission, drawing_up(Code)) :-
    code_of_practice(Code),
    union_level(Code).

facilitates_implementation(Code, Obligation) :-
    code_of_practice(Code),
    union_level(Code),
    obligation(Obligation),
    detection_obligation(Obligation).

facilitates_implementation(Code, Obligation) :-
    code_of_practice(Code),
    union_level(Code),
    obligation(Obligation),
    labelling_obligation(Obligation).

detection_obligation(detection(artificially_generated_content)).
detection_obligation(detection(manipulated_content)).
labelling_obligation(labelling(artificially_generated_content)).
labelling_obligation(labelling(manipulated_content)).

artificially_generated_content(artificially_generated_content).
manipulated_content(manipulated_content).

supports_practical_arrangements(Code, making_accessible(Mechanism)) :-
    code_of_practice(Code),
    union_level(Code),
    detection_mechanism(Mechanism),
    accessible(Mechanism).

supports_practical_arrangements(Code, facilitating_cooperation(Actor)) :-
    code_of_practice(Code),
    union_level(Code),
    actor(Actor),
    value_chain(Actor).

supports_practical_arrangements(Code, disseminating_content(Actor)) :-
    code_of_practice(Code),
    union_level(Code),
    actor(Actor),
    disseminates_content(Actor).

supports_practical_arrangements(Code, checking_authenticity(Actor)) :-
    code_of_practice(Code),
    union_level(Code),
    actor(Actor),
    checks_authenticity(Actor).

supports_practical_arrangements(Code, checking_provenance(Actor)) :-
    code_of_practice(Code),
    union_level(Code),
    actor(Actor),
    checks_provenance(Actor).

enables_distinction(Code, public(Public)) :-
    code_of_practice(Code),
    union_level(Code),
    public(Public),
    ai_generated_content(Content).

:- dynamic commission/1, drawing_up/1, obligation/1, detection_mechanism/1, actor/1, value_chain/1, disseminates_content/1, checks_authenticity/1, checks_provenance/1, public/1, ai_generated_content/1.
