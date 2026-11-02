:- module(content_code_of_practice, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_facilitate_cooperation/1,
    objective_enable_public_distinction/1,
    relevant_actor_applies/1
]).

:- dynamic commission/1.
:- dynamic union_level_code_of_practice/1.
:- dynamic transparency_obligation/1.
:- dynamic detection_mechanism/1.
:- dynamic appropriateness_applies/1.
:- dynamic value_chain_actor/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(Obligation) :-
    transparency_obligation(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation(Obligation).

permitted_encouragement(encouragement(Commission, drawing_up(Code))) :-
    commission(Commission),
    union_level_code_of_practice(Code).

permitted_facilitation(facilitation(Commission, drawing_up(Code))) :-
    commission(Commission),
    union_level_code_of_practice(Code).

objective_effective_implementation(
    code_of_practice(Code, obligation(detection, artificially_generated_content))) :-
    union_level_code_of_practice(Code).

objective_effective_implementation(
    code_of_practice(Code, obligation(labelling, artificially_generated_content))) :-
    union_level_code_of_practice(Code).

objective_effective_implementation(
    code_of_practice(Code, obligation(detection, artificially_manipulated_content))) :-
    union_level_code_of_practice(Code).

objective_effective_implementation(
    code_of_practice(Code, obligation(labelling, artificially_manipulated_content))) :-
    union_level_code_of_practice(Code).

objective_support_practical_arrangement(
    code_of_practice(Code, making_accessible(Mechanism))) :-
    union_level_code_of_practice(Code),
    detection_mechanism(Mechanism),
    appropriateness_applies(making_accessible(Mechanism)).

objective_facilitate_cooperation(
    code_of_practice(Code, cooperation_with(Actor))) :-
    union_level_code_of_practice(Code),
    relevant_actor_applies(Actor).

relevant_actor_applies(Actor) :-
    value_chain_actor(Actor).

relevant_actor_applies(Actor) :-
    disseminates_content(Actor, _Content).

relevant_actor_applies(Actor) :-
    checks_authenticity(Actor, Content),
    checks_provenance(Actor, Content).

objective_enable_public_distinction(
    code_of_practice(Code, effective_distinction(public, artificial_intelligence_generated_content))) :-
    union_level_code_of_practice(Code).
