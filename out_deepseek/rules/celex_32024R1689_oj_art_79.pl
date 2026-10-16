% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 44fc26f86c4f01284c5543e52e8afd3bab37658c2ab7207583300c31252d9d36
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred ai_system_presenting_risk/1, gloss('AI system presenting a risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred vulnerable_group/1, gloss('group of persons at heightened risk'), source('celex:32024R1689/oj#art_79').
:- pred corrective_action/1, gloss('action to bring an AI system into compliance'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measure/1, gloss('provisional measure to prohibit, restrict, withdraw or recall'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_reason/1, gloss('reason for non-compliance under Article 79(6)'), source('celex:32024R1689/oj#art_79').

ai_system_presenting_risk(S) :-
    ai_system(S),
    ( risk_to_health_or_safety(S)
    ; risk_to_fundamental_rights(S)
    ).

must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    has_sufficient_reason(Authority, S).

must_inform_and_cooperate(Authority, relevant_authorities(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    risk_to_fundamental_rights(S).

must_cooperate(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(_S).

must_require_corrective_action(Authority, Operator) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system_presenting_risk(S),
    finds_non_compliance(Authority, S).

must_inform_notified_body(Authority, Body) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    ai_system_presenting_risk(_S),
    finds_non_compliance(Authority, _S).

must_inform_commission_and_member_states(Authority, evaluation_and_actions(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    non_compliance_not_restricted_to_national_territory(Authority, S).

must_ensure_corrective_action(Operator, S) :-
    operator(Operator),
    ai_system_presenting_risk(S),
    made_available_on_union_market(Operator, S).

must_take_provisional_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    operator(Operator),
    \+ adequate_corrective_action_taken(Operator, S, _Period).

must_notify_commission_and_member_states(Authority, provisional_measures(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    must_take_provisional_measures(Authority, S).

notification_must_include(Notification, details(S)) :-
    notification(Notification),
    ai_system_presenting_risk(S).

must_indicate_non_compliance_reason(Authority, Reason) :-
    market_surveillance_authority(Authority),
    non_compliance_reason(Reason).

must_inform_commission_and_member_states_of_measures(Authority, measures_and_information(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    \+ initiating_authority(Authority).

must_inform_of_objections(Authority, objections(Measure)) :-
    market_surveillance_authority(Authority),
    provisional_measure(Measure),
    disagrees_with_measure(Authority, Measure).

provisional_measure_deemed_justified(Measure) :-
    provisional_measure(Measure),
    notification_period_elapsed(Measure, months(3)),
    \+ objection_raised(Measure).

provisional_measure_deemed_justified(Measure) :-
    provisional_measure(Measure),
    notification_period_elapsed(Measure, days(30)),
    non_compliance_with_art_5(Measure).

must_ensure_restrictive_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S).

provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(notification_must_include/2, 'celex:32024R1689/oj#art_79').
provenance(must_indicate_non_compliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states_of_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_objections/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').

references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
