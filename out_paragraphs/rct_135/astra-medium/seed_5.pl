:- module(content_code_of_practice, [
    required_transparency_obligation/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    code_of_practice_applies/1,
    union_level/1,
    objective_effective_implementation/1,
    concerns_obligation/2,
    objective_support_for_practical_arrangement/1,
    concerns_arrangement/2,
    objective_facilitation_of_cooperation/1,
    concerns_cooperation/2,
    objective_effective_public_distinction/1,
    concerns_distinction/2
]).

:- dynamic commission/1.
:- dynamic transparency_obligation/1.

% The permission leaves the mandatory nature and full applicability intact.

required_transparency_obligation(Obligation) :-
    transparency_obligation(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation(Obligation).

permitted_encouragement(encouragement(Commission, drawing_up(Code))) :-
    commission(Commission),
    code_of_practice_applies(Code).

permitted_facilitation(facilitation(Commission, drawing_up(Code))) :-
    commission(Commission),
    code_of_practice_applies(Code).

code_of_practice_applies(
    code_of_practice(artificially_generated_or_manipulated_content)
).

union_level(Code) :-
    code_of_practice_applies(Code).

objective_effective_implementation(Code) :-
    code_of_practice_applies(Code).

concerns_obligation(Code, obligation(detection(artificially_generated_content))) :-
    code_of_practice_applies(Code).

concerns_obligation(Code, obligation(detection(artificially_manipulated_content))) :-
    code_of_practice_applies(Code).

concerns_obligation(Code, obligation(labelling(artificially_generated_content))) :-
    code_of_practice_applies(Code).

concerns_obligation(Code, obligation(labelling(artificially_manipulated_content))) :-
    code_of_practice_applies(Code).

objective_support_for_practical_arrangement(Code) :-
    code_of_practice_applies(Code).

concerns_arrangement(
    Code,
    practical_arrangement(
        making_accessible(detection_mechanism),
        where_appropriate
    )
) :-
    code_of_practice_applies(Code).

objective_facilitation_of_cooperation(Code) :-
    code_of_practice_applies(Code).

concerns_cooperation(
    Code,
    cooperation(
        other_actor(along(value_chain), disseminating(content))
    )
) :-
    code_of_practice_applies(Code).

concerns_cooperation(
    Code,
    cooperation(
        other_actor(
            along(value_chain),
            checking(authenticity(content), provenance(content))
        )
    )
) :-
    code_of_practice_applies(Code).

objective_effective_public_distinction(Code) :-
    code_of_practice_applies(Code).

concerns_distinction(
    Code,
    effective_distinction(public, artificial_intelligence_generated_content)
) :-
    code_of_practice_applies(Code).
