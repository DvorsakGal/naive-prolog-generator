:- module(code_of_practice_material_labelling, [
    permitted_encouragement_of_code_of_practice/1,
    permitted_facilitation_of_code_of_practice/1,
    encourages_preparation/2,
    facilitates_preparation/2,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_enable_public_distinction/1,
    mandatory/1,
    fully_applicable/1
]).
:- dynamic european_commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic transparency_duty/1.
:- dynamic concerns_detection_and_labelling/2.
:- dynamic artificially_generated_or_manipulated_material/1.

permitted_encouragement_of_code_of_practice(XC) :-
    code_of_practice(XC),
    union_level(XC).

objective_effective_implementation(XC) :-
    code_of_practice(XC),
    union_level(XC),
    transparency_duty(XO),
    concerns_detection_and_labelling(XO, XContent),
    artificially_generated_or_manipulated_material(XContent).

facilitates_preparation(XCommission, XC) :-
    european_commission(XCommission),
    permitted_facilitation_of_code_of_practice(XC).

permitted_facilitation_of_code_of_practice(XC) :-
    code_of_practice(XC),
    union_level(XC).

fully_applicable(XO) :-
    transparency_duty(XO).

objective_support_practical_arrangement(XC) :-
    objective_effective_implementation(XC).

objective_enable_public_distinction(XC) :-
    objective_support_practical_arrangement(XC).

mandatory(XO) :-
    transparency_duty(XO).

encourages_preparation(XCommission, XC) :-
    european_commission(XCommission),
    permitted_encouragement_of_code_of_practice(XC).
