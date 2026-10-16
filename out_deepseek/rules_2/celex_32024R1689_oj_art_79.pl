% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 9ac6eb435efb45b8f967e1d4f546a8441aff36b9899c97220653d5ddf1799697
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred risk_presenting_system/1, gloss('AI system presenting a risk under Article 79(1)'), source('celex:32024R1689/oj#art_79').
:- pred must_carry_out_evaluation/2, gloss('market surveillance authority must carry out evaluation of AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_and_cooperate/2, gloss('market surveillance authority must inform and cooperate with relevant national public authorities'), source('celex:32024R1689/oj#art_79').
:- pred must_require_corrective_action/2, gloss('market surveillance authority must require operator to take corrective action'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_notified_body/2, gloss('market surveillance authority must inform relevant notified body'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority must inform Commission and other Member States'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_corrective_action/2, gloss('operator must ensure corrective action for all AI systems made available on Union market'), source('celex:32024R1689/oj#art_79').
:- pred must_take_provisional_measures/2, gloss('market surveillance authority must take provisional measures when operator fails to act'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_provisional_measures/2, gloss('market surveillance authority must notify Commission and Member States of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred notification_must_include_details/1, gloss('notification must include all available details'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_of_measures_and_objections/2, gloss('other market surveillance authorities must inform of measures and objections'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measure_deemed_justified/1, gloss('provisional measure deemed justified after three months without objection'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_restrictive_measures/1, gloss('market surveillance authorities must ensure appropriate restrictive measures'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_not_restricted_to_national_territory/1, gloss('non-compliance is not restricted to national territory'), source('celex:32024R1689/oj#art_79').
:- pred operator_fails_corrective_action/2, gloss('operator fails to take adequate corrective action within prescribed period'), source('celex:32024R1689/oj#art_79').
:- pred no_objection_raised/1, gloss('no objection raised within three months of notification'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_with_art_5/1, gloss('non-compliance with prohibition of AI practices in Article 5'), source('celex:32024R1689/oj#art_79').

risk_presenting_system(S) :-
    ai_system(S),
    ( risk_to_health_or_safety(S)
    ; risk_to_fundamental_rights(S)
    ).

must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    sufficient_reason_to_consider_risk(Authority, S).

must_inform_and_cooperate(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    risks_to_fundamental_rights_identified(S).

must_require_corrective_action(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    evaluation_finds_non_compliance(Authority, S).

must_inform_notified_body(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    must_require_corrective_action(Authority, S).

must_inform_commission_and_member_states(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    non_compliance_not_restricted_to_national_territory(S).

must_ensure_corrective_action(Operator, S) :-
    operator(Operator),
    risk_presenting_system(S),
    made_available_on_union_market(Operator, S).

must_take_provisional_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    operator_fails_corrective_action(_Operator, S).

must_notify_provisional_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    must_take_provisional_measures(Authority, S).

notification_must_include_details(Notification) :-
    must_notify_provisional_measures(_Authority, _S).

must_inform_of_measures_and_objections(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    \+ initiating_authority(Authority, S).

provisional_measure_deemed_justified(Measure) :-
    no_objection_raised(Measure).

provisional_measure_deemed_justified(Measure) :-
    non_compliance_with_art_5(Measure),
    no_objection_raised_within_days(Measure, 30).

must_ensure_restrictive_measures(Authority) :-
    market_surveillance_authority(Authority).

% Supporting predicates
risk_to_health_or_safety(S) :-
    risk_presenting_system(S).

risk_to_fundamental_rights(S) :-
    risk_presenting_system(S).

risks_to_fundamental_rights_identified(S) :-
    risk_presenting_system(S).

evaluation_finds_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S).

non_compliance_not_restricted_to_national_territory(S) :-
    risk_presenting_system(S).

operator_fails_corrective_action(Operator, S) :-
    operator(Operator),
    risk_presenting_system(S).

no_objection_raised(Measure) :-
    provisional_measure_deemed_justified(Measure).

no_objection_raised_within_days(Measure, 30) :-
    non_compliance_with_art_5(Measure).

non_compliance_with_art_5(S) :-
    risk_presenting_system(S).

initiating_authority(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S).

sufficient_reason_to_consider_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S).

% Provenance
provenance(risk_presenting_system/1, 'celex:32024R1689/oj#art_79').
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(notification_must_include_details/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_measures_and_objections/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/1, 'celex:32024R1689/oj#art_79').

% References
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
