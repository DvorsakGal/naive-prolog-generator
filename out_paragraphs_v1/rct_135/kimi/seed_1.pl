:- module(transparency_obligations, [
    mandatory_transparency_obligations/1,
    full_applicability/1,
    may_encourage/1,
    may_facilitate/1,
    code_of_practice/1,
    union_level/1,
    objective_effective_implementation/1,
    obligation/1,
    detection_obligation/1,
    labelling_obligation/1,
    artificially_generated_content/1,
    manipulated_content/1,
    required_detection_mechanism/1,
    must_make_accessible/1,
    must_facilitate_cooperation/1,
    actor_along_value_chain/1,
    disseminates_content/1,
    checks_authenticity/1,
    checks_provenance/1,
    objective_enable_public_distinction/1,
    ai_generated_content/1
]).

:- dynamic commission/1.

% The mandatory nature and full applicability of transparency obligations
mandatory_transparency_obligations(transparency_obligations).
full_applicability(transparency_obligations).

% The Commission's powers regarding codes of practice
may_encourage(Commission) :-
    commission(Commission).

may_facilitate(Commission) :-
    commission(Commission).

% Codes of practice at Union level
code_of_practice(Code) :-
    union_level(Code),
    objective_effective_implementation(Code).

union_level(union_level_code).

% The obligations regarding detection and labelling
obligation(detection).
obligation(labelling).

detection_obligation(detection).
labelling_obligation(labelling).

artificially_generated_content(Content).
manipulated_content(Content).

% Purpose of codes of practice: effective implementation
objective_effective_implementation(Code) :-
    code_of_practice(Code),
    supports_detection_and_labelling(Code).

supports_detection_and_labelling(Code) :-
    code_of_practice(Code).

% Practical arrangements for making detection mechanisms accessible
required_detection_mechanism(Mechanism) :-
    detection_obligation(detection).

must_make_accessible(Actor, Mechanism) :-
    required_detection_mechanism(Mechanism),
    actor_along_value_chain(Actor).

% Facilitating cooperation with other actors along the value chain
must_facilitate_cooperation(Actor, OtherActor) :-
    actor_along_value_chain(Actor),
    actor_along_value_chain(OtherActor),
    Actor \= OtherActor.

actor_along_value_chain(actor).

% Activities of actors along the value chain
disseminates_content(Actor) :-
    actor_along_value_chain(Actor).

checks_authenticity(Actor) :-
    actor_along_value_chain(Actor).

checks_provenance(Actor) :-
    actor_along_value_chain(Actor).

% Ultimate objective: enable public to distinguish AI-generated content
objective_enable_public_distinction(Code) :-
    code_of_practice(Code).

ai_generated_content(Content).
