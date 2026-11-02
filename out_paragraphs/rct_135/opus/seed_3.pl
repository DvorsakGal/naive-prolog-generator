:- module(code_of_practice_content_labelling, [
    permitted_encouragement_of_code_of_practice/1,
    permitted_facilitation_of_code_of_practice/1,
    encourages_drawing_up/2,
    facilitates_drawing_up/2,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_enable_public_distinction/1,
    mandatory/1,
    fully_applicable/1
]).

:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic transparency_obligation/1.
:- dynamic concerns_detection_and_labelling/2.
:- dynamic artificially_generated_or_manipulated_content/1.

% Transparency obligations remain mandatory and fully applicable
mandatory(O) :-
    transparency_obligation(O).

fully_applicable(O) :-
    transparency_obligation(O).

% The Commission may encourage and facilitate codes of practice at Union level
permitted_encouragement_of_code_of_practice(C) :-
    code_of_practice(C),
    union_level(C).

permitted_facilitation_of_code_of_practice(C) :-
    code_of_practice(C),
    union_level(C).

encourages_drawing_up(Commission, C) :-
    commission(Commission),
    permitted_encouragement_of_code_of_practice(C).

facilitates_drawing_up(Commission, C) :-
    commission(Commission),
    permitted_facilitation_of_code_of_practice(C).

% Purpose: effective implementation of detection and labelling obligations
objective_effective_implementation(C) :-
    code_of_practice(C),
    union_level(C),
    transparency_obligation(O),
    concerns_detection_and_labelling(O, Content),
    artificially_generated_or_manipulated_content(Content).

% Purpose: practical arrangements for accessible detection mechanisms and
% cooperation with other value chain actors disseminating or verifying content
objective_support_practical_arrangement(C) :-
    objective_effective_implementation(C).

% Purpose: enable the public to effectively distinguish AI-generated content
objective_enable_public_distinction(C) :-
    objective_support_practical_arrangement(C).
