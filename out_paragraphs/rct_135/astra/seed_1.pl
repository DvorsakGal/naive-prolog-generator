:- module(content_transparency_code, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    union_level/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_facilitate_cooperation/1,
    objective_enable_effective_distinction/1,
    relevant_value_chain_actor/1
]).

:- dynamic transparency_obligation/1.
:- dynamic commission/1.
:- dynamic content_transparency_code_of_practice/1.
:- dynamic appropriate_accessibility_applies/1.
:- dynamic other_value_chain_actor/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(Obligation) :-
    transparency_obligation(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation(Obligation).

permitted_encouragement(encouragement(Commission, drawing_up(Code))) :-
    commission(Commission),
    content_transparency_code_of_practice(Code).

permitted_facilitation(facilitation(Commission, drawing_up(Code))) :-
    commission(Commission),
    content_transparency_code_of_practice(Code).

union_level(Code) :-
    content_transparency_code_of_practice(Code).

objective_effective_implementation(
    code_purpose(Code, obligation(detection, artificially_generated_content))
) :-
    content_transparency_code_of_practice(Code).

objective_effective_implementation(
    code_purpose(Code, obligation(labelling, artificially_generated_content))
) :-
    content_transparency_code_of_practice(Code).

objective_effective_implementation(
    code_purpose(Code, obligation(detection, manipulated_content))
) :-
    content_transparency_code_of_practice(Code).

objective_effective_implementation(
    code_purpose(Code, obligation(labelling, manipulated_content))
) :-
    content_transparency_code_of_practice(Code).

objective_support_practical_arrangement(
    code_purpose(Code, making_accessible(detection_mechanism))
) :-
    content_transparency_code_of_practice(Code),
    appropriate_accessibility_applies(Code).

relevant_value_chain_actor(Actor) :-
    other_value_chain_actor(Actor),
    disseminates_content(Actor, _Content).

relevant_value_chain_actor(Actor) :-
    other_value_chain_actor(Actor),
    checks_authenticity(Actor, Content),
    checks_provenance(Actor, Content).

objective_facilitate_cooperation(
    code_purpose(Code, cooperation_with(Actor))
) :-
    content_transparency_code_of_practice(Code),
    relevant_value_chain_actor(Actor).

objective_enable_effective_distinction(
    code_purpose(Code, distinction_by(public, artificially_generated_content))
) :-
    content_transparency_code_of_practice(Code).
