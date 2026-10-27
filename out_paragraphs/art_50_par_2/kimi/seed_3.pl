:- module(ai_content_marking, [
    must_ensure_marked/2,
    must_ensure_technical_solutions/2,
    exempt_marking/1,
    synthetic_content/1,
    machine_readable_format/1,
    detectable_as_artificial/1,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    assistive_function/1,
    standard_editing/1,
    substantially_alters/2,
    alters_semantics/2,
    authorised_by_law/1,
    detect_criminal_offence/1,
    prevent_criminal_offence/1,
    investigate_criminal_offence/1,
    prosecute_criminal_offence/1
]).

% Input predicates - facts about the world the text does not settle
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates/2.
:- dynamic output/2.
:- dynamic technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic specificities_of_content/2.
:- dynamic limitations_of_content/2.
:- dynamic implementation_cost/2.
:- dynamic state_of_the_art/1.
:- dynamic reflected_in_technical_standard/2.
:- dynamic input_data/2.
:- dynamic deployer_provided/2.
:- dynamic semantics/2.

% Core obligation: providers must ensure outputs are marked and detectable
must_ensure_marked(Provider, output(System, Content)) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System).

must_ensure_marked(Provider, machine_readable_format(output(System, Content))) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System).

must_ensure_marked(Provider, detectable_as_artificial(output(System, Content))) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System).

% Technical solution requirements
must_ensure_technical_solutions(Provider, technical_solution(System, Solution)) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution),
    takes_into_account_specificities(Solution, Content),
    takes_into_account_limitations(Solution, Content),
    takes_into_account_costs(Solution, Content),
    takes_into_account_state_of_the_art(Solution).

% Helper predicates for technical solution conditions
takes_into_account_specificities(Solution, Content) :-
    specificities_of_content(Content, _Specificities).

takes_into_account_limitations(Solution, Content) :-
    limitations_of_content(Content, _Limitations).

takes_into_account_costs(Solution, Content) :-
    implementation_cost(Content, _Cost).

takes_into_account_state_of_the_art(Solution) :-
    state_of_the_art(State),
    reflected_in_technical_standard(State, _Standard).

% Exemptions from marking obligation
exempt_marking(System) :-
    ai_system(System),
    assistive_function(System),
    standard_editing(System).

exempt_marking(System) :-
    ai_system(System),
    generates(System, Content),
    input_data(System, Data),
    deployer_provided(System, Data),
    \+ substantially_alters(System, Data),
    \+ alters_semantics(System, Data).

exempt_marking(System) :-
    ai_system(System),
    authorised_by_law(System),
    (detect_criminal_offence(System); prevent_criminal_offence(System); investigate_criminal_offence(System); prosecute_criminal_offence(System)).

% Content types covered by the obligation
synthetic_content(audio).
synthetic_content(image).
synthetic_content(video).
synthetic_content(text).
