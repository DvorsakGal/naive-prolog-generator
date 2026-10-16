% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 5abb63edf3459f7f4d20ba19173d48c651565f3f124b183012d0ef3d792647e8
% cached     : False
% title      : Power to conduct evaluations
:- pred may_conduct_evaluation/2, gloss('AI Office may conduct evaluation of general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred may_appoint_independent_experts/1, gloss('Commission may appoint independent experts for evaluations'), source('celex:32024R1689/oj#art_92').
:- pred may_request_access/2, gloss('Commission may request access to general-purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_information/2, gloss('provider must supply information requested'), source('celex:32024R1689/oj#art_92').
:- pred must_adopt_implementing_acts/1, gloss('Commission must adopt implementing acts for evaluation arrangements'), source('celex:32024R1689/oj#art_92').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_92').

may_conduct_evaluation(AI_Office, Model) :-
    ai_office(AI_Office),
    general_purpose_ai_model(Model),
    evaluation_purpose(Model, Purpose),
    Purpose = assess_compliance ; Purpose = investigate_systemic_risks.

evaluation_purpose(Model, assess_compliance) :-
    general_purpose_ai_model(Model),
    provider(Provider),
    \+ information_sufficient(Provider, Model).

evaluation_purpose(Model, investigate_systemic_risks) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    qualified_alert_from_scientific_panel(Model).

may_appoint_independent_experts(Commission) :-
    ai_office(Commission),
    independent_experts(Experts),
    experts_designated_by_member_states(Experts).

may_request_access(Commission, Model) :-
    ai_office(Commission),
    general_purpose_ai_model(Model),
    may_conduct_evaluation(Commission, Model),
    access_request_legal_basis_stated(Model),
    access_request_purpose_stated(Model),
    access_request_period_set(Model),
    access_request_fines_stated(Model).

must_supply_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    may_request_access(_, Model).

must_supply_information(Representative, Model) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model),
    may_request_access(_, Model).

must_adopt_implementing_acts(Commission) :-
    ai_office(Commission),
    implementing_acts(Acts),
    examination_procedure_applies(Acts).

may_initiate_structured_dialogue(AI_Office, Provider) :-
    ai_office(AI_Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ may_request_access(_, Model).

provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_experts/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
