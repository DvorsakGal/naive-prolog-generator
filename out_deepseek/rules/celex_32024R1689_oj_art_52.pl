% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 84539a10a34909be9f10c32ce7a14c80086737ee59be30156396b79597bf8cef
% cached     : False
% title      : Procedure
:- pred must_notify_commission/2, gloss('provider must notify Commission of model meeting systemic risk condition'), source('celex:32024R1689/oj#art_52').
:- pred may_designate_systemic_risk/1, gloss('Commission may designate model as presenting systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred may_present_arguments/2, gloss('provider may present arguments against systemic risk classification'), source('celex:32024R1689/oj#art_52').
:- pred must_reject_arguments/1, gloss('Commission must reject insufficiently substantiated arguments'), source('celex:32024R1689/oj#art_52').
:- pred considered_systemic_risk/1, gloss('model considered to have systemic risk after rejection'), source('celex:32024R1689/oj#art_52').
:- pred may_request_reassessment/2, gloss('provider may request reassessment of systemic risk designation'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_list/0, gloss('Commission must publish and maintain list of systemic risk models'), source('celex:32024R1689/oj#art_52').

must_notify_commission(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    within_two_weeks_of_condition_met_or_known(Model).

may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    \+ notified_commission_of_systemic_risk(Model).

notified_commission_of_systemic_risk(Model) :-
    must_notify_commission(_, Model).

may_present_arguments(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    presents_arguments_against_systemic_risk(Provider, Model).

must_reject_arguments(arguments(Provider, Model)) :-
    may_present_arguments(Provider, Model),
    \+ sufficiently_substantiated(arguments(Provider, Model)),
    \+ demonstrated_no_systemic_risk(Provider, Model).

considered_systemic_risk(Model) :-
    must_reject_arguments(arguments(_, Model)).

may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    ex_officio_or_qualified_alert(Model),
    meets_annex_13_criteria(Model).

may_request_reassessment(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    designated_systemic_risk_under_par_4(Model),
    reasoned_request(Provider, Model),
    new_reasons_since_designation(Provider, Model),
    at_least_six_months_since_designation(Model).

must_publish_list :-
    true.

provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(must_reject_arguments/1, 'celex:32024R1689/oj#art_52').
provenance(considered_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/0, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
