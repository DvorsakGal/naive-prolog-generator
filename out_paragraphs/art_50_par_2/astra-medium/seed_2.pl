:- module(synthetic_content_transparency, [
    artificial_intelligence_system/1,
    covered_content_applies/1,
    transparency_obligation_applies/1,
    permitted_unmarked_output/1,
    criminal_offence_purpose_applies/1,
    technical_solution_obligation_applies/1,
    required_technical_quality/1,
    must_ensure/2,
    must_consider/2,
    relevant_state_of_art_evidence_applies/1
]).

:- dynamic provides_system/2.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic other_artificial_intelligence_system/1.
:- dynamic generates_content/2.
:- dynamic synthetic/1.
:- dynamic audio/1.
:- dynamic image/1.
:- dynamic video/1.
:- dynamic text/1.
:- dynamic output_extent_applies/1.
:- dynamic performs_assistive_function/2.
:- dynamic non_substantial_alteration_applies/1.
:- dynamic authorised_by_law/1.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_art/2.

artificial_intelligence_system(System) :-
    general_purpose_artificial_intelligence_system(System).

artificial_intelligence_system(System) :-
    other_artificial_intelligence_system(System).

covered_content_applies(Content) :-
    synthetic(Content),
    audio(Content).

covered_content_applies(Content) :-
    synthetic(Content),
    image(Content).

covered_content_applies(Content) :-
    synthetic(Content),
    video(Content).

covered_content_applies(Content) :-
    synthetic(Content),
    text(Content).

transparency_obligation_applies(generation(Provider, System, Content, Extent)) :-
    provides_system(Provider, System),
    artificial_intelligence_system(System),
    generates_content(System, Content),
    covered_content_applies(Content),
    output_extent_applies(output(System, Content, Extent)),
    \+ permitted_unmarked_output(output(System, Content, Extent)).

% Exceptions operate only to the extent covered by the stated condition.

permitted_unmarked_output(output(System, Content, Extent)) :-
    output_extent_applies(output(System, Content, Extent)),
    performs_assistive_function(System, standard_editing(Extent)).

permitted_unmarked_output(output(System, Content, Extent)) :-
    output_extent_applies(output(System, Content, Extent)),
    non_substantial_alteration_applies(
        deployer_provided_input_data_and_its_semantics(System, Extent)
    ).

permitted_unmarked_output(output(System, Content, Extent)) :-
    output_extent_applies(output(System, Content, Extent)),
    criminal_offence_purpose_applies(Purpose),
    authorised_by_law(use(System, Extent, Purpose)).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

must_ensure(Provider, marking(output(System, Content, Extent), machine_readable_format)) :-
    transparency_obligation_applies(
        generation(Provider, System, Content, Extent)
    ).

must_ensure(Provider, detectability(
    output(System, Content, Extent),
    artificially_generated_or_manipulated
)) :-
    transparency_obligation_applies(
        generation(Provider, System, Content, Extent)
    ).

technical_solution_obligation_applies(solution(Provider, Solution, System, Extent)) :-
    transparency_obligation_applies(
        generation(Provider, System, _Content, Extent)
    ),
    implements_solution(Provider, transparency_solution(Solution, System, Extent)).

required_technical_quality(effective).
required_technical_quality(interoperable).
required_technical_quality(robust).
required_technical_quality(reliable).

must_ensure(Provider, quality(Solution, Quality, FeasibleExtent)) :-
    technical_solution_obligation_applies(
        solution(Provider, Solution, System, Extent)
    ),
    required_technical_quality(Quality),
    technically_feasible(
        quality(Solution, Quality, FeasibleExtent, deployment(System, Extent))
    ).

must_consider(Provider, content_type_specificity_and_limitation(
    technical_solution(Solution, System, Extent)
)) :-
    technical_solution_obligation_applies(
        solution(Provider, Solution, System, Extent)
    ).

must_consider(Provider, implementation_cost(
    technical_solution(Solution, System, Extent)
)) :-
    technical_solution_obligation_applies(
        solution(Provider, Solution, System, Extent)
    ).

must_consider(Provider, generally_acknowledged_state_of_art(
    technical_solution(Solution, System, Extent)
)) :-
    technical_solution_obligation_applies(
        solution(Provider, Solution, System, Extent)
    ).

relevant_state_of_art_evidence_applies(evidence(Standard, StateOfArt)) :-
    relevant_technical_standard(Standard),
    reflects_state_of_art(Standard, generally_acknowledged(StateOfArt)).
