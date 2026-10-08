% unit       : celex:32024R1689/oj#art_92
% title      : Power to conduct evaluations
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : gpt-oss:120b-cloud
% prompt sha : d84e701f2ce424a2960b7b0093c9225855056554d4d55f3227897c0f86fe1f33
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_92').
:- pred independent_expert/1, gloss('independent expert appointed for evaluation'), source('celex:32024R1689/oj#art_92').
:- pred request_for_access/1, gloss('request for access to a general‑purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred appointed_for_evaluation/1, gloss('independent expert appointed for evaluation'), source('celex:32024R1689/oj#art_92').

% Permissions
permitted_conduct_evaluations(AIOffice, Model) :-
    ai_office(AIOffice),
    general_purpose_ai_model(Model).

permitted_appoint_independent_expert(Commission, Expert) :-
    commission(Commission),
    independent_expert(Expert).

permitted_request_access(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model).

permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider).

% Derived facts
appointed_for_evaluation(Expert) :-
    permitted_appoint_independent_expert(_, Expert).

request_for_access(Request) :-
    permitted_request_access(_, Request).

% Obligations / Requirements
required_meet_criteria(Expert) :-
    independent_expert(Expert),
    appointed_for_evaluation(Expert).

must_state_legal_basis_purpose_reason_and_period(Request) :-
    request_for_access(Request).

must_supply_information(Provider, Request) :-
    provider(Provider),
    request_for_access(Request).

must_provide_access(Representative, Provider, Model) :-
    authorised_representative(Representative),
    provider(Provider),
    general_purpose_ai_model(Model).

must_adopt_implementing_acts(commission).

% Provenance
provenance(permitted_conduct_evaluations/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_independent_expert/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
provenance(appointed_for_evaluation/1, 'celex:32024R1689/oj#art_92').
provenance(request_for_access/1, 'celex:32024R1689/oj#art_92').
provenance(required_meet_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(must_state_legal_basis_purpose_reason_and_period/1, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/3, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_92').

% References
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
