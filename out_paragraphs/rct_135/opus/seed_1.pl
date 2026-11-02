:- module(code_of_practice_content_labelling, [
    permitted_encourage_code_of_practice/1,
    permitted_facilitate_code_of_practice/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_public_distinguish_ai_generated_content/1,
    mandatory/1,
    fully_applicable/1
]).

:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic transparency_obligation/1.
:- dynamic content_detection_labelling_obligation/1.

% Transparency obligations remain mandatory and fully applicable
mandatory(O) :-
    transparency_obligation(O).

fully_applicable(O) :-
    transparency_obligation(O).

% The Commission may encourage and facilitate drawing up of codes of practice at Union level
permitted_encourage_code_of_practice(drawing_up(Commission, C)) :-
    commission(Commission),
    code_of_practice(C),
    union_level(C).

permitted_facilitate_code_of_practice(drawing_up(Commission, C)) :-
    commission(Commission),
    code_of_practice(C),
    union_level(C).

% Purpose: effective implementation of detection and labelling obligations
objective_effective_implementation(implementation(C, O)) :-
    code_of_practice(C),
    union_level(C),
    content_detection_labelling_obligation(O).

% Purpose: support practical arrangements
objective_support_practical_arrangement(arrangement(C, accessible_detection_mechanism)) :-
    code_of_practice(C),
    union_level(C).

objective_support_practical_arrangement(arrangement(C, cooperation(value_chain_actor))) :-
    code_of_practice(C),
    union_level(C).

objective_support_practical_arrangement(arrangement(C, cooperation(content_disseminator))) :-
    code_of_practice(C),
    union_level(C).

objective_support_practical_arrangement(arrangement(C, cooperation(authenticity_provenance_checker))) :-
    code_of_practice(C),
    union_level(C).

% Ultimate purpose: enable the public to distinguish AI-generated content
objective_public_distinguish_ai_generated_content(C) :-
    code_of_practice(C),
    union_level(C).
