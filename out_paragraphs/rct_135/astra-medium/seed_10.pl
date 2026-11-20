:- module(content_transparency_code, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_practical_arrangement_support/1,
    objective_detection_mechanism_accessibility/1,
    objective_cooperation_facilitation/1,
    objective_effective_public_distinction/1
]).

:- dynamic appropriate/1.

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(
        commission,
        drawing_up(code_of_practice(union_level, generated_or_manipulated_content))
    )
).

permitted_facilitation(
    facilitation(
        commission,
        drawing_up(code_of_practice(union_level, generated_or_manipulated_content))
    )
).

objective_effective_implementation(
    implementation(
        code_of_practice(union_level, generated_or_manipulated_content),
        obligation(detection, artificially_generated_content)
    )
).

objective_effective_implementation(
    implementation(
        code_of_practice(union_level, generated_or_manipulated_content),
        obligation(detection, artificially_manipulated_content)
    )
).

objective_effective_implementation(
    implementation(
        code_of_practice(union_level, generated_or_manipulated_content),
        obligation(labelling, artificially_generated_content)
    )
).

objective_effective_implementation(
    implementation(
        code_of_practice(union_level, generated_or_manipulated_content),
        obligation(labelling, artificially_manipulated_content)
    )
).

objective_practical_arrangement_support(
    support(
        code_of_practice(union_level, generated_or_manipulated_content),
        practical_arrangement(
            detection_mechanism_accessibility,
            where_appropriate
        )
    )
).

objective_detection_mechanism_accessibility(
    accessibility(
        code_of_practice(union_level, generated_or_manipulated_content),
        DetectionMechanism
    )
) :-
    appropriate(making_accessible(DetectionMechanism)).

objective_practical_arrangement_support(
    support(
        code_of_practice(union_level, generated_or_manipulated_content),
        practical_arrangement(cooperation_with_other_actor)
    )
).

objective_cooperation_facilitation(
    cooperation(
        code_of_practice(union_level, generated_or_manipulated_content),
        other_actor(along_value_chain)
    )
).

objective_cooperation_facilitation(
    cooperation(
        code_of_practice(union_level, generated_or_manipulated_content),
        other_actor(disseminating(content))
    )
).

objective_cooperation_facilitation(
    cooperation(
        code_of_practice(union_level, generated_or_manipulated_content),
        other_actor(checking(authenticity_and_provenance(content)))
    )
).

objective_effective_public_distinction(
    enabling(
        code_of_practice(union_level, generated_or_manipulated_content),
        public,
        effectively_distinguishing(artificial_intelligence_generated_content)
    )
).
