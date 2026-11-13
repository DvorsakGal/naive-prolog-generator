:- module(material_code_of_practice, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_facilitate_cooperation/1,
    objective_enable_public_distinction/1,
    relevant_actor_applies/1
]).
:- dynamic european_commission/1.
:- dynamic union_level_code_of_practice/1.
:- dynamic transparency_duty/1.
:- dynamic detection_mechanism/1.
:- dynamic appropriateness_applies/1.
:- dynamic value_chain_actor/1.
:- dynamic disseminates_material/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

relevant_actor_applies(XActor) :-
    value_chain_actor(XActor).

mandatory(XObligation) :-
    transparency_duty(XObligation).

objective_support_practical_arrangement(
    code_of_practice(XCode, making_accessible(XMechanism))) :-
    union_level_code_of_practice(XCode),
    detection_mechanism(XMechanism),
    appropriateness_applies(making_accessible(XMechanism)).

relevant_actor_applies(XActor) :-
    checks_authenticity(XActor, XContent),
    checks_provenance(XActor, XContent).

permitted_encouragement(encouragement(XCommission, preparation(XCode))) :-
    european_commission(XCommission),
    union_level_code_of_practice(XCode).

permitted_facilitation(facilitation(XCommission, preparation(XCode))) :-
    european_commission(XCommission),
    union_level_code_of_practice(XCode).

objective_effective_implementation(
    code_of_practice(XCode, duty(detection, artificially_manipulated_material))) :-
    union_level_code_of_practice(XCode).

relevant_actor_applies(XActor) :-
    disseminates_material(XActor, _Content).

objective_effective_implementation(
    code_of_practice(XCode, duty(detection, artificially_generated_material))) :-
    union_level_code_of_practice(XCode).

objective_enable_public_distinction(
    code_of_practice(XCode, effective_distinction(public, artificial_intelligence_generated_material))) :-
    union_level_code_of_practice(XCode).

objective_effective_implementation(
    code_of_practice(XCode, duty(labelling, artificially_manipulated_material))) :-
    union_level_code_of_practice(XCode).

objective_facilitate_cooperation(
    code_of_practice(XCode, cooperation_with(XActor))) :-
    union_level_code_of_practice(XCode),
    relevant_actor_applies(XActor).

objective_effective_implementation(
    code_of_practice(XCode, duty(labelling, artificially_generated_material))) :-
    union_level_code_of_practice(XCode).

fully_applicable(XObligation) :-
    transparency_duty(XObligation).
