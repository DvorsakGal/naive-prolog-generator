:- module(transparency_obligations, [
    mandatory_transparency_obligations/0,
    full_applicability_transparency_obligations/0,
    may_encourage_codes_of_practice/1,
    may_facilitate_codes_of_practice/1,
    code_of_practice/1,
    union_level/1,
    objective_facilitate_implementation/1,
    obligation_detection_artificially_generated_content/1,
    obligation_labelling_artificially_generated_content/1,
    obligation_detection_manipulated_content/1,
    obligation_labelling_manipulated_content/1,
    objective_support_practical_arrangements/1,
    practical_arrangement_accessible_detection_mechanisms/1,
    practical_arrangement_cooperation_value_chain/1,
    practical_arrangement_disseminating_content/1,
    practical_arrangement_checking_authenticity_provenance/1,
    objective_enable_public_distinguish_ai_generated_content/1
]).

:- dynamic commission/1.

% Core properties stated in the text
mandatory_transparency_obligations.
full_applicability_transparency_obligations.

% The Commission's powers regarding codes of practice
may_encourage_codes_of_practice(Commission) :-
    commission(Commission).

may_facilitate_codes_of_practice(Commission) :-
    commission(Commission).

% Codes of practice are at Union level
union_level(code_of_practice).

% Purpose of codes of practice: facilitate effective implementation of obligations
objective_facilitate_implementation(Code) :-
    code_of_practice(Code),
    union_level(Code).

% The specific obligations regarding detection and labelling
obligation_detection_artificially_generated_content(transparency_obligations).
obligation_labelling_artificially_generated_content(transparency_obligations).
obligation_detection_manipulated_content(transparency_obligations).
obligation_labelling_manipulated_content(transparency_obligations).

% Practical arrangements supported by codes of practice
objective_support_practical_arrangements(Code) :-
    code_of_practice(Code).

practical_arrangement_accessible_detection_mechanisms(Code) :-
    code_of_practice(Code),
    objective_support_practical_arrangements(Code).

practical_arrangement_cooperation_value_chain(Code) :-
    code_of_practice(Code),
    objective_support_practical_arrangements(Code).

practical_arrangement_disseminating_content(Code) :-
    code_of_practice(Code),
    objective_support_practical_arrangements(Code).

practical_arrangement_checking_authenticity_provenance(Code) :-
    code_of_practice(Code),
    objective_support_practical_arrangements(Code).

% Ultimate objective: enable public to distinguish AI-generated content
objective_enable_public_distinguish_ai_generated_content(Code) :-
    code_of_practice(Code),
    practical_arrangement_disseminating_content(Code),
    practical_arrangement_checking_authenticity_provenance(Code).
