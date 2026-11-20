:- module(synthetic_content_marking, [
    synthetic_generation_applies/1,
    synthetic_content_type_applies/1,
    criminal_offence_purpose_applies/1,
    permitted_obligation_exemption/1,
    exempt_output_marking/1,
    exempt_technical_solution_requirement/1,
    must_ensure/2
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_synthetic_content/2.
:- dynamic output_in_scope/2.
:- dynamic technical_solution_in_scope/2.
:- dynamic performs_assistive_function/2.
:- dynamic leaves_input_data_substantially_unaltered/2.
:- dynamic leaves_input_semantics_substantially_unaltered/2.
:- dynamic authorised_by_law/2.

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

synthetic_generation_applies(System) :-
    ai_system(System),
    generates_synthetic_content(System, Type),
    synthetic_content_type_applies(Type).

synthetic_generation_applies(System) :-
    general_purpose_ai_system(System),
    generates_synthetic_content(System, Type),
    synthetic_content_type_applies(Type).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

permitted_obligation_exemption(scope(System, Extent)) :-
    performs_assistive_function(System, standard_editing(Extent)).

permitted_obligation_exemption(scope(System, Extent)) :-
    leaves_input_data_substantially_unaltered(
        System, deployer_provided_input(Extent)).

permitted_obligation_exemption(scope(System, Extent)) :-
    leaves_input_semantics_substantially_unaltered(
        System, deployer_provided_input(Extent)).

permitted_obligation_exemption(scope(System, Extent)) :-
    authorised_by_law(System, use(Extent, Purpose)),
    criminal_offence_purpose_applies(Purpose).

exempt_output_marking(Scope) :-
    permitted_obligation_exemption(Scope).

exempt_technical_solution_requirement(Scope) :-
    permitted_obligation_exemption(Scope).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    synthetic_generation_applies(System),
    output_in_scope(Output, scope(System, Extent)),
    \+ permitted_obligation_exemption(scope(System, Extent)).

must_ensure(Provider,
    detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    synthetic_generation_applies(System),
    output_in_scope(Output, scope(System, Extent)),
    \+ permitted_obligation_exemption(scope(System, Extent)).

must_ensure(Provider,
    technically_feasible_quality(
        Solution,
        quality(effective, interoperable, robust, reliable),
        taking_into_account(
            content_type_specificity_and_limitation,
            implementation_cost,
            generally_acknowledged_state_of_the_art(
                possibly_reflected_in(relevant_technical_standard))))) :-
    provides_system(Provider, System),
    synthetic_generation_applies(System),
    technical_solution_in_scope(Solution, scope(System, Extent)),
    \+ permitted_obligation_exemption(scope(System, Extent)).
