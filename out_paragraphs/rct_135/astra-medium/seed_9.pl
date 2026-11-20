:- module(artificial_content_code_of_practice, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    pursues_objective/2,
    covers_content/2,
    preserves_obligation/2,
    supports_arrangement/2
]).

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(
        commission,
        drawing_up(code_of_practice(union_level, artificial_content_detection_and_labelling))
    )
).

permitted_facilitation(
    facilitation(
        commission,
        drawing_up(code_of_practice(union_level, artificial_content_detection_and_labelling))
    )
).

covers_content(artificial_content_detection_and_labelling, artificially_generated_content).
covers_content(artificial_content_detection_and_labelling, artificially_manipulated_content).

pursues_objective(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    effective_implementation(detection_obligation(Content))
) :-
    covers_content(artificial_content_detection_and_labelling, Content).

pursues_objective(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    effective_implementation(labelling_obligation(Content))
) :-
    covers_content(artificial_content_detection_and_labelling, Content).

preserves_obligation(Action, mandatory_nature(transparency_obligation)) :-
    permitted_encouragement(Action).

preserves_obligation(Action, full_applicability(transparency_obligation)) :-
    permitted_encouragement(Action).

preserves_obligation(Action, mandatory_nature(transparency_obligation)) :-
    permitted_facilitation(Action).

preserves_obligation(Action, full_applicability(transparency_obligation)) :-
    permitted_facilitation(Action).

supports_arrangement(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    practical_arrangement(
        making_accessible(detection_mechanism),
        as_appropriate
    )
).

supports_arrangement(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    practical_arrangement(
        facilitating(cooperation(other_actor(along(value_chain))))
    )
).

supports_arrangement(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    practical_arrangement(
        facilitating(cooperation(other_actor(disseminating(content))))
    )
).

supports_arrangement(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    practical_arrangement(
        facilitating(cooperation(
            other_actor(checking(authenticity(content), provenance(content)))
        ))
    )
).

pursues_objective(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    support(Arrangement)
) :-
    supports_arrangement(
        code_of_practice(union_level, artificial_content_detection_and_labelling),
        Arrangement
    ).

pursues_objective(
    code_of_practice(union_level, artificial_content_detection_and_labelling),
    enabling(public, effectively_distinguish(artificial_intelligence_generated_content))
).
