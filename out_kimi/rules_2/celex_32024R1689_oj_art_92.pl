% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 7a1e61cf0f2f5b7e7159245863ebc47d45eabcb2a356488f5fa38df8d7f9cce5
% cached     : False
% title      : Power to conduct evaluations
:- pred may_conduct_evaluation/2, gloss('AI Office may conduct evaluation of general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred may_appoint_independent_experts/2, gloss('Commission may appoint independent experts to carry out evaluations'), source('celex:32024R1689/oj#art_92').
:- pred may_request_access/2, gloss('Commission may request access to general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_information/2, gloss('provider or representative must supply information requested'), source('celex:32024R1689/oj#art_92').
:- pred must_adopt_implementing_acts_evaluations/2, gloss('Commission shall adopt implementing acts for evaluations'), source('celex:32024R1689/oj#art_92').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider before requesting access'), source('celex:32024R1689/oj#art_92').

% Article 92(1)(a) - evaluation for compliance where art_91 information insufficient
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    information_gathered_pursuant_to(art_91, Model),
    insufficient(art_91, Model).

% Article 92(1)(b) - evaluation for systemic risks following qualified alert
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_present(Model),
    qualified_alert(Alert),
    alert_concerns(Alert, Model),
    alert_from_scientific_panel(Alert, art_90_par_1_unp_1_pnt_a).

% Article 92(2) - Commission may appoint independent experts
may_appoint_independent_experts(commission, Evaluation) :-
    may_conduct_evaluation(ai_office, Model),
    evaluation_concerns(Evaluation, Model),
    independent_expert(Expert),
    (scientific_panel_member(Expert, art_68) ; true).

% Article 92(2) - appointed experts must meet criteria
meets_criteria(Expert, art_68_par_2) :-
    may_appoint_independent_experts(commission, Evaluation),
    expert_appointed_for(Evaluation, Expert).

% Article 92(3) - request access through APIs or technical means
may_request_access(commission, Model) :-
    may_conduct_evaluation(ai_office, Model),
    purpose(Evaluation, art_92_par_1).

% Article 92(4) - request must state legal basis, purpose, reasons, period, fines
request_for_access(Request, Model) :-
    may_request_access(commission, Model),
    states_legal_basis(Request),
    states_purpose(Request),
    states_reasons(Request),
    sets_period(Request, _Period),
    states_fines(Request, art_101).

% Article 92(5) - providers or representatives must supply information
must_supply_information(Provider, Request) :-
    request_for_access(Request, Model),
    provider_of(Model, Provider).
must_supply_information(Representative, Request) :-
    request_for_access(Request, Model),
    representative_of(Model, Representative).
must_supply_information(Person, Request) :-
    request_for_access(Request, Model),
    provider_of(Model, Provider),
    (legal_person(Provider) ; company_or_firm(Provider) ; \+ legal_personality(Provider)),
    authorised_representative(Person, Provider).

% Article 92(6) - Commission shall adopt implementing acts for evaluations
must_adopt_implementing_acts_evaluations(commission, evaluation_arrangements) :-
    true.

% Article 92(7) - may initiate structured dialogue before requesting access
may_initiate_structured_dialogue(ai_office, Provider) :-
    general_purpose_ai_model(Model),
    provider_of(Model, Provider),
    \+ request_for_access(_Request, Model),
    purpose(Dialogue, gather_information(internal_testing(Model))),
    purpose(Dialogue, gather_information(internal_safeguards(Model))),
    purpose(Dialogue, gather_information(internal_procedures_measures(Model))).

% Provenance
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_experts/2, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts_evaluations/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
provenance(meets_criteria/2, 'celex:32024R1689/oj#art_92').
provenance(request_for_access/2, 'celex:32024R1689/oj#art_92').

% References
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
