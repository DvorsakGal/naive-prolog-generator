:- module(synthetic_content_transparency, [
    provides_covered_ai_system/2,
    synthetic_content_type_applies/1,
    synthetic_content_generation_applies/1,
    criminal_offence_purpose_applies/1,
    permitted_transparency_exemption/1,
    exempt_synthetic_content_transparency/1,
    required_synthetic_content_transparency/1,
    transparency_quality_applies/1,
    must_ensure/2,
    must_take_into_account/2
]).

:- dynamic provides_ai_system/2.
:- dynamic provides_general_purpose_ai_system/2.
:- dynamic generates_content/2.
:- dynamic produces_output/2.
:- dynamic performs_function/2.
:- dynamic supplies_input_data/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic authorised_by_law/1.
:- dynamic uses_technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic generally_acknowledged_state_of_art/1.
:- dynamic reflects_state_of_art/2.

provides_covered_ai_system(Provider, System) :-
    provides_ai_system(Provider, System).

provides_covered_ai_system(Provider, System) :-
    provides_general_purpose_ai_system(Provider, System).

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

synthetic_content_generation_applies(scope(System, Extent)) :-
    generates_content(System, synthetic(ContentType, Extent)),
    synthetic_content_type_applies(ContentType).

criminal_offence_purpose_applies(detect_criminal_offence).
criminal_offence_purpose_applies(prevent_criminal_offence).
criminal_offence_purpose_applies(investigate_criminal_offence).
criminal_offence_purpose_applies(prosecute_criminal_offence).

permitted_transparency_exemption(scope(System, Extent)) :-
    performs_function(System, within(Extent, assistive(standard_editing))).

permitted_transparency_exemption(scope(System, Extent)) :-
    supplies_input_data(_Deployer, input(System, Extent, Data)),
    does_not_substantially_alter(System, within(Extent, Data)),
    does_not_substantially_alter(System, within(Extent, semantics(Data))).

permitted_transparency_exemption(scope(System, Extent)) :-
    authorised_by_law(use(System, Extent, Purpose)),
    criminal_offence_purpose_applies(Purpose).

exempt_synthetic_content_transparency(scope(System, Extent)) :-
    permitted_transparency_exemption(scope(System, Extent)).

required_synthetic_content_transparency(scope(System, Extent)) :-
    synthetic_content_generation_applies(scope(System, Extent)),
    \+ permitted_transparency_exemption(scope(System, Extent)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    produces_output(System, within(Extent, Output)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    produces_output(System, within(Extent, Output)).

transparency_quality_applies(effective).
transparency_quality_applies(interoperable).
transparency_quality_applies(robust).
transparency_quality_applies(reliable).

must_ensure(Provider, quality(Solution, Quality, FeasibleExtent)) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    uses_technical_solution(Provider, solution(System, Extent, Solution)),
    transparency_quality_applies(Quality),
    technically_feasible(quality(Solution, Quality, FeasibleExtent)).

must_take_into_account(Provider, technical_solution(Solution, content_type_specificity(System, Extent))) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    uses_technical_solution(Provider, solution(System, Extent, Solution)).

must_take_into_account(Provider, technical_solution(Solution, content_type_limitation(System, Extent))) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    uses_technical_solution(Provider, solution(System, Extent, Solution)).

must_take_into_account(Provider, technical_solution(Solution, implementation_cost(Solution))) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    uses_technical_solution(Provider, solution(System, Extent, Solution)).

must_take_into_account(Provider, technical_solution(Solution, StateOfArt)) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    uses_technical_solution(Provider, solution(System, Extent, Solution)),
    generally_acknowledged_state_of_art(StateOfArt).

must_take_into_account(Provider, technical_solution(Solution, reflected_state_of_art(Standard, StateOfArt))) :-
    provides_covered_ai_system(Provider, System),
    required_synthetic_content_transparency(scope(System, Extent)),
    uses_technical_solution(Provider, solution(System, Extent, Solution)),
    generally_acknowledged_state_of_art(StateOfArt),
    relevant_technical_standard(Standard),
    reflects_state_of_art(Standard, StateOfArt).
