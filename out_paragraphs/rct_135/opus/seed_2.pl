:- module(code_of_practice_ai_content_labelling, [
    permitted_encouragement_of_code_of_practice/1,
    permitted_facilitation_of_code_of_practice/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_public_distinguish_ai_generated_content/1,
    mandatory/1,
    fully_applicable/1,
    encourages_drawing_up/2,
    facilitates_drawing_up/2
]).

:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic transparency_obligation/1.
:- dynamic detection_and_labelling_obligation/1.
:- dynamic artificially_generated_or_manipulated_content/1.

% Transparency obligations remain mandatory and fully applicable
mandatory(O) :-
    transparency_obligation(O).

fully_applicable(O) :-
    transparency_obligation(O).

% The Commission may encourage and facilitate codes of practice at Union level
permitted_encouragement_of_code_of_practice(encourage(C, Code)) :-
    commission(C),
    code_of_practice(Code),
    union_level(Code).

permitted_facilitation_of_code_of_practice(facilitate(C, Code)) :-
    commission(C),
    code_of_practice(Code),
    union_level(Code).

encourages_drawing_up(C, Code) :-
    commission(C),
    code_of_practice(Code),
    union_level(Code).

facilitates_drawing_up(C, Code) :-
    commission(C),
    code_of_practice(Code),
    union_level(Code).

% Purposes of the codes of practice
objective_effective_implementation(Code) :-
    code_of_practice(Code),
    union_level(Code),
    detection_and_labelling_obligation(_O).

objective_support_practical_arrangement(arrangement(Code, accessible_detection_mechanism)) :-
    code_of_practice(Code),
    union_level(Code).

objective_support_practical_arrangement(arrangement(Code, cooperation(value_chain_actor))) :-
    code_of_practice(Code),
    union_level(Code).

objective_support_practical_arrangement(arrangement(Code, cooperation(content_disseminator))) :-
    code_of_practice(Code),
    union_level(Code).

objective_support_practical_arrangement(arrangement(Code, cooperation(authenticity_and_provenance_checker))) :-
    code_of_practice(Code),
    union_level(Code).

objective_public_distinguish_ai_generated_content(distinguish(Code, Content)) :-
    code_of_practice(Code),
    union_level(Code),
    artificially_generated_or_manipulated_content(Content).
