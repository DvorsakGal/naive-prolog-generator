% unit       : celex:32024R1689/oj#art_79
% title      : Procedure at national level for dealing with AI systems presenting a risk
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : gpt-oss:120b-cloud
% prompt sha : c44fe569e18070620b3ccb058693fd286cbabc7547204ebf0ebffbfbda52729d
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred market_surveillance_authority/1, gloss('national authority carrying out market surveillance'), source('celex:32024R1689/oj#art_79').
:- pred presents_risk/1, gloss('AI system presenting a risk as defined in the Regulation'), source('celex:32024R1689/oj#art_79').
:- pred sufficient_reason_to_consider_risk/2, gloss('Authority has sufficient reason to consider the system a risk'), source('celex:32024R1689/oj#art_79').
:- pred identifies_fundamental_rights_risk/1, gloss('System presents risk to fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred relevant_national_public_authority/1, gloss('National public authority or body referred to in article 77 paragraph 1'), source('celex:32024R1689/oj#art_79').
:- pred required_evaluation/2, gloss('Authority must evaluate the AI system for compliance'), source('celex:32024R1689/oj#art_79').
:- pred required_cooperation/2, gloss('Authority must cooperate with relevant national public authority'), source('celex:32024R1689/oj#art_79').
:- pred required_operator_cooperation/2, gloss('Operator must cooperate with market surveillance authority'), source('celex:32024R1689/oj#art_79').
:- pred evaluation_finds_non_compliance/2, gloss('Evaluation finds the AI system does not comply with requirements'), source('celex:32024R1689/oj#art_79').
:- pred required_corrective_action/3, gloss('Authority requires operator to take corrective action'), source('celex:32024R1689/oj#art_79').
:- pred required_withdrawal/3, gloss('Authority requires operator to withdraw the AI system'), source('celex:32024R1689/oj#art_79').
:- pred required_recall/3, gloss('Authority requires operator to recall the AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_notified_body/2, gloss('Authority must inform the relevant notified body'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_not_restricted_to_national_territory/2, gloss('Non‑compliance is not restricted to national territory'), source('celex:32024R1689/oj#art_79').
:- pred required_inform_commission_and_members/2, gloss('Authority must inform the Commission and other Member States'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_corrective_action/1, gloss('Operator must ensure corrective action is taken'), source('celex:32024R1689/oj#art_79').
:- pred operator_fails_to_take_adequate_action/2, gloss('Operator does not take adequate corrective action within the prescribed period'), source('celex:32024R1689/oj#art_79').
:- pred required_provisional_measures/2, gloss('Authority must take provisional measures (prohibit, restrict, withdraw, recall)'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_commission_and_members/2, gloss('Authority must notify the Commission and other Member States of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred objection/2, gloss('A market surveillance authority or the Commission objects to a provisional measure'), source('celex:32024R1689/oj#art_79').
:- pred objection_recorded/2, gloss('Record of an objection'), source('celex:32024R1689/oj#art_79').
:- pred no_objection_within_period/1, gloss('No objection has been raised within the prescribed period'), source('celex:32024R1689/oj#art_79').
:- pred justified_measure/1, gloss('Provisional measure is deemed justified'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_restrictive_measures/2, gloss('Authority must ensure appropriate restrictive measures are taken'), source('celex:32024R1689/oj#art_79').

required_evaluation(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System),
    sufficient_reason_to_consider_risk(Authority, System).

required_cooperation(Authority, PublicAuthority) :-
    market_surveillance_authority(Authority),
    ai_system(_System),
    identifies_fundamental_rights_risk(_System),
    relevant_national_public_authority(PublicAuthority).

required_operator_cooperation(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).

required_corrective_action(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    evaluation_finds_non_compliance(Authority, System).

required_withdrawal(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    evaluation_finds_non_compliance(Authority, System).

required_recall(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    evaluation_finds_non_compliance(Authority, System).

must_notify_notified_body(Authority, NotifiedBody) :-
    market_surveillance_authority(Authority),
    notified_body(NotifiedBody),
    market_surveillance_authority(Authority).

required_inform_commission_and_members(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    non_compliance_not_restricted_to_national_territory(Authority, System),
    market_surveillance_authority(Authority).

must_ensure_corrective_action(Operator) :-
    operator(Operator),
    operator(Operator).

required_provisional_measures(Authority, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    operator_fails_to_take_adequate_action(Operator, System),
    market_surveillance_authority(Authority).

must_notify_commission_and_members(Authority, Measure) :-
    market_surveillance_authority(Authority),
    Measure,
    market_surveillance_authority(Authority).

objection(Authority, Measure) :-
    objection_recorded(Authority, Measure).

no_objection_within_period(Measure) :-
    \+ objection(_, Measure).

justified_measure(Measure) :-
    no_objection_within_period(Measure).

must_ensure_restrictive_measures(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    market_surveillance_authority(Authority).

provenance(market_surveillance_authority/1, 'celex:32024R1689/oj#art_79').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(identifies_fundamental_rights_risk/1, 'celex:32024R1689/oj#art_79').
provenance(relevant_national_public_authority/1, 'celex:32024R1689/oj#art_79').
provenance(required_evaluation/2, 'celex:32024R1689/oj#art_79').
provenance(required_cooperation/2, 'celex:32024R1689/oj#art_79').
provenance(required_operator_cooperation/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_finds_non_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(required_corrective_action/3, 'celex:32024R1689/oj#art_79').
provenance(required_withdrawal/3, 'celex:32024R1689/oj#art_79').
provenance(required_recall/3, 'celex:32024R1689/oj#art_79').
provenance(must_notify_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_to_national_territory/2, 'celex:32024R1689/oj#art_79').
provenance(required_inform_commission_and_members/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/1, 'celex:32024R1689/oj#art_79').
provenance(operator_fails_to_take_adequate_action/2, 'celex:32024R1689/oj#art_79').
provenance(required_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_members/2, 'celex:32024R1689/oj#art_79').
provenance(objection/2, 'celex:32024R1689/oj#art_79').
provenance(objection_recorded/2, 'celex:32024R1689/oj#art_79').
provenance(no_objection_within_period/1, 'celex:32024R1689/oj#art_79').
provenance(justified_measure/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').

references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
