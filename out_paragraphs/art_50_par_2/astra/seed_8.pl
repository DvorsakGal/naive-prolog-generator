:- module(synthetic_content_transparency, [
    covered_content_type/1,
    covered_ai_system/1,
    permitted_transparency_exemption/1,
    exempt_transparency_obligation/1,
    transparency_obligation_applies/1,
    required_technical_quality/1,
    must_ensure/2,
    must_take_into_account/2,
    relevant_state_of_the_art_applies/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic has_type/2.
:- dynamic operates_in_scope/2.
:- dynamic produces_output/2.
:- dynamic falls_within_scope/2.
:- dynamic performs_assistive_function/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic provides_input/2.
:- dynamic deploys_system/2.
:- dynamic authorised_by_law/1.
:- dynamic uses_technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic concerns_content_type/2.
:- dynamic reflects_state_of_the_art/2.
:- dynamic relevant_technical_standard/1.
:- dynamic generally_acknowledged/1.

covered_content_type(audio).
covered_content_type(image).
covered_content_type(video).
covered_content_type(text).

covered_ai_system(System) :-
    ai_system(System),
    generates_content(System, synthetic(Content)),
    has_type(Content, Type),
    covered_content_type(Type).

covered_ai_system(System) :-
    general_purpose_ai_system(System),
    generates_content(System, synthetic(Content)),
    has_type(Content, Type),
    covered_content_type(Type).

permitted_transparency_exemption(scope(System, Scope)) :-
    performs_assistive_function(System, standard_editing(Scope)).

permitted_transparency_exemption(scope(System, Scope)) :-
    deploys_system(Deployer, System),
    provides_input(Deployer, Input),
    falls_within_scope(Input, Scope),
    does_not_substantially_alter(System, input_data(Input, Scope)).

permitted_transparency_exemption(scope(System, Scope)) :-
    deploys_system(Deployer, System),
    provides_input(Deployer, Input),
    falls_within_scope(Input, Scope),
    does_not_substantially_alter(System, semantics(Input, Scope)).

permitted_transparency_exemption(scope(System, Scope)) :-
    authorised_by_law(use(System, Scope, detect(criminal_offence))).

permitted_transparency_exemption(scope(System, Scope)) :-
    authorised_by_law(use(System, Scope, prevent(criminal_offence))).

permitted_transparency_exemption(scope(System, Scope)) :-
    authorised_by_law(use(System, Scope, investigate(criminal_offence))).

permitted_transparency_exemption(scope(System, Scope)) :-
    authorised_by_law(use(System, Scope, prosecute(criminal_offence))).

exempt_transparency_obligation(scope(System, Scope)) :-
    covered_ai_system(System),
    operates_in_scope(System, Scope),
    permitted_transparency_exemption(scope(System, Scope)).

transparency_obligation_applies(scope(System, Scope)) :-
    covered_ai_system(System),
    operates_in_scope(System, Scope),
    \+ permitted_transparency_exemption(scope(System, Scope)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(scope(System, Scope)),
    produces_output(System, Output),
    falls_within_scope(Output, Scope).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(scope(System, Scope)),
    produces_output(System, Output),
    falls_within_scope(Output, Scope).

required_technical_quality(effective).
required_technical_quality(interoperable).
required_technical_quality(robust).
required_technical_quality(reliable).

must_ensure(Provider, quality(Solution, Quality, Scope)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(scope(System, Scope)),
    uses_technical_solution(System, Solution),
    required_technical_quality(Quality),
    technically_feasible(quality(Solution, Quality, Scope)).

must_take_into_account(Provider, specificity(ContentType, Solution, Scope)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(scope(System, Scope)),
    uses_technical_solution(System, Solution),
    concerns_content_type(Solution, ContentType).

must_take_into_account(Provider, limitation(ContentType, Solution, Scope)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(scope(System, Scope)),
    uses_technical_solution(System, Solution),
    concerns_content_type(Solution, ContentType).

must_take_into_account(Provider, implementation_cost(Solution, Scope)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(scope(System, Scope)),
    uses_technical_solution(System, Solution).

must_take_into_account(Provider, generally_acknowledged_state_of_the_art(Solution, Scope)) :-
    provides_system(Provider, System),
    transparency_obligation_applies(scope(System, Scope)),
    uses_technical_solution(System, Solution).

relevant_state_of_the_art_applies(reflection(StateOfTheArt, Standard)) :-
    generally_acknowledged(StateOfTheArt),
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, StateOfTheArt).
