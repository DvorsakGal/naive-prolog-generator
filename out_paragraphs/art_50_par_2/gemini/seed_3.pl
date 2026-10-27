:- module(marking_synthetic_content, [
    must_ensure(2),
    exempt_synthetic_content_obligation(1),
    effective_interoperable_robust_reliable(1)
]).

:- dynamic provider_of(2).
:- dynamic ai_system(1).
:- dynamic general_purpose_ai_system(1).
:- dynamic generates_synthetic_content(2).
:- dynamic output_of(2, 1).
:- dynamic technically_feasible(1).
:- dynamic assistive_function_standard_editing(1).
:- dynamic substantially_alters_input_data_or_semantics(1).
:- dynamic authorised_by_law_for_criminal_offences(1).

% Providers of AI systems, including general-purpose AI systems, generating
% synthetic audio, image, video or text content, shall ensure that the outputs
% of the AI system are marked in a machine-readable format and detectable as
% artificially generated or manipulated.
must_ensure(Provider, marked_and_detectable(Output)) :-
    provider_of(Provider, System),
    ai_system(System),
    generates_synthetic_content(System, ContentType),
    synthetic_content_type(ContentType),
    output_of(Output, System),
    \+ exempt_synthetic_content_obligation(System).

synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% Providers shall ensure their technical solutions are effective, interoperable,
% robust and reliable as far as this is technically feasible, taking into account
% the specificities and limitations of various types of content, the costs of
% implementation and the generally acknowledged state of the art...
must_ensure(Provider, effective_solutions(System)) :-
    provider_of(Provider, System),
    ai_system(System),
    generates_synthetic_content(System, ContentType),
    synthetic_content_type(ContentType),
    technically_feasible(solution(System)),
    effective_interoperable_robust_reliable(solution(System)),
    \+ exempt_synthetic_content_obligation(System).

effective_interoperable_robust_reliable(solution(System)) :-
    technically_feasible(solution(System)).

% This obligation shall not apply to the extent the AI systems perform an assistive
% function for standard editing or do not substantially alter the input data provided
% by the deployer or the semantics thereof, or where authorised by law to detect,
% prevent, investigate or prosecute criminal offences.
exempt_synthetic_content_obligation(System) :-
    assistive_function_standard_editing(System).

exempt_synthetic_content_obligation(System) :-
    ai_system(System),
    \+ substantially_alters_input_data_or_semantics(System).

exempt_synthetic_content_obligation(System) :-
    authorised_by_law_for_criminal_offences(System).

substantially_alters_input_data_or_semantics(System) :-
    substantially_alters_input_data_or_semantics(System).
