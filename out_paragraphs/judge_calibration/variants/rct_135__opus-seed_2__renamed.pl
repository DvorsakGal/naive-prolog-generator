:- module(code_of_practice_ai_material_labelling, [
    permitted_encouragement_of_code_of_practice/1,
    permitted_facilitation_of_code_of_practice/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_public_distinguish_ai_generated_material/1,
    mandatory/1,
    fully_applicable/1,
    encourages_preparation/2,
    facilitates_preparation/2
]).
:- dynamic european_commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic transparency_duty/1.
:- dynamic detection_and_labelling_duty/1.
:- dynamic artificially_generated_or_manipulated_material/1.

objective_public_distinguish_ai_generated_material(distinguish(XCode, XContent)) :-
    code_of_practice(XCode),
    union_level(XCode),
    artificially_generated_or_manipulated_material(XContent).

objective_effective_implementation(XCode) :-
    code_of_practice(XCode),
    union_level(XCode),
    detection_and_labelling_duty(_O).

permitted_facilitation_of_code_of_practice(facilitate(XC, XCode)) :-
    european_commission(XC),
    code_of_practice(XCode),
    union_level(XCode).

encourages_preparation(XC, XCode) :-
    european_commission(XC),
    code_of_practice(XCode),
    union_level(XCode).

mandatory(XO) :-
    transparency_duty(XO).

permitted_encouragement_of_code_of_practice(encourage(XC, XCode)) :-
    european_commission(XC),
    code_of_practice(XCode),
    union_level(XCode).

objective_support_practical_arrangement(arrangement(XCode, cooperation(material_disseminator))) :-
    code_of_practice(XCode),
    union_level(XCode).

facilitates_preparation(XC, XCode) :-
    european_commission(XC),
    code_of_practice(XCode),
    union_level(XCode).

objective_support_practical_arrangement(arrangement(XCode, accessible_detection_mechanism)) :-
    code_of_practice(XCode),
    union_level(XCode).

fully_applicable(XO) :-
    transparency_duty(XO).

objective_support_practical_arrangement(arrangement(XCode, cooperation(authenticity_and_provenance_checker))) :-
    code_of_practice(XCode),
    union_level(XCode).

objective_support_practical_arrangement(arrangement(XCode, cooperation(value_chain_actor))) :-
    code_of_practice(XCode),
    union_level(XCode).
