:- module(content_transparency_code, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    pursues_objective/2,
    preserves_obligation/2
]).

:- dynamic appropriate/1.

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(commission, drawing_up(code_of_practice(union_level)))
).

permitted_facilitation(
    facilitation(commission, drawing_up(code_of_practice(union_level)))
).

preserves_obligation(
    encouragement(commission, drawing_up(code_of_practice(union_level))),
    transparency_obligation
).

preserves_obligation(
    facilitation(commission, drawing_up(code_of_practice(union_level))),
    transparency_obligation
).

pursues_objective(
    code_of_practice(union_level),
    facilitate(effective_implementation(
        obligation(detection, artificially_generated_content)
    ))
).

pursues_objective(
    code_of_practice(union_level),
    facilitate(effective_implementation(
        obligation(detection, artificially_manipulated_content)
    ))
).

pursues_objective(
    code_of_practice(union_level),
    facilitate(effective_implementation(
        obligation(labelling, artificially_generated_content)
    ))
).

pursues_objective(
    code_of_practice(union_level),
    facilitate(effective_implementation(
        obligation(labelling, artificially_manipulated_content)
    ))
).

pursues_objective(
    code_of_practice(union_level),
    support(practical_arrangement(
        making_accessible(detection_mechanism)
    ))
) :-
    appropriate(making_accessible(detection_mechanism)).

pursues_objective(
    code_of_practice(union_level),
    facilitate(cooperation(other_actor(along_value_chain)))
).

pursues_objective(
    code_of_practice(union_level),
    facilitate(cooperation(other_actor(disseminating(content))))
).

pursues_objective(
    code_of_practice(union_level),
    facilitate(cooperation(
        other_actor(checking(authenticity_and_provenance(content)))
    ))
).

pursues_objective(
    code_of_practice(union_level),
    enable(public, effectively_distinguish(artificial_intelligence_generated_content))
).
