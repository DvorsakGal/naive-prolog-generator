:- module(codes_of_practice_transparency, [
    transparency_obligation_applies/1,
    mandatory_transparency_obligation/1,
    permitted_encourage/2,
    permitted_facilitate/2,
    objective_effective_implementation/1,
    objective_accessible_detection_mechanism/1,
    objective_value_chain_cooperation/1,
    objective_distinguish_ai_generated_content/1
]).

:- dynamic transparency_obligation/1.
:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic drawing_up/1.
:- dynamic obligation_detection_and_labelling/1.
:- dynamic practical_arrangement/1.

% Without prejudice to the mandatory nature and full applicability of the transparency obligations
transparency_obligation_applies(Obligation) :-
    transparency_obligation(Obligation).

mandatory_transparency_obligation(Obligation) :-
    transparency_obligation(Obligation).

% The Commission may also encourage and facilitate the drawing up of codes of practice at Union level
permitted_encourage(Commission, drawing_up(Code)) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    drawing_up(Code).

permitted_facilitate(Commission, drawing_up(Code)) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    drawing_up(Code).

% Objectives of the codes of practice:
% To facilitate the effective implementation of the obligations regarding detection and labelling
objective_effective_implementation(Code) :-
    code_of_practice(Code),
    obligation_detection_and_labelling(Obligation),
    transparency_obligation(Obligation).

% To support practical arrangements for making detection mechanisms accessible
objective_accessible_detection_mechanism(Arrangement) :-
    practical_arrangement(Arrangement).

% Facilitating cooperation with other actors along the value chain, disseminating content
% or checking its authenticity and provenance
objective_value_chain_cooperation(Arrangement) :-
    practical_arrangement(Arrangement).

% To enable the public to effectively distinguish AI-generated content
objective_distinguish_ai_generated_content(Code) :-
    code_of_practice(Code).
objective_distinguish_ai_generated_content(Arrangement) :-
    practical_arrangement(Arrangement).
