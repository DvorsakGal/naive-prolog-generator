:- module(synthetic_content_transparency, [
    artificial_intelligence_system_applies/1,
    synthetic_content_type_applies/1,
    synthetic_content_generation_applies/1,
    criminal_offence_purpose_applies/1,
    permitted_transparency_omission/1,
    synthetic_content_transparency_applies/1,
    technical_solution_quality_applies/1,
    technical_solution_consideration_applies/1,
    must_ensure/2,
    must_take_into_account/2
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic provides_system/2.
:- dynamic generates_synthetic_content/2.
:- dynamic produces_output/2.
:- dynamic performs_function/2.
:- dynamic supplies_input_data/2.
:- dynamic deploys_system/2.
:- dynamic non_substantial_input_data_alteration_applies/1.
:- dynamic non_substantial_semantic_alteration_applies/1.
:- dynamic authorised_by_law_applies/1.
:- dynamic uses_technical_solution/2.
:- dynamic technically_feasible_applies/1.

artificial_intelligence_system_applies(System) :-
    artificial_intelligence_system(System).

artificial_intelligence_system_applies(System) :-
    general_purpose_artificial_intelligence_system(System).

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

synthetic_content_generation_applies(system_extent(System, Extent)) :-
    artificial_intelligence_system_applies(System),
    generates_synthetic_content(System, content(Extent, Type)),
    synthetic_content_type_applies(Type).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

% Exceptions are limited to the extent of the qualifying activity.

permitted_transparency_omission(system_extent(System, Extent)) :-
    performs_function(System, function(Extent, assistive(standard_editing))).

permitted_transparency_omission(system_extent(System, Extent)) :-
    deploys_system(Deployer, System),
    supplies_input_data(Deployer, input(System, Extent, Data)),
    non_substantial_input_data_alteration_applies(
        processing(System, Extent, Data)),
    non_substantial_semantic_alteration_applies(
        processing(System, Extent, semantics(Data))).

permitted_transparency_omission(system_extent(System, Extent)) :-
    authorised_by_law_applies(
        use(system_extent(System, Extent), Purpose)),
    criminal_offence_purpose_applies(Purpose).

synthetic_content_transparency_applies(system_extent(System, Extent)) :-
    synthetic_content_generation_applies(system_extent(System, Extent)),
    \+ permitted_transparency_omission(system_extent(System, Extent)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    synthetic_content_transparency_applies(system_extent(System, Extent)),
    produces_output(System, output(Extent, Output)).

must_ensure(Provider, detectable_as(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    synthetic_content_transparency_applies(system_extent(System, Extent)),
    produces_output(System, output(Extent, Output)).

technical_solution_quality_applies(effective).
technical_solution_quality_applies(interoperable).
technical_solution_quality_applies(robust).
technical_solution_quality_applies(reliable).

technical_solution_consideration_applies(
    specificity(various_content_type)).
technical_solution_consideration_applies(
    limitation(various_content_type)).
technical_solution_consideration_applies(
    implementation_cost).
technical_solution_consideration_applies(
    generally_acknowledged_state_of_the_art(
        possible_reflection(relevant_technical_standard))).

must_ensure(Provider, quality(Solution, Quality)) :-
    provides_system(Provider, System),
    synthetic_content_transparency_applies(system_extent(System, Extent)),
    uses_technical_solution(
        Provider, transparency_solution(system_extent(System, Extent), Solution)),
    technical_solution_quality_applies(Quality),
    technically_feasible_applies(
        quality(Solution, Quality,
            taking_into_account(
                specificity(various_content_type),
                limitation(various_content_type),
                implementation_cost,
                generally_acknowledged_state_of_the_art(
                    possible_reflection(relevant_technical_standard))))).

must_take_into_account(Provider, technical_solution(Solution, Consideration)) :-
    provides_system(Provider, System),
    synthetic_content_transparency_applies(system_extent(System, Extent)),
    uses_technical_solution(
        Provider, transparency_solution(system_extent(System, Extent), Solution)),
    technical_solution_consideration_applies(Consideration).
