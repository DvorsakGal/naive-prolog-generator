:- module(transparency_codes_of_practice, [
    transparency_obligation_applies/1,
    mandatory_transparency_obligation/1,
    permitted_encourage_and_facilitate/2,
    code_of_practice/1,
    objective_implementation/1,
    objective_distinguish_ai_generated_content/1
]).

:- dynamic commission/1.
:- dynamic transparency_obligation/1.
:- dynamic union_level/1.
:- dynamic detection_and_labelling_obligation/1.
:- dynamic detection_mechanism_accessible/1.
:- dynamic value_chain_cooperation/1.
:- dynamic content_dissemination/1.
:- dynamic checking_authenticity_and_provenance/1.

% Without prejudice to the mandatory nature and full applicability of the transparency obligations
transparency_obligation_applies(Obligation) :-
    transparency_obligation(Obligation).

mandatory_transparency_obligation(Obligation) :-
    transparency_obligation(Obligation).

% The Commission may also encourage and facilitate the drawing up of codes of practice at Union level
permitted_encourage_and_facilitate(Commission, drawing_up(Code)) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    objective_implementation(Code).

% Codes of practice to facilitate the effective implementation of the obligations
% regarding the detection and labelling of artificially generated or manipulated content,
% including supporting practical arrangements.
objective_implementation(Code) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation),
    objective_support_arrangements(Code, Obligation).

objective_support_arrangements(Code, Obligation) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation),
    detection_mechanism_accessible(Code).

objective_support_arrangements(Code, Obligation) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation),
    value_chain_cooperation(Code).

objective_support_arrangements(Code, Obligation) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation),
    content_dissemination(Code).

objective_support_arrangements(Code, Obligation) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation),
    checking_authenticity_and_provenance(Code),
    objective_distinguish_ai_generated_content(Code).

% To enable the public to effectively distinguish AI-generated content
objective_distinguish_ai_generated_content(Code) :-
    code_of_practice(Code),
    checking_authenticity_and_provenance(Code).

code_of_practice(code_of_practice_detection_labelling).
code_of_practice(Code) :-
    union_level(Code),
    detection_and_labelling_obligation(_Obligation).
