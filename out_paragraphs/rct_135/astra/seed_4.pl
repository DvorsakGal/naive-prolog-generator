:- module(content_transparency, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    unaffected/1,
    union_level/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_facilitate_cooperation/1,
    objective_enable_effective_distinction/1
]).

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(commission, drawing_up(content_transparency_code_of_practice))
).

permitted_facilitation(
    facilitation(commission, drawing_up(content_transparency_code_of_practice))
).

unaffected(
    mandatory_nature(
        transparency_obligation,
        encouragement(commission, drawing_up(content_transparency_code_of_practice))
    )
).

unaffected(
    full_applicability(
        transparency_obligation,
        encouragement(commission, drawing_up(content_transparency_code_of_practice))
    )
).

unaffected(
    mandatory_nature(
        transparency_obligation,
        facilitation(commission, drawing_up(content_transparency_code_of_practice))
    )
).

unaffected(
    full_applicability(
        transparency_obligation,
        facilitation(commission, drawing_up(content_transparency_code_of_practice))
    )
).

union_level(drawing_up(content_transparency_code_of_practice)).

objective_effective_implementation(
    drawing_up(
        content_transparency_code_of_practice,
        obligation(detection(artificially_generated_content))
    )
).

objective_effective_implementation(
    drawing_up(
        content_transparency_code_of_practice,
        obligation(detection(artificially_manipulated_content))
    )
).

objective_effective_implementation(
    drawing_up(
        content_transparency_code_of_practice,
        obligation(labelling(artificially_generated_content))
    )
).

objective_effective_implementation(
    drawing_up(
        content_transparency_code_of_practice,
        obligation(labelling(artificially_manipulated_content))
    )
).

objective_support_practical_arrangement(
    drawing_up(
        content_transparency_code_of_practice,
        making_accessible(detection_mechanism, as_appropriate)
    )
).

objective_facilitate_cooperation(
    drawing_up(
        content_transparency_code_of_practice,
        other_actor(along_value_chain)
    )
).

objective_facilitate_cooperation(
    drawing_up(
        content_transparency_code_of_practice,
        other_actor(disseminating(content))
    )
).

objective_facilitate_cooperation(
    drawing_up(
        content_transparency_code_of_practice,
        other_actor(checking(authenticity(content), provenance(content)))
    )
).

objective_enable_effective_distinction(
    drawing_up(
        content_transparency_code_of_practice,
        distinction_by(public, artificial_intelligence_generated_content)
    )
).
