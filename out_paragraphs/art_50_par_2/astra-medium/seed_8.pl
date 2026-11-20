:- module(synthetic_content_marking, [
    artificial_intelligence_system_applies/1,
    synthetic_content_applies/1,
    output_marking_applies/1,
    permitted_unmarked_output/1,
    exempt_output_marking/1,
    technical_solution_obligation_applies/1,
    must_ensure/2,
    must_consider/2
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic synthetic/1.
:- dynamic audio/1.
:- dynamic image/1.
:- dynamic video/1.
:- dynamic text/1.
:- dynamic standard_editing_assistance_applies/1.
:- dynamic no_substantial_deployer_input_data_alteration_applies/1.
:- dynamic no_substantial_deployer_input_semantics_alteration_applies/1.
:- dynamic authorised_by_law_applies/1.
:- dynamic implements_solution/2.

artificial_intelligence_system_applies(System) :-
    artificial_intelligence_system(System).

artificial_intelligence_system_applies(System) :-
    general_purpose_artificial_intelligence_system(System).

synthetic_content_applies(Content) :-
    synthetic(Content),
    audio(Content).

synthetic_content_applies(Content) :-
    synthetic(Content),
    image(Content).

synthetic_content_applies(Content) :-
    synthetic(Content),
    video(Content).

synthetic_content_applies(Content) :-
    synthetic(Content),
    text(Content).

% Exceptions are evaluated for the particular output, preserving their extent.

permitted_unmarked_output(output(System, Content)) :-
    standard_editing_assistance_applies(output(System, Content)).

permitted_unmarked_output(output(System, Content)) :-
    no_substantial_deployer_input_data_alteration_applies(
        output(System, Content)
    ).

permitted_unmarked_output(output(System, Content)) :-
    no_substantial_deployer_input_semantics_alteration_applies(
        output(System, Content)
    ).

permitted_unmarked_output(output(System, Content)) :-
    authorised_by_law_applies(
        use(output(System, Content), detect(criminal_offence))
    ).

permitted_unmarked_output(output(System, Content)) :-
    authorised_by_law_applies(
        use(output(System, Content), prevent(criminal_offence))
    ).

permitted_unmarked_output(output(System, Content)) :-
    authorised_by_law_applies(
        use(output(System, Content), investigate(criminal_offence))
    ).

permitted_unmarked_output(output(System, Content)) :-
    authorised_by_law_applies(
        use(output(System, Content), prosecute(criminal_offence))
    ).

exempt_output_marking(output(System, Content)) :-
    artificial_intelligence_system_applies(System),
    generates_content(System, Content),
    synthetic_content_applies(Content),
    permitted_unmarked_output(output(System, Content)).

output_marking_applies(output(System, Content)) :-
    artificial_intelligence_system_applies(System),
    generates_content(System, Content),
    synthetic_content_applies(Content),
    \+ permitted_unmarked_output(output(System, Content)).

must_ensure(Provider, marking(Content, machine_readable_format)) :-
    provides_system(Provider, System),
    output_marking_applies(output(System, Content)).

must_ensure(
    Provider,
    detectability(Content, artificially_generated_or_manipulated)
) :-
    provides_system(Provider, System),
    output_marking_applies(output(System, Content)).

technical_solution_obligation_applies(
    provision(Provider, System, Content, Solution)
) :-
    provides_system(Provider, System),
    output_marking_applies(output(System, Content)),
    implements_solution(
        Provider,
        output_marking_solution(System, Content, Solution)
    ).

must_ensure(
    Provider,
    to_technically_feasible_extent(effective(Solution))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).

must_ensure(
    Provider,
    to_technically_feasible_extent(interoperable(Solution))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).

must_ensure(
    Provider,
    to_technically_feasible_extent(robust(Solution))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).

must_ensure(
    Provider,
    to_technically_feasible_extent(reliable(Solution))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).

must_consider(
    Provider,
    technical_solution(
        Solution,
        specificity(various_content_type)
    )
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).

must_consider(
    Provider,
    technical_solution(
        Solution,
        limitation(various_content_type)
    )
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).

must_consider(
    Provider,
    technical_solution(Solution, implementation_cost)
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).

must_consider(
    Provider,
    technical_solution(
        Solution,
        state_of_the_art(
            generally_acknowledged,
            possible_reflection(relevant_technical_standard)
        )
    )
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, _Content, Solution)
    ).
