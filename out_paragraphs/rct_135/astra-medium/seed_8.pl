:- module(content_transparency_code, [
    content_transparency_code_applies/1,
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_facilitate_cooperation/1,
    objective_enable_effective_distinction/1
]).

:- dynamic commission/1.

content_transparency_code_applies(
    code_of_practice(
        union_level,
        detection_and_labelling(
            artificially_generated_or_manipulated_content
        )
    )
).

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(Commission, drawing_up(Code))
) :-
    commission(Commission),
    content_transparency_code_applies(Code).

permitted_facilitation(
    facilitation(Commission, drawing_up(Code))
) :-
    commission(Commission),
    content_transparency_code_applies(Code).

objective_effective_implementation(
    implementation(
        Code,
        obligation(
            detection,
            artificially_generated_or_manipulated_content
        )
    )
) :-
    content_transparency_code_applies(Code).

objective_effective_implementation(
    implementation(
        Code,
        obligation(
            labelling,
            artificially_generated_or_manipulated_content
        )
    )
) :-
    content_transparency_code_applies(Code).

objective_support_practical_arrangement(
    support(
        Code,
        practical_arrangement(
            making_accessible(
                detection_mechanism(
                    artificially_generated_or_manipulated_content
                )
            ),
            as_appropriate
        )
    )
) :-
    content_transparency_code_applies(Code).

objective_facilitate_cooperation(
    cooperation(
        Code,
        other_actor(
            along_value_chain,
            disseminating(content)
        )
    )
) :-
    content_transparency_code_applies(Code).

objective_facilitate_cooperation(
    cooperation(
        Code,
        other_actor(
            along_value_chain,
            checking(authenticity(content), provenance(content))
        )
    )
) :-
    content_transparency_code_applies(Code).

objective_enable_effective_distinction(
    enabling(
        Code,
        public,
        effective_distinction(artificial_intelligence_generated_content)
    )
) :-
    content_transparency_code_applies(Code).
