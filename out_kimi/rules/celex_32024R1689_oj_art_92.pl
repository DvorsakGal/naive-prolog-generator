% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3c1c01c872b683bc08cd27f258b3792a750525c415029583e0bbb8d391b2bed2
% cached     : False
% title      : Power to conduct evaluations
:- pred may_conduct_evaluation/2, gloss('authority may conduct evaluation of model'), source('celex:32024R1689/oj#art_92').
:- pred may_appoint_experts/2, gloss('authority may appoint independent experts'), source('celex:32024R1689/oj#art_92').
:- pred may_request_access/2, gloss('authority may request access to model'), source('celex:32024R1689/art_92').
:- pred shall_supply_information/2, gloss('provider shall supply requested information'), source('celex:32024R1689/oj#art_92').
:- pred shall_provide_access/2, gloss('authorised persons shall provide access on behalf of provider'), source('celex:32024R1689/oj#art_92').
:- pred shall_adopt_implementing_acts/2, gloss('Commission shall adopt implementing acts'), source('celex:32024R1689/oj#art_92').
:- pred may_initiate_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_92').
:- pred information_gathered_insufficient/1, gloss('information gathered is insufficient for assessment'), source('celex:32024R1689/oj#art_92').
:- pred qualified_alert_from_scientific_panel/1, gloss('qualified alert received from scientific panel'), source('celex:32024R1689/oj#art_92').
:- pred access_request_specified/4, gloss('access request specifies legal basis, purpose, reasons, period and fines'), source('celex:32024R1689/oj#art_92').

% Paragraph 1(a) - evaluation for compliance assessment where information insufficient
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    information_gathered_insufficient(Model).

% Paragraph 1(b) - evaluation for systemic risk investigation
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    qualified_alert_from_scientific_panel(Model).

systemic_risk_applies(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).

% Paragraph 2 - appointment of independent experts
may_appoint_experts(commission, Experts) :-
    independent_expert(Experts).

% Paragraph 3 - request for access through technical means
may_request_access(commission, Model) :-
    general_purpose_ai_model(Model),
    may_conduct_evaluation(ai_office, Model).

% Paragraph 4 - access request requirements (structured as conditions)
access_request_specified(Request, legal_basis(art_92), purpose(Purpose), reasons(Reasons), period(Period), fines(art_101)) :-
    request_for_access(Request, Model),
    may_request_access(commission, Model).

% Paragraph 5 - provider obligation to supply information
shall_supply_information(Provider, Request) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of(Provider, Model),
    request_for_access(Request, Model).

shall_provide_access(AuthorisedPerson, Request) :-
    (legal_person(Provider) ; company_or_firm(Provider) ; \+ has_legal_personality(Provider)),
    authorised_to_represent(AuthorisedPerson, Provider),
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of(Provider, Model),
    request_for_access(Request, Model).

% Paragraph 6 - Commission obligation to adopt implementing acts
shall_adopt_implementing_acts(commission, evaluation_arrangements) :-
    may_conduct_evaluation(ai_office, _Model).

% Paragraph 7 - structured dialogue before access request
may_initiate_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of(Provider, Model),
    may_request_access(commission, Model).

% Provenance facts
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_experts/2, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(shall_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(shall_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(shall_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_92').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_92').
provenance(access_request_specified/6, 'celex:32024R1689/oj#art_92').

% Reference facts
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
