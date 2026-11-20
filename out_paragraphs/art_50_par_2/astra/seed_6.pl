:- module(synthetic_content_marking, [
    covered_system_applies/1,
    synthetic_content_type_applies/1,
    criminal_offence_purpose_applies/1,
    exempt_transparency_obligation/1,
    transparency_obligation_applies/1,
    technical_quality_applies/1,
    must_ensure/2,
    must_consider/2,
    relevant_state_of_the_art_applies/1
]).

:- dynamic ai_system_applies/1.
:- dynamic general_purpose_ai_system_applies/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic performs_function/2.
:- dynamic insubstantial_input_data_alteration_applies/1.
:- dynamic insubstantial_input_semantics_alteration_applies/1.
:- dynamic authorised_by_law_applies/1.
:- dynamic uses_technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard_applies/1.
:- dynamic reflects_state_of_the_art/2.

covered_system_applies(System) :-
    ai_system_applies(System).
covered_system_applies(System) :-
    general_purpose_ai_system_applies(System).

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

% Scope identifies the extent of an activity to which the obligation applies.
exempt_transparency_obligation(scope(System, Scope)) :-
    performs_function(System, assistive_function(standard_editing, Scope)).
exempt_transparency_obligation(scope(System, Scope)) :-
    insubstantial_input_data_alteration_applies(
        scope(System, Scope, input_data(provided_by(deployer)))).
exempt_transparency_obligation(scope(System, Scope)) :-
    insubstantial_input_semantics_alteration_applies(
        scope(System, Scope, semantics(input_data(provided_by(deployer))))).
exempt_transparency_obligation(scope(System, Scope)) :-
    authorised_by_law_applies(scope(System, Scope, Purpose)),
    criminal_offence_purpose_applies(Purpose).

transparency_obligation_applies(content(System, Scope, Type, Output)) :-
    covered_system_applies(System),
    generates_content(System, synthetic_content(Scope, Type, Output)),
    synthetic_content_type_applies(Type),
    \+ exempt_transparency_obligation(scope(System, Scope)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(content(System, _Scope, _Type, Output)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(content(System, _Scope, _Type, Output)).

technical_quality_applies(effective).
technical_quality_applies(interoperable).
technical_quality_applies(robust).
technical_quality_applies(reliable).

must_ensure(Provider, quality(Solution, Quality, scope(System, Scope))) :-
    provides_system(Provider, System),
    transparency_obligation_applies(content(System, Scope, _Type, _Output)),
    uses_technical_solution(Provider, solution(System, Scope, Solution)),
    technical_quality_applies(Quality),
    technically_feasible(quality(Solution, Quality, scope(System, Scope))).

must_consider(Provider, specificity_and_limitation(various_content_type, Solution)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(content(System, Scope, _Type, _Output)),
    uses_technical_solution(Provider, solution(System, Scope, Solution)).

must_consider(Provider, implementation_cost(Solution)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(content(System, Scope, _Type, _Output)),
    uses_technical_solution(Provider, solution(System, Scope, Solution)).

must_consider(Provider, generally_acknowledged_state_of_the_art(Solution)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(content(System, Scope, _Type, _Output)),
    uses_technical_solution(Provider, solution(System, Scope, Solution)).

relevant_state_of_the_art_applies(reflection(Standard, StateOfTheArt)) :-
    relevant_technical_standard_applies(Standard),
    reflects_state_of_the_art(Standard, generally_acknowledged(StateOfTheArt)).
