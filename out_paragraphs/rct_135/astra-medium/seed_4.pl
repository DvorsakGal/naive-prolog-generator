:- module(content_transparency_code, [
    permitted_encouragement/1,
    permitted_facilitation/1,
    mandatory/1,
    fully_applicable/1,
    pursues_objective/2
]).

:- dynamic transparency_obligation_applies/1.
:- dynamic appropriateness_applies/1.

mandatory(Obligation) :-
    transparency_obligation_applies(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation_applies(Obligation).

permitted_encouragement(
    encouragement(commission, drawing_up(code_of_practice(union_level)))
).

permitted_facilitation(
    facilitation(commission, drawing_up(code_of_practice(union_level)))
).

pursues_objective(
    code_of_practice(union_level),
    effective_implementation(
        obligation(detection(artificially_generated_content))
    )
).

pursues_objective(
    code_of_practice(union_level),
    effective_implementation(
        obligation(labelling(artificially_generated_content))
    )
).

pursues_objective(
    code_of_practice(union_level),
    effective_implementation(
        obligation(detection(artificially_manipulated_content))
    )
).

pursues_objective(
    code_of_practice(union_level),
    effective_implementation(
        obligation(labelling(artificially_manipulated_content))
    )
).

pursues_objective(
    code_of_practice(union_level),
    support(practical_arrangement(making_accessible(detection_mechanism)))
) :-
    appropriateness_applies(making_accessible(detection_mechanism)).

pursues_objective(
    code_of_practice(union_level),
    support(
        practical_arrangement(
            facilitating(cooperation(other_actor(along_value_chain)))
        )
    )
).

pursues_objective(
    code_of_practice(union_level),
    support(
        practical_arrangement(
            facilitating(cooperation(other_actor(disseminating(content))))
        )
    )
).

pursues_objective(
    code_of_practice(union_level),
    support(
        practical_arrangement(
            facilitating(
                cooperation(
                    other_actor(checking(authenticity_and_provenance(content)))
                )
            )
        )
    )
).

pursues_objective(
    code_of_practice(union_level),
    enabling(public, effectively_distinguish(artificial_intelligence_generated_content))
).
