% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 038b3e2189d6380812c10c7f1cab7ba743bd9ac9ba0687de378c1ba6bc1a5c28
% cached     : False
% title      : Procedure
:- pred must_notify_commission_of_systemic_risk_condition/2, gloss('provider must notify Commission when general-purpose AI model meets systemic risk condition'), source('celex:32024R1689/oj#art_52').
:- pred notification_deadline_for_systemic_risk/2, gloss('deadline for notifying Commission of systemic risk condition'), source('celex:32024R1689/oj#art_52').
:- pred may_present_arguments_against_systemic_risk_classification/2, gloss('provider may present arguments that model does not present systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred commission_may_designate_systemic_risk_model/1, gloss('Commission may designate a general-purpose AI model as presenting systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_list_of_systemic_risk_models/1, gloss('Commission must publish and maintain list of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred may_request_reassessment_of_systemic_risk_designation/2, gloss('provider may request reassessment of systemic risk designation'), source('celex:32024R1689/oj#art_52').
:- pred minimum_period_before_reassessment_request/2, gloss('minimum period after designation before reassessment can be requested'), source('celex:32024R1689/oj#art_52').

must_notify_commission_of_systemic_risk_condition(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    meets_systemic_risk_condition_a(M).

notification_deadline_for_systemic_risk(M, weeks(2)) :-
    general_purpose_ai_model(M),
    meets_systemic_risk_condition_a(M).

may_present_arguments_against_systemic_risk_classification(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    meets_systemic_risk_condition_a(M).

commission_may_designate_systemic_risk_model(M) :-
    general_purpose_ai_model(M).

must_publish_list_of_systemic_risk_models(commission) :-
    true.

may_request_reassessment_of_systemic_risk_designation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    designated_as_systemic_risk_model(M).

minimum_period_before_reassessment_request(M, months(6)) :-
    general_purpose_ai_model(M),
    designated_as_systemic_risk_model(M).

provenance(must_notify_commission_of_systemic_risk_condition/2, 'celex:32024R1689/oj#art_52').
provenance(notification_deadline_for_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments_against_systemic_risk_classification/2, 'celex:32024R1689/oj#art_52').
provenance(commission_may_designate_systemic_risk_model/1, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list_of_systemic_risk_models/1, 'celex:32024R1689/oj#art_52').
provenance(may_request_reassessment_of_systemic_risk_designation/2, 'celex:32024R1689/oj#art_52').
provenance(minimum_period_before_reassessment_request/2, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
