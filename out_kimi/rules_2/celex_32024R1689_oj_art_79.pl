% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 71730194b92a74cc5c9f21fe182c7d93a3472f5003e0cb0669dfe3eb67725e8b
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred risk_to_health_safety_or_rights/1, gloss('AI system presents risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred risk_to_vulnerable_groups/1, gloss('AI system presents risk to vulnerable groups'), source('celex:32024R1689/oj#art_79').
:- pred must_evaluate_compliance/2, gloss('market surveillance authority must evaluate AI system compliance'), source('celex:32024R1689/oj#art_79').
:- pred must_cooperate_with_authorities/2, gloss('relevant operators must cooperate with market surveillance authority'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_relevant_authorities/2, gloss('market surveillance authority must inform and cooperate with relevant national public authorities'), source('celex:32024R1689/oj#art_79').
:- pred must_require_corrective_action/2, gloss('market surveillance authority must require operator to take corrective action'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority must inform Commission and other Member States of non-compliance beyond national territory'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_corrective_action_all_systems/2, gloss('operator must ensure corrective action for all AI systems made available on Union market'), source('celex:32024R1689/oj#art_79').
:- pred must_take_restriction_measures/2, gloss('market surveillance authority must take provisional restriction measures'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_commission_and_member_states/2, gloss('market surveillance authority must notify Commission and other Member States of measures taken'), source('celex:32024R1689/oj#art_79').
:- pred notification_details/1, gloss('details to be included in notification of non-compliance measures'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_reason/2, gloss('reason for non-compliance identified in notification'), source('celex:32024R1689/oj#art_79').
:- period_for_objection/2, gloss('period for raising objection to provisional measure'), source('celex:32024R1689/oj#art_79').
:- pred deemed_justified/1, gloss('provisional measure deemed justified after no objection period'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_restrictive_measures/2, gloss('market surveillance authorities must ensure appropriate restrictive measures are taken'), source('celex:32024R1689/oj#art_79').

risk_to_health_safety_or_rights(S) :-
    ai_system(S),
    risk_to_health_safety_or_rights(S).

risk_to_vulnerable_groups(S) :-
    ai_system(S),
    risk_to_vulnerable_groups(S).

must_evaluate_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_health_safety_or_rights(S),
    sufficient_reason_to_consider_risk(Authority, S).

sufficient_reason_to_consider_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).

must_inform_relevant_authorities(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_fundamental_rights_identified(Authority, S),
    national_public_authority_or_body(RelevantAuthority).

risk_to_fundamental_rights_identified(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_health_safety_or_rights(S).

must_cooperate_with_authorities(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    evaluation_in_progress(Authority, _S).

evaluation_in_progress(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_health_safety_or_rights(S).

must_cooperate_with_authorities(Operator, OtherAuthority) :-
    operator(Operator),
    national_public_authority_or_body(OtherAuthority),
    evaluation_in_progress_with_cooperation(_Authority, OtherAuthority, _S).

evaluation_in_progress_with_cooperation(Authority, OtherAuthority, S) :-
    market_surveillance_authority(Authority),
    national_public_authority_or_body(OtherAuthority),
    ai_system(S),
    risk_to_health_safety_or_rights(S).

must_require_corrective_action(Authority, operator_action(Operator, action_for(S), within(Period))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(S),
    non_compliance_found(Authority, S),
    prescribed_period(Authority, Period).

non_compliance_found(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    \+ complies_with_requirements(S).

complies_with_requirements(S) :-
    ai_system(S),
    requirements_in_chapter_3_section_2(S).

prescribed_period(Authority, Period) :-
    market_surveillance_authority(Authority),
    period(shorter_of(days(15), union_harmonisation_legislation_period), Period).

must_require_corrective_action(Authority, operator_action(Operator, withdraw(S), within(Period))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(S),
    non_compliance_found(Authority, S),
    prescribed_period(Authority, Period).

must_require_corrective_action(Authority, operator_action(Operator, recall(S), within(Period))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(S),
    non_compliance_found(Authority, S),
    prescribed_period(Authority, Period).

must_inform_notified_body(Authority, Body) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    non_compliance_found(Authority, _S).

must_inform_commission_and_member_states(Authority, evaluation_results(S, Actions)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    non_compliance_not_restricted_nationally(Authority, S),
    required_operator_actions(Authority, S, Actions).

non_compliance_not_restricted_nationally(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    non_compliance_found(Authority, S).

required_operator_actions(Authority, S, Actions) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    findall(Action, must_require_corrective_action(Authority, Action), Actions).

must_ensure_corrective_action_all_systems(Operator, corrective_action_for_all(S)) :-
    operator(Operator),
    ai_system(S),
    made_available_on_market(Operator, S),
    corrective_action_required_for(S).

corrective_action_required_for(S) :-
    ai_system(S),
    non_compliance_found(_Authority, S).

must_take_restriction_measures(Authority, restriction(prohibit_or_restrict(S), national_market)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    inadequate_corrective_action(Operator, S),
    operator(Operator),
    period_referred_in_par_2(Period),
    \+ adequate_corrective_action_taken(Operator, S, Period).

inadequate_corrective_action(Operator, S) :-
    operator(Operator),
    ai_system(S),
    corrective_action_required_for(S).

adequate_corrective_action_taken(Operator, S, Period) :-
    operator(Operator),
    ai_system(S),
    corrective_action_taken(Operator, S),
    within_period(corrective_action(Operator, S), Period).

period_referred_in_par_2(Period) :-
    prescribed_period(_Authority, Period).

must_take_restriction_measures(Authority, restriction(withdraw(S), national_market)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    inadequate_corrective_action(Operator, S),
    operator(Operator),
    period_referred_in_par_2(Period),
    \+ adequate_corrective_action_taken(Operator, S, Period).

must_take_restriction_measures(Authority, restriction(recall(S), national_market)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    inadequate_corrective_action(Operator, S),
    operator(Operator),
    period_referred_in_par_2(Period),
    \+ adequate_corrective_action_taken(Operator, S, Period).

must_notify_commission_and_member_states(Authority, measures(Measures)) :-
    market_surveillance_authority(Authority),
    findall(M, must_take_restriction_measures(Authority, M), Measures),
    Measures \= [].

notification_details(details(system_identification(S), origin(Origin), supply_chain(Chain), nature_non_compliance(Nature), risk_involved(Risk), nature_duration_measures(Measures), operator_arguments(Arguments))) :-
    ai_system(S),
    non_compliance_found(_Authority, S),
    origin_of_system(S, Origin),
    supply_chain_of(S, Chain),
    nature_of_non_compliance(S, Nature),
    risk_involved(S, Risk),
    measures_taken_for(S, Measures),
    arguments_put_forward(S, Arguments).

non_compliance_reason(S, non_compliance_art_5(S)) :-
    ai_system(S),
    non_compliance_art_5(S).

non_compliance_reason(S, non_compliance_chapter_3_section_2(S)) :-
    ai_system(S),
    \+ requirements_in_chapter_3_section_2(S),
    high_risk_ai_system(S).

non_compliance_reason(S, non_compliance_harmonised_standards(S)) :-
    ai_system(S),
    non_compliance_harmonised_standards(S).

non_compliance_reason(S, non_compliance_art_50(S)) :-
    ai_system(S),
    non_compliance_art_50(S).

period_for_objection(measure(Measure), months(3)) :-
    must_take_restriction_measures(_Authority, Measure),
    \+ non_compliance_art_5_reason(Measure).

non_compliance_art_5_reason(Measure) :-
    must_take_restriction_measures(_Authority, Measure),
    restriction_target(Measure, S),
    non_compliance_art_5(S).

period_for_objection(measure(Measure), days(30)) :-
    must_take_restriction_measures(_Authority, Measure),
    non_compliance_art_5_reason(Measure).

deemed_justified(Measure) :-
    must_take_restriction_measures(Authority, Measure),
    period_for_objection(measure(Measure), Period),
    \+ objection_raised(_OtherAuthority, Measure, Period),
    \+ commission_objection(Measure).

objection_raised(OtherAuthority, Measure, Period) :-
    other_market_surveillance_authority(OtherAuthority),
    must_take_restriction_measures(_Authority, Measure),
    period_for_objection(measure(Measure), Period).

must_ensure_restrictive_measures(Authority, withdrawal(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    non_compliance_found(_AnyAuthority, S).

provenance(risk_to_health_safety_or_rights/1, 'celex:32024R1689/oj#art_79').
provenance(risk_to_vulnerable_groups/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_relevant_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(notification_details/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(period_for_objection/2, 'celex:32024R1689/oj#art_79').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_79').
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
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
