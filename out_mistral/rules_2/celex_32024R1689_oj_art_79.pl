% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 29b5a4562237425ea3e9343c23e584116073948f23a0080a96d1698613c8ab29
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred presents_risk/1, gloss('system presents a risk within the meaning of Article 79(1)'), source('reconciled').
:- pred risk_to_health_safety_fundamental_rights/1, gloss('risk to health safety fundamental rights'), source('reconciled').
:- pred risk_to_health_or_safety/1, gloss('risk to the health or safety of persons'), source('reconciled').
:- pred risk_to_fundamental_rights/1, gloss('risk to fundamental rights'), source('reconciled').
:- pred must_take_corrective_actions/2, gloss('operator required to take corrective actions, withdraw, or recall AI system'), source('reconciled').
:- pred must_take_restrictive_measures/2, gloss('market surveillance authorities ensure appropriate restrictive measures taken without undue delay'), source('reconciled').
:- pred must_inform_market_surveillance_authority/2, gloss('must inform market surveillance authority'), source('reconciled').
:- pred must_notify_market_surveillance_authority/2, gloss('must notify market surveillance authority'), source('reconciled').
:- pred must_cooperate_with_authorities/2, gloss('cooperate with AI Office and competent authorities upon reasoned request'), source('reconciled').
:- pred must_cooperate_with_authorities/3, gloss('must cooperate with authorities'), source('reconciled').
:- pred must_report/2, gloss('who is obliged to report, what about'), source('reconciled').
:- pred inform_commission/2, gloss('Member State informs Commission'), source('reconciled').
:- pred non_compliance_with_prohibition/1, gloss('non-compliance with the prohibition of AI practices under Article 5'), source('reconciled').
:- pred no_objection_within/2, gloss('no objection raised by Member State or Commission within 15 calendar days of receipt of information'), source('reconciled').
:- pred without_delay/0, gloss('without delay'), source('reconciled').
:- pred without_delay/1, gloss('action taken without undue delay'), source('reconciled').
:- pred member_state/1, gloss('a Member State of the European Union'), source('reconciled').
:- pred market_surveillance_authority/1, gloss('national authority carrying out market surveillance'), source('reconciled').
:- pred notified_body/1, gloss('conformity assessment body notified in accordance with the regulation'), source('reconciled').
:- pred operator/1, gloss('provider, product manufacturer, deployer, authorised representative, importer or distributor'), source('reconciled').
:- pred ai_system/1, gloss('machine‑based system with autonomy'), source('reconciled').
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high-risk'), source('reconciled').
:- pred harmonised_standard/1, gloss('standard defined in EU legislation'), source('reconciled').
:- pred common_specification/1, gloss('set of technical specifications to comply with requirements'), source('reconciled').
:- pred nature_gravity_duration/1, gloss('nature, gravity and duration of the infringement'), source('reconciled').

% New predicates introduced for this provision
:- pred ai_system_presenting_risk/1, gloss('AI system presenting a risk as defined in Article 79(1)'), source('celex:32024R1689/oj#art_79').
:- pred sufficient_reason_to_consider_risk/2, gloss('market surveillance authority has sufficient reason to consider AI system presents risk'), source('celex:32024R1689/oj#art_79').
:- pred evaluation_of_compliance/2, gloss('market surveillance authority carries out evaluation of AI system compliance with requirements and obligations'), source('celex:32024R1689/oj#art_79').
:- pred particular_attention_vulnerable_groups/1, gloss('particular attention given to AI systems presenting risk to vulnerable groups'), source('celex:32024R1689/oj#art_79').
:- pred inform_and_cooperate_fundamental_rights/2, gloss('market surveillance authority informs and fully cooperates with national public authorities on fundamental rights risks'), source('celex:32024R1689/oj#art_79').
:- pred operator_cooperation_required/2, gloss('relevant operators cooperate with market surveillance authority and national public authorities'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_found/2, gloss('market surveillance authority finds AI system does not comply with requirements and obligations'), source('celex:32024R1689/oj#art_79').
:- pred corrective_action_period/2, gloss('period prescribed by market surveillance authority for corrective action, at most 15 working days or as provided in Union harmonisation legislation'), source('celex:32024R1689/oj#art_79').
:- pred inform_notified_body/2, gloss('market surveillance authority informs relevant notified body of measures'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_not_restricted_national/1, gloss('non-compliance is not restricted to national territory'), source('celex:32024R1689/oj#art_79').
:- pred inform_commission_and_member_states/3, gloss('market surveillance authority informs Commission and other Member States of evaluation results and required actions'), source('celex:32024R1689/oj#art_79').
:- pred corrective_action_all_union_market/2, gloss('operator ensures corrective action taken for all AI systems made available on Union market'), source('celex:32024R1689/oj#art_79').
:- pred inadequate_corrective_action/2, gloss('operator does not take adequate corrective action within prescribed period'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measures_taken/2, gloss('market surveillance authority takes provisional measures to prohibit, restrict, withdraw or recall'), source('celex:32024R1689/oj#art_79').
:- pred notify_provisional_measures/3, gloss('market surveillance authority notifies Commission and other Member States of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred notification_details_included/2, gloss('notification includes all available details about non-compliant AI system'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_cause_identified/2, gloss('market surveillance authority indicates cause of non-compliance'), source('celex:32024R1689/oj#art_79').
:- pred other_authorities_inform_of_measures/3, gloss('other market surveillance authorities inform Commission and Member States of measures and objections'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measure_deemed_justified/1, gloss('provisional measure deemed justified after no objection within three months'), source('celex:32024R1689/oj#art_79').
:- pred objection_raised/2, gloss('objection raised by market surveillance authority of Member State or Commission'), source('celex:32024R1689/oj#art_79').
:- pred period_reduced_for_art_5_non_compliance/1, gloss('three-month period reduced to 30 days for non-compliance with Article 5 prohibition'), source('celex:32024R1689/oj#art_79').

% Article 79(1): AI systems presenting a risk definition
ai_system_presenting_risk(S) :-
    ai_system(S),
    presents_risk(S),
    risk_to_health_safety_fundamental_rights(S).

risk_to_health_safety_fundamental_rights(S) :-
    risk_to_health_or_safety(S).

risk_to_health_safety_fundamental_rights(S) :-
    risk_to_fundamental_rights(S).

% Article 79(2): Evaluation procedure
sufficient_reason_to_consider_risk(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    ai_system_presenting_risk(S).

evaluation_of_compliance(A, S) :-
    sufficient_reason_to_consider_risk(A, S),
    ai_system(S).

particular_attention_vulnerable_groups(S) :-
    evaluation_of_compliance(_A, S),
    ai_system_presenting_risk(S).

inform_and_cooperate_fundamental_rights(A, S) :-
    evaluation_of_compliance(A, S),
    risk_to_fundamental_rights(S).

operator_cooperation_required(O, A) :-
    operator(O),
    evaluation_of_compliance(A, _S),
    member_state(A).

% Non-compliance found and corrective actions required
non_compliance_found(A, S) :-
    evaluation_of_compliance(A, S),
    \+ meets_all_requirements(S).

meets_all_requirements(S) :-
    ai_system(S),
    complies_with_requirements(S).

must_take_corrective_actions(O, S) :-
    operator(O),
    non_compliance_found(A, S),
    member_state(A),
    without_delay(corrective_action_required(O, S)).

corrective_action_period(A, period(working_days(15))) :-
    market_surveillance_authority(A),
    member_state(A).

corrective_action_period(A, period(as_in_union_harmonisation_legislation)) :-
    market_surveillance_authority(A),
    member_state(A).

inform_notified_body(A, B) :-
    market_surveillance_authority(A),
    notified_body(B),
    non_compliance_found(A, _S).

% Article 79(3): Non-compliance not restricted to national territory
non_compliance_not_restricted_national(S) :-
    non_compliance_found(_A, S),
    ai_system(S).

inform_commission_and_member_states(A, S, results(evaluation, actions_required)) :-
    market_surveillance_authority(A),
    member_state(A),
    non_compliance_not_restricted_national(S),
    without_delay.

% Article 79(4): Corrective action for all AI systems on Union market
corrective_action_all_union_market(O, S) :-
    operator(O),
    non_compliance_found(_A, S),
    made_available_on_union_market(O, S).

made_available_on_union_market(O, S) :-
    operator(O),
    ai_system(S),
    making_available_on_market(S).

% Article 79(5): Provisional measures when inadequate corrective action
inadequate_corrective_action(O, S) :-
    operator(O),
    non_compliance_found(A, S),
    \+ adequate_corrective_action_taken(O, S, A).

adequate_corrective_action_taken(O, S, A) :-
    operator(O),
    non_compliance_found(A, S),
    corrective_action_completed(O, S).

provisional_measures_taken(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    inadequate_corrective_action(_O, S),
    measure(prohibit_or_restrict_or_withdraw_or_recall).

notify_provisional_measures(A, S, commission_and_member_states) :-
    market_surveillance_authority(A),
    member_state(A),
    provisional_measures_taken(A, S),
    without_delay.

% Article 79(6): Notification details
notification_details_included(A, details(identification, origin, supply_chain, nature_non_compliance, risk, nature_duration_measures, operator_arguments)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, _S).

non_compliance_cause_identified(A, cause(non_compliance_with_prohibition)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    non_compliance_with_prohibition(S).

non_compliance_cause_identified(A, cause(failure_high_risk_requirements)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    high_risk_ai_system(S),
    \+ meets_chapter_3_section_2_requirements(S).

non_compliance_cause_identified(A, cause(shortcomings_harmonised_standards_or_common_specifications)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    harmonised_standard(_H),
    \+ presumption_of_conformity_conferred(S).

non_compliance_cause_identified(A, cause(non_compliance_with_article_50)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    \+ complies_with_article_50(S).

% Article 79(7): Other authorities inform of measures
other_authorities_inform_of_measures(A, S, measures_and_objections) :-
    market_surveillance_authority(A),
    member_state(A),
    \+ initiating_authority(A, S),
    provisional_measures_taken(_InitiatingA, S),
    without_delay.

initiating_authority(A, S) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S).

% Article 79(8): Provisional measure deemed justified
objection_raised(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    provisional_measures_taken(_InitiatingA, S),
    \+ initiating_authority(A, S).

objection_raised(commission, S) :-
    provisional_measures_taken(_A, S).

provisional_measure_deemed_justified(S) :-
    provisional_measures_taken(A, S),
    member_state(A),
    no_objection_within(months(3), S).

no_objection_within(months(3), S) :-
    provisional_measures_taken(A, S),
    \+ objection_raised(_, S).

period_reduced_for_art_5_non_compliance(S) :-
    provisional_measures_taken(_A, S),
    non_compliance_with_prohibition(S).

no_objection_within(days(30), S) :-
    period_reduced_for_art_5_non_compliance(S),
    \+ objection_raised(_, S).

% Article 79(9): Restrictive measures without undue delay
must_take_restrictive_measures(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    non_compliance_found(A, S),
    without_delay(withdrawal_from_market(S)).

% Provenance facts
provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(risk_to_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_of_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(particular_attention_vulnerable_groups/1, 'celex:32024R1689/oj#art_79').
provenance(inform_and_cooperate_fundamental_rights/2, 'celex:32024R1689/oj#art_79').
provenance(operator_cooperation_required/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_found/2, 'celex:32024R1689/oj#art_79').
provenance(corrective_action_period/2, 'celex:32024R1689/oj#art_79').
provenance(inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_national/1, 'celex:32024R1689/oj#art_79').
provenance(inform_commission_and_member_states/3, 'celex:32024R1689/oj#art_79').
provenance(corrective_action_all_union_market/2, 'celex:32024R1689/oj#art_79').
provenance(inadequate_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measures_taken/2, 'celex:32024R1689/oj#art_79').
provenance(notify_provisional_measures/3, 'celex:32024R1689/oj#art_79').
provenance(notification_details_included/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_cause_identified/2, 'celex:32024R1689/oj#art_79').
provenance(other_authorities_inform_of_measures/3, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_79').
provenance(period_reduced_for_art_5_non_compliance/1, 'celex:32024R1689/oj#art_79').

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
