% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e816c4f99d427284d571173edd98e3f17de62cf09ea6d6a57fbea402786961a1
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred ai_system_presenting_risk/1, gloss('AI system presenting risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred must_evaluate_compliance(Authority, System), gloss('market surveillance authority evaluates AI system compliance'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_fundamental_rights_body(Authority, System), gloss('authority informs relevant body when fundamental rights risk identified'), source('celex:32024R1689/oj#art_79').
:- pred must_cooperate_with_authority(Operator, Authority), gloss('operator cooperates with market surveillance authority'), source('celex:32024R1689/oj#art_79').
:- pred must_require_corrective_action(Authority, Operator), gloss('authority requires operator to take corrective action for non-compliant system'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_notified_body(Authority, System), gloss('authority informs notified body of required measures'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_cross_border_noncompliance(Authority, System), gloss('authority informs Commission and Member States of non-localised non-compliance'), source('celex:32024R1689/oj#art_79').
:- pred must_take_corrective_action(Operator, System), gloss('operator ensures corrective action for all systems made available'), source('celex:32024R1689/oj#art_79').
:- pred must_take_provisional_measure(Authority, System), gloss('authority takes provisional measure when operator fails to act'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_provisional_measure(Authority, System), gloss('authority notifies Commission and Member States of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred noncompliance_reason/2, gloss('reason for non-compliance of an AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_other_authorities(Authority, System), gloss('non-initiating authority informs others of measures or objections'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measure_deemed_justified(System), gloss('provisional measure deemed justified after objection period'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_restrictive_measure(Authority, System), gloss('authority ensures restrictive measures taken without undue delay'), source('celex:32024R1689/oj#art_79').

ai_system_presenting_risk(S) :-
    ai_system(S),
    risk(R),
    presents_risk_to_health_or_safety_or_fundamental_rights(S, R).

must_evaluate_compliance(A, S) :-
    market_surveillance_authority(A),
    ai_system_presenting_risk(S),
    sufficient_reason_to_consider_risk(A, S).

must_inform_fundamental_rights_body(A, S) :-
    market_surveillance_authority(A),
    ai_system_presenting_risk(S),
    fundamental_rights_risk_identified(S).

must_cooperate_with_authority(O, A) :-
    operator(O),
    market_surveillance_authority(A),
    evaluation_ongoing(A, _S).

must_require_corrective_action(A, O) :-
    market_surveillance_authority(A),
    operator(O),
    ai_system(S),
    non_compliance_found(A, S).

must_inform_notified_body(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    corrective_action_required(A, S).

must_inform_cross_border_noncompliance(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    non_compliance_not_restricted_to_national_territory(A, S).

must_take_corrective_action(O, S) :-
    operator(O),
    ai_system(S),
    making_available_on_market(S),
    corrective_action_required(_A, S).

must_take_provisional_measure(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    \+ adequate_corrective_action_taken(_O, S),
    period_expired(A, S).

must_notify_provisional_measure(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    provisional_measure_taken(A, S).

noncompliance_reason(S, prohibited_ai_practice) :-
    ai_system(S),
    non_compliance_found(_A, S).
noncompliance_reason(S, high_risk_requirement_failure) :-
    ai_system(S),
    non_compliance_found(_A, S).
noncompliance_reason(S, harmonised_standard_shortcoming) :-
    ai_system(S),
    non_compliance_found(_A, S).
noncompliance_reason(S, transparency_obligation_noncompliance) :-
    ai_system(S),
    non_compliance_found(_A, S).

must_inform_other_authorities(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    \+ initiating_authority(A, S).

provisional_measure_deemed_justified(S) :-
    ai_system(S),
    provisional_measure_taken(_A, S),
    \+ objection_raised_within_period(S).

must_ensure_restrictive_measure(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    non_compliance_found(_B, S).

provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_fundamental_rights_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_cross_border_noncompliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measure/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_provisional_measure/2, 'celex:32024R1689/oj#art_79').
provenance(noncompliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_other_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measure/2, 'celex:32024R1689/oj#art_79').

references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
