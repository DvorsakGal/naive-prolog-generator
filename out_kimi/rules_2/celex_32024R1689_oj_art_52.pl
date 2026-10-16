% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 7f320c416fb2e5280a1b879a994d8ed375c8cf2354903b607d675a05a460efea
% cached     : False
% title      : Procedure
:- pred must_notify_commission/2, gloss('provider must notify Commission within two weeks of meeting systemic risk threshold'), source('celex:32024R1689/oj#art_52').
:- pred may_designate_systemic_risk/2, gloss('Commission may designate general-purpose AI model as presenting systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred may_present_arguments/2, gloss('provider may present arguments against systemic risk classification'), source('celex:32024R1689/oj#art_52').
:- pred shall_reject_arguments/2, gloss('Commission shall reject insufficiently substantiated arguments'), source('celex:32024R1689/oj#art_52').
:- pred may_reassess_systemic_risk/2, gloss('Commission may reassess systemic risk designation upon provider request'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_systemic_risk_list/1, gloss('Commission shall publish and keep up to date list of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_52').

must_notify_commission(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    \+ notified_commission(P, M).

may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    systemic_risk_present(M),
    \+ notified_commission(_P, M).

may_present_arguments(P, arguments_against_systemic_risk(M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    notified_commission(P, M).

shall_reject_arguments(commission, arguments_against_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    arguments_submitted(P, arguments_against_systemic_risk(M)),
    \+ sufficiently_substantiated(arguments_against_systemic_risk(M)),
    \+ demonstrated_no_systemic_risk(P, M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    arguments_submitted(P, arguments_against_systemic_risk(M)),
    shall_reject_arguments(commission, arguments_against_systemic_risk(M)).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    may_designate_systemic_risk(commission, M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    qualified_alert(_A),
    commission_designated(M, systemic_risk).

may_reassess_systemic_risk(commission, reassessment_request(P, M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    reasoned_request(P, reassessment_request(P, M)),
    objective_detailed_new_reasons(reassessment_request(P, M)),
    earliest_six_months_after_designation(M).

must_take_into_account(commission, reassessment_request(P, M)) :-
    may_reassess_systemic_risk(commission, reassessment_request(P, M)).

may_reassess_systemic_risk(commission, reassessment_request(P, M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    reasoned_request(P, reassessment_request(P, M)),
    objective_detailed_new_reasons(reassessment_request(P, M)),
    earliest_six_months_after_maintained_designation(M).

must_publish_systemic_risk_list(commission).

must_keep_list_up_to_date(commission, list(general_purpose_ai_model_with_systemic_risk)).

provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(shall_reject_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_reassess_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_systemic_risk_list/1, 'celex:32024R1689/oj#art_52').
provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
