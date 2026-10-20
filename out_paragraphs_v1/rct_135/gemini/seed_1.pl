:- module(transparency_codes_of_practice, [
    transparency_obligation_applies/1,
    mandatory_transparency_obligation/1,
    permitted_encourage/2,
    permitted_facilitate/2,
    objective_effective_implementation/1,
    objective_distinguish_ai_content/1
]).

:- dynamic transparency_obligation/1.
:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic detection_and_labelling_obligation/1.

% Without prejudice to mandatory nature and full applicability
transparency_obligation_applies(Obligation) :-
    transparency_obligation(Obligation).

mandatory_transparency_obligation(Obligation) :-
    transparency_obligation(Obligation).

% The Commission may encourage the drawing up of codes of practice at Union level
permitted_encourage(Commission, drawing_up(Code)) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    objective_effective_implementation(Code).

% The Commission may facilitate the drawing up of codes of practice at Union level
permitted_facilitate(Commission, drawing_up(Code)) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code),
    objective_effective_implementation(Code).

% To facilitate effective implementation of obligations regarding detection and labelling
objective_effective_implementation(Code) :-
    code_of_practice(Code),
    supports_obligation(Code, Obligation),
    detection_and_labelling_obligation(Obligation).

% Including to support practical arrangements to enable the public to distinguish AI-generated content
objective_distinguish_ai_content(Code) :-
    code_of_practice(Code),
    supports_practical_arrangement(Code, _Arrangement).

% Practical arrangements include accessible detection mechanisms, value chain cooperation, dissemination, authenticity/provenance checks
supports_practical_arrangement(Code, accessible_detection_mechanism) :-
    code_of_practice(Code).

supports_practical_arrangement(Code, facilitate_value_chain_cooperation) :-
    code_of_practice(Code).

supports_practical_arrangement(Code, content_dissemination) :-
    code_of_practice(Code).

supports_practical_arrangement(Code, check_authenticity_and_provenance) :-
    code_of_practice(Code).

% Support detection and labelling obligations
supports_obligation(Code, Obligation) :-
    code_of_practice(Code),
    detection_and_labelling_obligation(Obligation).

union_level(Code) :-
    code_of_practice(Code).
