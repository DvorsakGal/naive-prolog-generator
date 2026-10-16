% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 2eccce5866b5259685679fb5459dc326c3c96a5a1a2603fb43fdef5fbc236527
% cached     : False
% title      : Procedure
:- pred meets_condition_of_art_51_1_a/1, gloss('general-purpose AI model meets the condition referred to in Article 51(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred must_notify_commission_of_systemic_risk_model/2, gloss('provider must notify Commission of general-purpose AI model meeting systemic risk criteria'), source('celex:32024R1689/oj#art_52').
:- pred notification_deadline_for_systemic_risk_model/2, gloss('deadline for notifying Commission of general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred may_present_arguments_against_systemic_risk_classification/2, gloss('provider may present substantiated arguments that model does not present systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred commission_may_designate_systemic_risk_model/1, gloss('Commission may designate a general-purpose AI model as presenting systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred designation_based_on_annex_xiii_criteria/1, gloss('designation of systemic risk based on criteria set out in Annex XIII'), source('celex:32024R1689/oj#art_52').
:- pred qualified_alert_from_scientific_panel/1, gloss('qualified alert from the scientific panel pursuant to Article 90(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred must_reassess_systemic_risk_designation/2, gloss('Commission must take into account reasoned request for reassessment of systemic risk designation'), source('celex:32024R1689/oj#art_52').
:- pred reassessment_request_contains_new_reasons/1, gloss('reassessment request contains objective detailed and new reasons arising since designation'), source('celex:32024R1689/oj#art_52').
:- pred minimum_period_between_reassessment_requests/2, gloss('minimum period of six months between reassessment requests'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_systemic_risk_model_list/1, gloss('Commission must publish and keep up to date list of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_52').

meets_condition_of_art_51_1_a(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).

must_notify_commission_of_systemic_risk_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    meets_condition_of_art_51_1_a(M).

notification_deadline_for_systemic_risk_model(M, weeks(2)) :-
    meets_condition_of_art_51_1_a(M).

may_present_arguments_against_systemic_risk_classification(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    meets_condition_of_art_51_1_a(M).

commission_may_designate_systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    \+ meets_condition_of_art_51_1_a(M),
    systemic_risk(M).

commission_may_designate_systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    qualified_alert_from_scientific_panel(M),
    designation_based_on_annex_xiii_criteria(M).

designation_based_on_annex_xiii_criteria(M) :-
    general_purpose_ai_model(M).

must_reassess_systemic_risk_designation(_C, M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    reasoned_request(_, M),
    reassessment_request_contains_new_reasons(M).

reassessment_request_contains_new_reasons(M) :-
    general_purpose_ai_model(M).

minimum_period_between_reassessment_requests(M, months(6)) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

must_publish_systemic_risk_model_list(_C) :-
    true.

provenance(meets_condition_of_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify_commission_of_systemic_risk_model/2, 'celex:32024R1689/oj#art_52').
provenance(notification_deadline_for_systemic_risk_model/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments_against_systemic_risk_classification/2, 'celex:32024R1689/oj#art_52').
provenance(commission_may_designate_systemic_risk_model/1, 'celex:32024R1689/oj#art_52').
provenance(designation_based_on_annex_xiii_criteria/1, 'celex:32024R1689/oj#art_52').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_52').
provenance(must_reassess_systemic_risk_designation/2, 'celex:32024R1689/oj#art_52').
provenance(reassessment_request_contains_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(minimum_period_between_reassessment_requests/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_systemic_risk_model_list/1, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
