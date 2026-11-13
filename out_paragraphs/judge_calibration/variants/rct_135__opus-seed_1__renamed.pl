:- module(code_of_practice_material_labelling, [
    permitted_encourage_code_of_practice/1,
    permitted_facilitate_code_of_practice/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_public_distinguish_ai_generated_material/1,
    mandatory/1,
    fully_applicable/1
]).
:- dynamic european_commission/1.
:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic transparency_duty/1.
:- dynamic material_detection_labelling_duty/1.

objective_support_practical_arrangement(arrangement(XC, cooperation(value_chain_actor))) :-
    code_of_practice(XC),
    union_level(XC).

fully_applicable(XO) :-
    transparency_duty(XO).

permitted_encourage_code_of_practice(preparation(XCommission, XC)) :-
    european_commission(XCommission),
    code_of_practice(XC),
    union_level(XC).

objective_support_practical_arrangement(arrangement(XC, cooperation(material_disseminator))) :-
    code_of_practice(XC),
    union_level(XC).

objective_support_practical_arrangement(arrangement(XC, accessible_detection_mechanism)) :-
    code_of_practice(XC),
    union_level(XC).

permitted_facilitate_code_of_practice(preparation(XCommission, XC)) :-
    european_commission(XCommission),
    code_of_practice(XC),
    union_level(XC).

objective_public_distinguish_ai_generated_material(XC) :-
    code_of_practice(XC),
    union_level(XC).

objective_effective_implementation(implementation(XC, XO)) :-
    code_of_practice(XC),
    union_level(XC),
    material_detection_labelling_duty(XO).

objective_support_practical_arrangement(arrangement(XC, cooperation(authenticity_provenance_checker))) :-
    code_of_practice(XC),
    union_level(XC).

mandatory(XO) :-
    transparency_duty(XO).
