:- module(content_transparency_code, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    addresses_obligation/2,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_accessibility/1,
    objective_cooperation/1,
    objective_effective_public_distinction/1
]).

:- dynamic commission/1.
:- dynamic transparency_obligation/1.
:- dynamic appropriate_applies/1.

% Transparency obligations remain mandatory and fully applicable.
mandatory(Obligation) :-
    transparency_obligation(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation(Obligation).

% The Commission may encourage and facilitate Union-level codes of practice.
permitted_encouragement(
    encouragement(Commission,
        drawing_up(code_of_practice(union, content_detection_and_labelling)))
) :-
    commission(Commission).

permitted_facilitation(
    facilitation(Commission,
        drawing_up(code_of_practice(union, content_detection_and_labelling)))
) :-
    commission(Commission).

% Obligations whose effective implementation the codes are intended to facilitate.
addresses_obligation(
    code_of_practice(union, content_detection_and_labelling),
    obligation(detection, artificially_generated_content)
).

addresses_obligation(
    code_of_practice(union, content_detection_and_labelling),
    obligation(labelling, artificially_generated_content)
).

addresses_obligation(
    code_of_practice(union, content_detection_and_labelling),
    obligation(detection, artificially_manipulated_content)
).

addresses_obligation(
    code_of_practice(union, content_detection_and_labelling),
    obligation(labelling, artificially_manipulated_content)
).

objective_effective_implementation(
    drawing_up(Code, implementation(Obligation))
) :-
    addresses_obligation(Code, Obligation).

% Practical arrangements are supported as objectives, not imposed as new duties.
objective_support_practical_arrangement(
    code_of_practice(union, content_detection_and_labelling)
).

objective_accessibility(
    practical_arrangement(
        code_of_practice(union, content_detection_and_labelling),
        making_accessible(detection_mechanism))
) :-
    appropriate_applies(making_accessible(detection_mechanism)).

objective_cooperation(
    practical_arrangement(
        code_of_practice(union, content_detection_and_labelling),
        cooperation_with(other_actor(along(value_chain))))
).

objective_cooperation(
    practical_arrangement(
        code_of_practice(union, content_detection_and_labelling),
        cooperation_with(other_actor(disseminating(content))))
).

objective_cooperation(
    practical_arrangement(
        code_of_practice(union, content_detection_and_labelling),
        cooperation_with(
            other_actor(checking(authenticity(content), provenance(content)))))
).

objective_effective_public_distinction(
    drawing_up(
        code_of_practice(union, content_detection_and_labelling),
        enabling(public, effectively_distinguish(artificial_intelligence_generated_content)))
).
