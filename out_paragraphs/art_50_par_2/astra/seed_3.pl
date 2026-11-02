:- module(synthetic_content_marking, [
    synthetic_content_system_applies/1,
    permitted_non_compliance/1,
    exempt_marking_obligation/1,
    must_ensure/2,
    must_take_into_account/2,
    required_technical_quality/1,
    permitted_state_of_the_art_reference/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_content/2.
:- dynamic provides_system/2.
:- dynamic generates_output/2.
:- dynamic performs_function/2.
:- dynamic non_substantial_alteration_applies/1.
:- dynamic authorised_by_law/2.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_the_art/2.

synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(audio)).
synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(image)).
synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(video)).
synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(text)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(audio)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(image)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(video)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(text)).

% Exceptions concern only the extent covered by the stated function,
% lack of substantial alteration, or legal authorisation.
permitted_non_compliance(scope(S, Extent)) :-
    performs_function(S, within(Extent, assistive(standard_editing))).
permitted_non_compliance(scope(S, Extent)) :-
    non_substantial_alteration_applies(
        scope(S, Extent, deployer_provided_input_data_and_its_semantics)).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, detect(criminal_offence))).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, prevent(criminal_offence))).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, investigate(criminal_offence))).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, prosecute(criminal_offence))).

exempt_marking_obligation(scope(S, Extent)) :-
    permitted_non_compliance(scope(S, Extent)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    generates_output(S, within(Extent, Output)),
    \+ permitted_non_compliance(scope(S, Extent)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    generates_output(S, within(Extent, Output)),
    \+ permitted_non_compliance(scope(S, Extent)).

required_technical_quality(effective).
required_technical_quality(interoperable).
required_technical_quality(robust).
required_technical_quality(reliable).

must_ensure(Provider, quality(Solution, Quality, within(Extent))) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    required_technical_quality(Quality),
    technically_feasible(
        quality(Solution, Quality, within(Extent),
            taking_into_account(
                content_type_specificity_and_limitation,
                implementation_cost,
                generally_acknowledged_state_of_the_art))),
    \+ permitted_non_compliance(scope(S, Extent)).

must_take_into_account(Provider,
    solution(Solution, within(Extent), content_type_specificity_and_limitation)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    \+ permitted_non_compliance(scope(S, Extent)).

must_take_into_account(Provider,
    solution(Solution, within(Extent), implementation_cost)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    \+ permitted_non_compliance(scope(S, Extent)).

must_take_into_account(Provider,
    solution(Solution, within(Extent), generally_acknowledged_state_of_the_art)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    \+ permitted_non_compliance(scope(S, Extent)).

permitted_state_of_the_art_reference(Standard) :-
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, generally_acknowledged_state_of_the_art).
