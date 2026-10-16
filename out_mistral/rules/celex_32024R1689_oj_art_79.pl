% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 22e21d13929d149e4027dcf396ce6794374d6b9d4b94f3d5c2c777a93baf039e
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred ai_system_presenting_risk/1, gloss('AI system presenting a risk to health, safety, or fundamental rights of persons'), source('celex:32024R1689/oj#art_79').
:- pred sufficient_reason_to_consider_risk/2, gloss('market surveillance authority has sufficient reason to consider an AI system presents a risk'), source('celex:32024R1689/oj#art_79').
:- pred evaluation_of_compliance/2, gloss('market surveillance authority carries out evaluation of AI system compliance with requirements and obligations'), source('celex:32024R1689/oj#art_79').
:- pred particular_attention_to_vulnerable_groups/2, gloss('particular attention given to AI systems presenting risk to vulnerable groups'), source('celex:32024R1689/oj#art_79').
:- pred risk_to_fundamental_rights_identified/1, gloss('risks to fundamental rights identified during evaluation'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_and_cooperate_with_national_authorities/2, gloss('market surveillance authority informs and fully cooperates with relevant national public authorities'), source('celex:32024R1689/oj#art_79').
:- pred must_cooperate_with_authority/2, gloss('operator cooperates as necessary with market surveillance authority and national public authorities'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_found/2, gloss('market surveillance authority finds AI system does not comply with requirements and obligations'), source('celex:32024R1689/oj#art_79').
:- pred must_take_corrective_actions/2, gloss('operator required to take corrective actions, withdraw, or recall AI system'), source('celex:32024R1689/oj#art_79').
:- pred corrective_action_period/2, gloss('period prescribed for corrective action, shorter of 15 working days or harmonisation legislation'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_notified_body/2, gloss('market surveillance authority informs relevant notified body'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_not_restricted_to_national_territory/1, gloss('non-compliance is not restricted to national territory'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_commission_and_member_states/3, gloss('market surveillance authority informs Commission and other Member States of evaluation results and required actions'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_corrective_action_union_market/2, gloss('operator ensures all appropriate corrective action taken for all AI systems made available on Union market'), source('celex:32024R1689/oj#art_79').
:- pred inadequate_corrective_action/2, gloss('operator does not take adequate corrective action within prescribed period'), source('celex:32024R1689/oj#art_79').
:- pred must_take_provisional_measures/2, gloss('market surveillance authority takes provisional measures to prohibit, restrict, withdraw, or recall'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_commission_and_member_states_of_measures/2, gloss('market surveillance authority notifies Commission and other Member States of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred notification_includes_details/2, gloss('notification includes all available details about non-compliant AI system'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_cause/2, gloss('indication of cause of non-compliance'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_of_measures_and_additional_info/2, gloss('other market surveillance authorities inform Commission and Member States of measures and additional information'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measure_deemed_justified/1, gloss('provisional measure deemed justified after three months without objection'), source('celex:32024R1689/oj#art_79').
:- pred objection_raised/2, gloss('objection raised by market surveillance authority or Commission'), source('celex:32024R1689/oj#art_79').
:- pred reduced_justification_period_for_art_5_non_compliance/1, gloss('three-month period reduced to 30 days for non-compliance with Article 5 prohibitions'), source('celex:32024R1689/oj#art_79').
:- pred must_take_restrictive_measures/2, gloss('market surveillance authorities ensure appropriate restrictive measures taken without undue delay'), source('celex:32024R1689/oj#art_79').

ai_system_presenting_risk(S) :-
    ai_system(S),
    risk_to_health_or_safety_or_fundamental_rights(S).

risk_to_health_or_safety_or_fundamental_rights(S) :-
    risk_to_health_or_safety(S).
risk_to_health_or_safety_or_fundamental_rights(S) :-
    risk_to_fundamental_rights(S).

risk_to_health_or_safety(S) :-
    ai_system_presenting_risk(S),
    risk_to_health(S).
risk_to_health_or_safety(S) :-
    ai_system_presenting_risk(S),
    risk_to_safety(S).

risk_to_fundamental_rights(S) :-
    ai_system_presenting_risk(S).

sufficient_reason_to_consider_risk(MSA, S) :-
    market_surveillance_authority(MSA),
    ai_system(S),
    ai_system_presenting_risk(S).

evaluation_of_compliance(MSA, S) :-
    market_surveillance_authority(MSA),
    ai_system(S),
    sufficient_reason_to_consider_risk(MSA, S).

particular_attention_to_vulnerable_groups(MSA, S) :-
    evaluation_of_compliance(MSA, S),
    ai_system_presenting_risk_to_vulnerable_groups(S).

ai_system_presenting_risk_to_vulnerable_groups(S) :-
    ai_system_presenting_risk(S),
    presents_risk_to_vulnerable_groups(S).

risk_to_fundamental_rights_identified(S) :-
    evaluation_of_compliance(_MSA, S),
    risk_to_fundamental_rights(S).

must_inform_and_cooperate_with_national_authorities(MSA, S) :-
    market_surveillance_authority(MSA),
    risk_to_fundamental_rights_identified(S).

must_cooperate_with_authority(O, MSA) :-
    operator(O),
    market_surveillance_authority(MSA),
    evaluation_of_compliance(MSA, _S).

non_compliance_found(MSA, S) :-
    market_surveillance_authority(MSA),
    evaluation_of_compliance(MSA, S),
    \+ complies_with_requirements_and_obligations(S).

complies_with_requirements_and_obligations(S) :-
    ai_system(S),
    meets_all_requirements(S),
    meets_all_obligations(S).

must_take_corrective_actions(O, S) :-
    operator(O),
    non_compliance_found(_MSA, S),
    related_to_operator(O, S).

corrective_action_period(S, period(shorter_of(days(15), harmonisation_legislation_period))) :-
    non_compliance_found(_MSA, S).

must_inform_notified_body(MSA, NB) :-
    market_surveillance_authority(MSA),
    notified_body(NB),
    non_compliance_found(MSA, _S).

non_compliance_not_restricted_to_national_territory(S) :-
    non_compliance_found(_MSA, S),
    non_compliance_extends_beyond_national_territory(S).

must_inform_commission_and_member_states(MSA, Results, Actions) :-
    market_surveillance_authority(MSA),
    non_compliance_not_restricted_to_national_territory(_S),
    evaluation_results(Results),
    required_actions(Actions).

must_ensure_corrective_action_union_market(O, S) :-
    operator(O),
    non_compliance_found(_MSA, S),
    made_available_on_union_market(O, S).

inadequate_corrective_action(O, S) :-
    operator(O),
    non_compliance_found(_MSA, S),
    \+ adequate_corrective_action_taken(O, S).

must_take_provisional_measures(MSA, S) :-
    market_surveillance_authority(MSA),
    inadequate_corrective_action(_O, S).

must_notify_commission_and_member_states_of_measures(MSA, Measures) :-
    market_surveillance_authority(MSA),
    must_take_provisional_measures(MSA, _S),
    provisional_measures(Measures).

notification_includes_details(Notification, Details) :-
    notification(Notification),
    includes_identification_of_system(Details),
    includes_origin_and_supply_chain(Details),
    includes_nature_of_non_compliance(Details),
    includes_risk_involved(Details),
    includes_nature_and_duration_of_measures(Details),
    includes_operator_arguments(Details).

non_compliance_cause(S, prohibition_art_5) :-
    non_compliance_found(_MSA, S),
    non_compliance_with_art_5_prohibition(S).
non_compliance_cause(S, high_risk_requirements_chp_3_sec_2) :-
    non_compliance_found(_MSA, S),
    failure_of_high_risk_system_requirements(S).
non_compliance_cause(S, shortcomings_harmonised_standards) :-
    non_compliance_found(_MSA, S),
    shortcomings_in_harmonised_standards_or_common_specifications(S).
non_compliance_cause(S, non_compliance_art_50) :-
    non_compliance_found(_MSA, S),
    non_compliance_with_art_50(S).

must_inform_of_measures_and_additional_info(MSA, Info) :-
    market_surveillance_authority(MSA),
    \+ initiating_authority(MSA),
    measures_adopted(MSA, _Measures),
    additional_information(Info).

provisional_measure_deemed_justified(Measure) :-
    provisional_measure(Measure),
    within_period(months(3)),
    \+ objection_raised(_Authority, Measure).

objection_raised(MSA, Measure) :-
    market_surveillance_authority(MSA),
    objects_to_measure(MSA, Measure).
objection_raised(commission, Measure) :-
    objects_to_measure(commission, Measure).

reduced_justification_period_for_art_5_non_compliance(Measure) :-
    provisional_measure(Measure),
    non_compliance_cause(_S, prohibition_art_5),
    within_period(days(30)),
    \+ objection_raised(_Authority, Measure).

must_take_restrictive_measures(MSA, S) :-
    market_surveillance_authority(MSA),
    ai_system(S),
    non_compliance_found(MSA, S).

provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_of_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(particular_attention_to_vulnerable_groups/2, 'celex:32024R1689/oj#art_79').
provenance(risk_to_fundamental_rights_identified/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate_with_national_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_found/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_79').
provenance(corrective_action_period/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/3, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action_union_market/2, 'celex:32024R1689/oj#art_79').
provenance(inadequate_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_member_states_of_measures/2, 'celex:32024R1689/oj#art_79').
provenance(notification_includes_details/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_cause/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_measures_and_additional_info/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_79').
provenance(reduced_justification_period_for_art_5_non_compliance/1, 'celex:32024R1689/oj#art_79').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_79').

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
