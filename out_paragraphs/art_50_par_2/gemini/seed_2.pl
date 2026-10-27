:- module(synthetic_content_marking, [
    must_ensure(2),
    required_marking(1),
    exempt_synthetic_content_obligation(1)
]).

:- dynamic generates_synthetic_content/2.
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic authorised_by_law_for_criminal_offence_purpose/1.

% Providers of AI systems (including GPAI) generating synthetic audio, image,
% video or text content shall ensure that outputs are marked and detectable,
% and ensure technical solutions are effective, interoperable, robust and reliable.
must_ensure(Provider, marked_and_detectable_output(System)) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_synthetic_content_obligation(System).

must_ensure(Provider, effective_technical_solution(System)) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_synthetic_content_obligation(System).

% The requirement on the AI system itself
required_marking(System) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_synthetic_content_obligation(System).

% General-purpose AI systems generating synthetic content are AI systems
ai_system(System) :-
    general_purpose_ai_system(System).

% Exceptions where the obligation does not apply:
% 1. Perform an assistive function for standard editing.
exempt_synthetic_content_obligation(System) :-
    performs_assistive_function_for_standard_editing(System).

% 2. Do not substantially alter the input data provided by the deployer or the semantics thereof.
exempt_synthetic_content_obligation(System) :-
    does_not_substantially_alter_input_data(System).

% 3. Authorised by law to detect, prevent, investigate or prosecute criminal offences.
exempt_synthetic_content_obligation(System) :-
    authorised_by_law_for_criminal_offence_purpose(System).
