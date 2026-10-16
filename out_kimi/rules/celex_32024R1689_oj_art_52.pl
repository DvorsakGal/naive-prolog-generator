% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cc7d08a9c376144e9544b91176d9911e8a22b8a78958e877f2b7607cc6490f1d
% cached     : False
% title      : Procedure
:- pred must_notify/2, gloss('provider must notify the Commission'), source('celex:32024R1689/oj#art_52').
:- pred may_present_arguments/2, gloss('provider may present arguments against classification'), source('celex:32024R1689/oj#art_52').
:- pred shall_reject_arguments/1, gloss('Commission shall reject insufficiently substantiated arguments'), source('celex:32024R1689/art_52').
:- pred may_designate_systemic_risk/1, gloss('Commission may designate a model as presenting systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred shall_take_into_account/2, gloss('Commission shall take a request into account'), source('celex:32024R1689/oj#art_52').
:- pred may_reassess/1, gloss('Commission may reassess whether a model still presents systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred shall_ensure_published_list/0, gloss('Commission shall ensure list is published and kept up to date'), source('celex:32024R1689/oj#art_52').
:- pred high_impact_capabilities_met/1, gloss('general-purpose AI model meets condition in Article 51(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred systemic_risk_presents/1, gloss('general-purpose AI model presents systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred arguments_sufficiently_substantiated/1, gloss('arguments demonstrating absence of systemic risk are sufficiently substantiated'), source('celex:32024R1689/oj#art_52').
:- pred qualified_alert_from_scientific_panel/1, gloss('qualified alert from scientific panel pursuant to Article 90(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred reasoned_request_for_reassessment/1, gloss('provider submits reasoned request for reassessment'), source('celex:32024R1689/oj#art_52').
:- pred objective_detailed_new_reasons/1, gloss('request contains objective detailed and new reasons'), source('celex:32024R1689/oj#art_52').
:- pred earliest_six_months_after_designation/1, gloss('reassessment request at earliest six months after designation decision'), source('celex:32024R1689/oj#art_52').
:- pred earliest_six_months_after_maintained_decision/1, gloss('reassessment request at earliest six months after maintained designation decision'), source('celex:32024R1689/oj#art_52').
:- pred maintains_designation/1, gloss('Commission decides to maintain designation after reassessment'), source('celex:32024R1689/oj#art_52').

% Article 52(1): Notification obligation when high-impact capabilities are met
must_notify(Provider, designation_notification(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    high_impact_capabilities_met(Model).

% Article 52(1): Commission may designate ex officio if not notified but presents systemic risks
may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_presents(Model),
    \+ notified_commission(Model).

% Article 52(2): Provider may present arguments against classification
may_present_arguments(Provider, arguments_against_systemic_risk(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    high_impact_capabilities_met(Model).

% Article 52(3): Commission shall reject arguments if not sufficiently substantiated
shall_reject_arguments(Model) :-
    general_purpose_ai_model(Model),
    high_impact_capabilities_met(Model),
    \+ arguments_sufficiently_substantiated(Model).

% Article 52(4): Commission may designate ex officio or following qualified alert
may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    qualified_alert_from_scientific_panel(Model).

% Article 52(5): Commission shall take reasoned request into account
shall_take_into_account(Commission, reassessment_request(Provider, Model)) :-
    reasoned_request_for_reassessment(Model),
    objective_detailed_new_reasons(Model).

% Article 52(5): Commission may reassess after reasoned request
may_reassess(Model) :-
    general_purpose_ai_model(Model),
    reasoned_request_for_reassessment(Model),
    objective_detailed_new_reasons(Model).

% Article 52(5): Provider may request reassessment at earliest six months after designation
reasoned_request_for_reassessment(Model) :-
    general_purpose_ai_model(Model),
    designated_systemic_risk(Model),
    earliest_six_months_after_designation(Model).

% Article 52(5): Provider may request reassessment at earliest six months after maintained decision
reasoned_request_for_reassessment(Model) :-
    general_purpose_ai_model(Model),
    maintains_designation(Model),
    earliest_six_months_after_maintained_decision(Model).

% Article 52(6): Commission shall ensure published list and keep up to date
shall_ensure_published_list.

% Provenance
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(shall_reject_arguments/1, 'celex:32024R1689/oj#art_52').
provenance(shall_take_into_account/2, 'celex:32024R1689/oj#art_52').
provenance(may_reassess/1, 'celex:32024R1689/oj#art_52').
provenance(reasoned_request_for_reassessment/1, 'celex:32024R1689/oj#art_52').
provenance(shall_ensure_published_list/0, 'celex:32024R1689/oj#art_52').

% References
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
