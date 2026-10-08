% unit       : celex:32024R1689/oj#art_92
% title      : Power to conduct evaluations
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : gpt-oss:120b-cloud
% prompt sha : 0fb9e01b9cb24a8ec574887c58c92a1e342c7b78b0c8643395d94f6e28198786
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred permitted_conduct_evaluation/2, gloss('AI Office may conduct evaluations of a general‑purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred objective_assess_compliance/1, gloss('assessment of provider compliance with obligations'), source('celex:32024R1689/oj#art_92').
:- pred objective_investigate_systemic_risk/1, gloss('investigation of systemic risk of a general‑purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred info_insufficient_applies/1, gloss('information gathered pursuant to art 91 is insufficient'), source('celex:32024R1689/oj#art_92').
:- pred qualified_alert_applies/1, gloss('qualified alert from the scientific panel'), source('celex:32024R1689/oj#art_92').
:- pred permitted_appoint_independent_expert/3, gloss('Commission may appoint independent experts to carry out evaluations'), source('celex:32024R1689/oj#art_92').
:- pred independent_expert/1, gloss('person appointed as independent expert'), source('celex:32024R1689/oj#art_92').
:- pred criteria_met_applies/1, gloss('expert meets the criteria outlined in art 68 / par 2'), source('celex:32024R1689/oj#art_92').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_92').
:- pred permitted_request_access/2, gloss('Commission may request access to a general‑purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred request_access/2, gloss('request by the Commission for access to a model'), source('celex:32024R1689/oj#art_92').
:- pred must_state_access_request_details/2, gloss('Commission must state legal basis, purpose, reasons, period and fines in the access request'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_requested_information/2, gloss('Provider or its representative shall supply the requested information'), source('celex:32024R1689/oj#art_92').
:- pred must_adopt_implementing_act/1, gloss('Commission shall adopt implementing acts for evaluations'), source('celex:32024R1689/oj#art_92').
:- pred permitted_initiate_structured_dialogue/3, gloss('AI Office may initiate structured dialogue with provider before access request'), source('celex:32024R1689/oj#art_92').

permitted_conduct_evaluation(Office, Model) :-
    ai_office(Office),
    general_purpose_ai_model(Model),
    (   objective_assess_compliance(Model)
    ;   objective_investigate_systemic_risk(Model)
    ).

objective_assess_compliance(Model) :-
    general_purpose_ai_model(Model),
    info_insufficient_applies(Model).

objective_investigate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    qualified_alert_applies(Model).

permitted_appoint_independent_expert(Commission, Expert, Model) :-
    commission(Commission),
    independent_expert(Expert),
    general_purpose_ai_model(Model),
    criteria_met_applies(Expert).

permitted_request_access(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model).

request_access(Commission, Model) :-
    permitted_request_access(Commission, Model).

must_state_access_request_details(Commission, Model) :-
    request_access(Commission, Model),
    commission(Commission),
    general_purpose_ai_model(Model).

must_supply_requested_information(Provider, Model) :-
    request_access(_Commission, Model),
    (   provider(Provider)
    ;   authorised_representative(Provider)
    ),
    general_purpose_ai_model(Model).

must_adopt_implementing_act(Commission) :-
    commission(Commission).

permitted_initiate_structured_dialogue(Office, Provider, Model) :-
    ai_office(Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ request_access(_Commission, Model).

provenance(permitted_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(objective_assess_compliance/1, 'celex:32024R1689/oj#art_92').
provenance(objective_investigate_systemic_risk/1, 'celex:32024R1689/oj#art_92').
provenance(info_insufficient_applies/1, 'celex:32024R1689/oj#art_92').
provenance(qualified_alert_applies/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_independent_expert/3, 'celex:32024R1689/oj#art_92').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(criteria_met_applies/1, 'celex:32024R1689/oj#art_92').
provenance(commission/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_access_request_details/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_act/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/3, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
