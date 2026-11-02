:- module(content_code_of_practice, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_practical_arrangement_support/1,
    objective_detection_mechanism_accessibility/1,
    objective_cooperation/1,
    objective_public_distinction/1
]).

:- dynamic commission/1.
:- dynamic transparency_obligation/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic concerns_content/2.
:- dynamic artificially_generated/1.
:- dynamic artificially_manipulated/1.
:- dynamic detection_mechanism/1.
:- dynamic concerns_mechanism/2.
:- dynamic appropriateness_applies/1.
:- dynamic other_actor/1.
:- dynamic value_chain_applies/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(Obligation) :-
    transparency_obligation(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation(Obligation).

permitted_encouragement(encouragement(Commission, drawing_up(Code))) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    objective_effective_implementation(Code).

permitted_facilitation(facilitation(Commission, drawing_up(Code))) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    objective_effective_implementation(Code).

objective_effective_implementation(Code) :-
    code_of_practice(Code),
    union_level(Code),
    concerns_content(Code, Content),
    artificially_generated(Content).

objective_effective_implementation(Code) :-
    code_of_practice(Code),
    union_level(Code),
    concerns_content(Code, Content),
    artificially_manipulated(Content).

objective_effective_implementation(
    drawing_up(Code, obligation(detection(Content), labelling(Content)))) :-
    objective_effective_implementation(Code),
    concerns_content(Code, Content).

objective_practical_arrangement_support(Code) :-
    objective_effective_implementation(Code).

objective_detection_mechanism_accessibility(
    practical_arrangement(Code, making_accessible(Mechanism))) :-
    objective_practical_arrangement_support(Code),
    concerns_mechanism(Code, Mechanism),
    detection_mechanism(Mechanism),
    appropriateness_applies(making_accessible(Mechanism)).

objective_cooperation(drawing_up(Code, cooperation(Actor))) :-
    objective_effective_implementation(Code),
    other_actor(Actor),
    value_chain_applies(Actor).

objective_cooperation(drawing_up(Code, cooperation(Actor))) :-
    objective_effective_implementation(Code),
    concerns_content(Code, Content),
    other_actor(Actor),
    disseminates_content(Actor, Content).

objective_cooperation(drawing_up(Code, cooperation(Actor))) :-
    objective_effective_implementation(Code),
    concerns_content(Code, Content),
    other_actor(Actor),
    checks_authenticity(Actor, Content).

objective_cooperation(drawing_up(Code, cooperation(Actor))) :-
    objective_effective_implementation(Code),
    concerns_content(Code, Content),
    other_actor(Actor),
    checks_provenance(Actor, Content).

objective_public_distinction(
    drawing_up(Code, enable(public, effectively_distinguish(artificial_intelligence_generated_content)))) :-
    objective_effective_implementation(Code).
