% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cec91ef0d447dc06e93c359bac7729d97d17dcdfd21d51d0717a5c64b071bf52
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred ai_system_presenting_risk/1, gloss('AI system presenting risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred must_evaluate_compliance/2, gloss('market surveillance authority shall evaluate AI system compliance'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_cooperate/2, gloss('market surveillance authority shall inform and cooperate with national public authorities'), source('celex:32024R1689/oj#art_79').
:- pred must_cooperate_with_authority/2, gloss('operator shall cooperate with market surveillance authority and other bodies'), source('celex:32024R1689/oj#art_79').
:- pred must_require_corrective_action/2, gloss('market surveillance authority shall require operator to take corrective action'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_notified_body/2, gloss('market surveillance authority shall inform relevant notified body'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority shall inform Commission and other Member States of non-compliance beyond national territory'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_corrective_action/2, gloss('operator shall ensure corrective action for all AI systems made available'), source('celex:32024R1689/oj#art_79').
:- pred must_take_provisional_measures/2, gloss('market surveillance authority shall take provisional measures when operator fails to act'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_measures/2, gloss('market surveillance authority shall notify Commission and other Member States of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred notification_details/1, gloss('details to be included in notification of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_art_5/1, gloss('non-compliance with prohibition of AI practices in Article 5'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_chapter_3_section_2/1, gloss('high-risk AI system failing to meet requirements in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_harmonised_standards/1, gloss('shortcomings in harmonised standards or common specifications conferring presumption of conformity'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_art_50/1, gloss('non-compliance with Article 50'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_of_adopted_measures/2, gloss('other market surveillance authorities shall inform of measures adopted and objections'), source('celex:32024R1689/oj#art_79').
:- pred measure_deemed_justified/1, gloss('provisional measure deemed justified after three months without objection'), source('celex:32024R1689/oj#art_79').
:- pred reduced_objection_period_art_5/1, gloss('objection period reduced to 30 days for Article 5 non-compliance'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_restrictive_measures/2, gloss('market surveillance authorities shall ensure appropriate restrictive measures'), source('celex:32024R1689/oj#art_79').

ai_system_presenting_risk(S) :-
    ai_system(S),
    risk_to_health_safety_or_fundamental_rights(S).

risk_to_health_safety_or_fundamental_rights(S) :-
    ai_system(S),
    risk(S).

must_evaluate_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    sufficient_reason_to_consider_risk(Authority, S),
    \+ evaluation_already_completed(Authority, S).

sufficient_reason_to_consider_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    ai_system_presenting_risk(S).

must_inform_cooperate(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_fundamental_rights_identified(Authority, S),
    relevant_national_public_authority(Body),
    \+ already_informed_and_cooperating(Authority, Body, S).

risk_to_fundamental_rights_identified(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_risk_to_fundamental_rights(Authority, S).

relevant_national_public_authority(Body) :-
    national_public_authority_or_body_referred_to_in_art_77_1(Body).

must_cooperate_with_authority(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    evaluation_underway(Authority, _S),
    cooperation_necessary(Operator, Authority).

must_cooperate_with_authority(Operator, Body) :-
    operator(Operator),
    relevant_national_public_authority(Body),
    evaluation_underway(_Authority, _S),
    cooperation_necessary(Operator, Body).

must_require_corrective_action(Authority, operator_of(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    relevant_operator(Operator, S),
    \+ corrective_action_already_required(Authority, Operator, S).

evaluation_finds_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_completed(Authority, S),
    \+ complies_with_requirements_and_obligations(S).

must_require_corrective_action(Authority, withdraw(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    relevant_operator(_Operator, S).

must_require_corrective_action(Authority, recall(S, within(Period))) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    relevant_operator(_Operator, S),
    prescribed_period(Authority, Period).

prescribed_period(Authority, days(15)) :-
    market_surveillance_authority(Authority).

prescribed_period(Authority, period_from_union_harmonisation_legislation(Period)) :-
    market_surveillance_authority(Authority),
    union_harmonisation_legislation_period(Period).

shorter_period(Period) :-
    prescribed_period(_Authority, days(15)),
    prescribed_period(_Authority, union_harmonisation_legislation_period(OtherPeriod)),
    period_shorter_than(OtherPeriod, days(15)),
    Period = OtherPeriod.

shorter_period(days(15)) :-
    prescribed_period(_Authority, days(15)),
    prescribed_period(_Authority, union_harmonisation_legislation_period(OtherPeriod)),
    \+ period_shorter_than(OtherPeriod, days(15)).

shorter_period(days(15)) :-
    prescribed_period(_Authority, days(15)),
    \+ prescribed_period(_Authority, union_harmonisation_legislation_period(_)).

must_inform_notified_body(Authority, Body) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    relevant_notified_body(Body, _S),
    corrective_action_required(Authority, _S),
    \+ already_informed(Authority, Body).

must_inform_commission_and_member_states(Authority, results_of_evaluation_and_actions(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    non_compliance_not_restricted_to_national_territory(Authority, S),
    \+ already_informed_commission_and_member_states(Authority, S).

non_compliance_not_restricted_to_national_territory(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    considers_non_compliance_not_restricted(Authority, S).

must_ensure_corrective_action(Operator, all_ai_systems_concerned(S)) :-
    operator(Operator),
    ai_system(S),
    corrective_action_required_for_system(Operator, S),
    made_available_on_union_market(Operator, S),
    \+ all_appropriate_corrective_action_taken(Operator, S).

must_take_provisional_measures(Authority, prohibit_or_restrict_availability(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    relevant_operator(Operator, S),
    \+ adequate_corrective_action_taken(Operator, S, within_period_from_art_79_par_2),
    \+ provisional_measures_already_taken(Authority, S).

must_take_provisional_measures(Authority, withdraw_from_market(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    relevant_operator(Operator, S),
    \+ adequate_corrective_action_taken(Operator, S, within_period_from_art_79_par_2),
    \+ provisional_measures_already_taken(Authority, S).

must_take_provisional_measures(Authority, recall(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    relevant_operator(Operator, S),
    \+ adequate_corrective_action_taken(Operator, S, within_period_from_art_79_par_2),
    \+ provisional_measures_already_taken(Authority, S).

must_notify_measures(Authority, measures_taken(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    provisional_measures_taken(Authority, S),
    \+ already_notified_commission_and_member_states(Authority, S).

notification_details(details(S, Origin, SupplyChain, NatureNonCompliance, RiskInvolved, NatureDurationMeasures, OperatorArguments)) :-
    ai_system(S),
    origin_of_ai_system(Origin, S),
    supply_chain(SupplyChain, S),
    nature_of_non_compliance(NatureNonCompliance, S),
    risk_involved(RiskInvolved, S),
    nature_and_duration_of_measures(NatureDurationMeasures, S),
    arguments_put_forward_by_operator(OperatorArguments, S).

non_compliance_art_5(S) :-
    ai_system(S),
    non_compliance_with_prohibition_ai_practices_art_5(S).

non_compliance_chapter_3_section_2(S) :-
    ai_system(S),
    high_risk_ai_system(S),
    failure_to_meet_requirements_chapter_3_section_2(S).

non_compliance_harmonised_standards(S) :-
    ai_system(S),
    shortcomings_in_harmonised_standards_or_common_specifications(S),
    confers_presumption_of_conformity(S).

non_compliance_art_50(S) :-
    ai_system(S),
    non_compliance_with_art_50(S).

must_inform_of_adopted_measures(OtherAuthority, adopted_measures(S)) :-
    market_surveillance_authority(OtherAuthority),
    ai_system(S),
    OtherAuthority \= InitiatingAuthority,
    measures_adopted(OtherAuthority, S),
    \+ already_informed_commission_and_member_states(OtherAuthority, S).

must_inform_of_adopted_measures(OtherAuthority, additional_information(S)) :-
    market_surveillance_authority(OtherAuthority),
    ai_system(S),
    additional_information_at_disposal(OtherAuthority, S),
    relates_to_non_compliance(S),
    \+ already_informed_commission_and_member_states(OtherAuthority, S).

must_inform_of_adopted_measures(OtherAuthority, objections_to_notified_national_measure(S)) :-
    market_surveillance_authority(OtherAuthority),
    ai_system(S),
    disagreement_with_notified_national_measure(OtherAuthority, S),
    \+ already_informed_commission_and_member_states(OtherAuthority, S).

measure_deemed_justified(Measure) :-
    provisional_measure_taken_by_authority(Measure, InitiatingAuthority),
    notification_sent(Measure, NotificationDate),
    three_months_elapsed_without_objection(NotificationDate),
    \+ objection_raised_by_market_surveillance_authority(Measure),
    \+ objection_raised_by_commission(Measure).

reduced_objection_period_art_5(Measure) :-
    provisional_measure_taken_by_authority(Measure, _Authority),
    non_compliance_due_to_art_5(Measure).

measure_deemed_justified(Measure) :-
    provisional_measure_taken_by_authority(Measure, InitiatingAuthority),
    notification_sent(Measure, NotificationDate),
    reduced_objection_period_art_5(Measure),
    thirty_days_elapsed_without_objection(NotificationDate),
    \+ objection_raised_by_market_surveillance_authority(Measure),
    \+ objection_raised_by_commission(Measure).

must_ensure_restrictive_measures(Authority, withdraw_from_market(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    \+ restrictive_measures_ensured(Authority, S).

provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(risk_to_health_safety_or_fundamental_rights/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(risk_to_fundamental_rights_identified/2, 'celex:32024R1689/oj#art_79').
provenance(relevant_national_public_authority/1, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_finds_non_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(prescribed_period/2, 'celex:32024R1689/oj#art_79').
provenance(shorter_period/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_to_national_territory/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_measures/2, 'celex:32024R1689/oj#art_79').
provenance(notification_details/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_art_5/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_chapter_3_section_2/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_harmonised_standards/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_art_50/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_adopted_measures/2, 'celex:32024R1689/oj#art_79').
provenance(measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(reduced_objection_period_art_5/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').

references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
