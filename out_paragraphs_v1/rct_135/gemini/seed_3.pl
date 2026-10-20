:- module(codes_of_practice_transparency, [
    transparency_obligation_applies/1,
    mandatory_transparency_obligation/1,
    permitted_encourage/2,
    permitted_facilitate/2,
    drawing_up_codes_of_practice/1,
    union_level/1,
    objective_facilitate_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_enable_public_distinguish_ai_generated_content/1
]).

:- dynamic transparency_obligation/1.
:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic detection_and_labelling_obligation/1.
:- dynamic practical_arrangement/1.

% Without prejudice to mandatory nature and full applicability of transparency obligations
transparency_obligation_applies(Obligation) :-
    transparency_obligation(Obligation).

mandatory_transparency_obligation(Obligation) :-
    transparency_obligation(Obligation).

% The Commission may encourage and facilitate drawing up of codes of practice at Union level
permitted_encourage(Commission, drawing_up(Code)) :-
    commission(Commission),
    drawing_up_codes_of_practice(Code).

permitted_facilitate(Commission, drawing_up(Code)) :-
    commission(Commission),
    drawing_up_codes_of_practice(Code).

drawing_up_codes_of_practice(Code) :-
    code_of_practice(Code),
    union_level(Code),
    objective_facilitate_effective_implementation(Code).

union_level(Code) :-
    code_of_practice(Code).

% Objective to facilitate effective implementation of obligations regarding detection and labelling
objective_facilitate_effective_implementation(Code) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation),
    objective_support_practical_arrangement(Obligation).

% Including to support practical arrangements...
objective_support_practical_arrangement(Obligation) :-
    detection_and_labelling_obligation(Obligation),
    practical_arrangement(practical_arrangement(
        detection_mechanism_accessible,
        cooperation_along_value_chain,
        disseminating_content,
        checking_authenticity_and_provenance
    )),
    objective_enable_public_distinguish_ai_generated_content(Obligation).

% To enable the public to effectively distinguish AI-generated content
objective_enable_public_distinguish_ai_generated_content(Obligation) :-
    detection_and_labelling_obligation(Obligation).
