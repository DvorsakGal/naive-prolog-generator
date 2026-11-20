:- module(content_transparency, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    union_level/1,
    objective_effective_implementation/1,
    objective_practical_arrangement_support/1,
    objective_cooperation_facilitation/1,
    objective_public_distinction/1,
    relevant_content/1,
    relevant_obligation/1,
    relevant_cooperation_actor/1
]).

:- dynamic commission/1.
:- dynamic artificially_generated/1.
:- dynamic artificially_manipulated/1.
:- dynamic along_value_chain/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(encouragement(Commission, drawing_up(content_transparency_code_of_practice))) :-
    commission(Commission).

permitted_facilitation(facilitation(Commission, drawing_up(content_transparency_code_of_practice))) :-
    commission(Commission).

union_level(content_transparency_code_of_practice).

relevant_content(Content) :-
    artificially_generated(Content).
relevant_content(Content) :-
    artificially_manipulated(Content).

relevant_obligation(detection(Content)) :-
    relevant_content(Content).
relevant_obligation(labelling(Content)) :-
    relevant_content(Content).

objective_effective_implementation(code_of_practice(content_transparency_code_of_practice, Obligation)) :-
    relevant_obligation(Obligation).

objective_practical_arrangement_support(
    code_of_practice(content_transparency_code_of_practice,
        practical_arrangement(making_accessible(detection_mechanism), as_appropriate))).

relevant_cooperation_actor(Actor) :-
    along_value_chain(Actor).
relevant_cooperation_actor(Actor) :-
    disseminates_content(Actor, _Content).
relevant_cooperation_actor(Actor) :-
    checks_authenticity(Actor, _Content).
relevant_cooperation_actor(Actor) :-
    checks_provenance(Actor, _Content).

objective_cooperation_facilitation(
    code_of_practice(content_transparency_code_of_practice, cooperation(other_actor(Actor)))) :-
    relevant_cooperation_actor(Actor).

objective_public_distinction(
    code_of_practice(content_transparency_code_of_practice,
        enabling(public, effectively_distinguish(artificial_intelligence_generated_content)))).
