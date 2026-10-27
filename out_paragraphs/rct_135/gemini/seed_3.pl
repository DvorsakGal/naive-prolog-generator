:- module(codes_of_practice_transparency, [
    permitted_encourage_and_facilitate/2,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    required_transparency_obligation/1,
    full_applicability_applies/1
]).

:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic detection_and_labelling_obligation/1.
:- dynamic artificially_generated_or_manipulated_content/1.
:- dynamic transparency_obligation/1.

% Without prejudice to the mandatory nature and full applicability of transparency obligations
required_transparency_obligation(Obligation) :-
    transparency_obligation(Obligation).

full_applicability_applies(Obligation) :-
    transparency_obligation(Obligation).

% The Commission may encourage and facilitate the drawing up of codes of practice at Union level
% to facilitate the effective implementation of obligations regarding detection and labelling
permitted_encourage_and_facilitate(Commission, drawing_up(Code)) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    objective_effective_implementation(Code).

% To facilitate effective implementation of obligations regarding detection and labelling
objective_effective_implementation(Code) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation),
    artificially_generated_or_manipulated_content(Content),
    relates_to(Obligation, Content).

% Including to support practical arrangements:
% - making detection mechanisms accessible, as appropriate
% - facilitating cooperation with other actors along the value chain
% - disseminating content or checking authenticity and provenance
% - enabling the public to effectively distinguish AI-generated content
objective_support_practical_arrangement(Code) :-
    code_of_practice(Code),
    objective_effective_implementation(Code).

:- dynamic relates_to/2.
