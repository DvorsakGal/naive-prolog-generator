:- module(synthetic_content_transparency, [
    synthetic_content_type_applies/1,
    covered_system_applies/1,
    synthetic_content_generation_applies/1,
    criminal_offence_purpose_applies/1,
    permitted_transparency_omission/1,
    exempt_transparency_obligation/1,
    transparency_obligation_applies/1,
    technical_quality_applies/1,
    must_ensure/2,
    must_take_into_account/2,
    possible/1
]).

:- dynamic artificial_intelligence_system_applies/1.
:- dynamic general_purpose_artificial_intelligence_system_applies/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic performs_function/2.
:- dynamic non_substantial_alteration_applies/1.
:- dynamic authorised_by_law/1.
:- dynamic uses_technical_solution/2.

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

covered_system_applies(System) :-
    artificial_intelligence_system_applies(System).

covered_system_applies(System) :-
    general_purpose_artificial_intelligence_system_applies(System).

synthetic_content_generation_applies(generation(System, Extent, Output)) :-
    covered_system_applies(System),
    generates_content(System, synthetic(Type, Extent, Output)),
    synthetic_content_type_applies(Type).

criminal_offence_purpose_applies(detect).
criminal_offence_purpose_applies(prevent).
criminal_offence_purpose_applies(investigate).
criminal_offence_purpose_applies(prosecute).

% Exceptions are limited to the extent of the qualifying function or use.

permitted_transparency_omission(transparency(System, Extent)) :-
    performs_function(System, assistive(standard_editing, Extent)).

permitted_transparency_omission(transparency(System, Extent)) :-
    non_substantial_alteration_applies(
        input_data(System, Extent, provided_by_deployer(_Deployer))
    ).

permitted_transparency_omission(transparency(System, Extent)) :-
    non_substantial_alteration_applies(
        semantics(input_data(System, Extent, provided_by_deployer(_Deployer)))
    ).

permitted_transparency_omission(transparency(System, Extent)) :-
    criminal_offence_purpose_applies(Purpose),
    authorised_by_law(
        use(System, Extent, purpose(Purpose, criminal_offence))
    ).

exempt_transparency_obligation(transparency(System, Extent)) :-
    permitted_transparency_omission(transparency(System, Extent)).

transparency_obligation_applies(generation(System, Extent, Output)) :-
    synthetic_content_generation_applies(generation(System, Extent, Output)),
    \+ permitted_transparency_omission(transparency(System, Extent)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(generation(System, _Extent, Output)).

must_ensure(
    Provider,
    detectable(Output, artificially_generated_or_manipulated)
) :-
    provides_system(Provider, System),
    transparency_obligation_applies(generation(System, _Extent, Output)).

technical_quality_applies(effective).
technical_quality_applies(interoperable).
technical_quality_applies(robust).
technical_quality_applies(reliable).

must_ensure(
    Provider,
    technical_quality(
        Solution,
        Quality,
        to_extent(technically_feasible),
        for(transparency(System, Extent))
    )
) :-
    provides_system(Provider, System),
    transparency_obligation_applies(generation(System, Extent, _Output)),
    uses_technical_solution(
        Provider,
        solution(Solution, transparency(System, Extent))
    ),
    technical_quality_applies(Quality).

must_take_into_account(
    Provider,
    consideration(
        specificity(various_content_type),
        technical_solution(Solution, transparency(System, Extent))
    )
) :-
    provides_system(Provider, System),
    transparency_obligation_applies(generation(System, Extent, _Output)),
    uses_technical_solution(
        Provider,
        solution(Solution, transparency(System, Extent))
    ).

must_take_into_account(
    Provider,
    consideration(
        limitation(various_content_type),
        technical_solution(Solution, transparency(System, Extent))
    )
) :-
    provides_system(Provider, System),
    transparency_obligation_applies(generation(System, Extent, _Output)),
    uses_technical_solution(
        Provider,
        solution(Solution, transparency(System, Extent))
    ).

must_take_into_account(
    Provider,
    consideration(
        implementation_cost,
        technical_solution(Solution, transparency(System, Extent))
    )
) :-
    provides_system(Provider, System),
    transparency_obligation_applies(generation(System, Extent, _Output)),
    uses_technical_solution(
        Provider,
        solution(Solution, transparency(System, Extent))
    ).

must_take_into_account(
    Provider,
    consideration(
        generally_acknowledged_state_of_the_art,
        technical_solution(Solution, transparency(System, Extent))
    )
) :-
    provides_system(Provider, System),
    transparency_obligation_applies(generation(System, Extent, _Output)),
    uses_technical_solution(
        Provider,
        solution(Solution, transparency(System, Extent))
    ).

possible(
    reflection(
        generally_acknowledged_state_of_the_art,
        relevant_technical_standard
    )
).
