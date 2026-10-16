% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 658c7e5f65af459739d8b1f7f05fc3b03b851e07f169b0099230e62093806426
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred presents_risk_to_health_or_safety_or_fundamental_rights/1, gloss('AI system presenting a risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred must_evaluate_ai_system_compliance/2, gloss('market surveillance authority must evaluate AI system compliance when sufficient reason exists'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_and_cooperate_on_fundamental_rights_risk/2, gloss('market surveillance authority must inform and cooperate with relevant national public authorities on fundamental rights risks'), source('celex:32024R1689/oj#art_79').
:- pred must_require_corrective_action_for_noncompliance/2, gloss('market surveillance authority must require operator to take corrective action for non-compliant AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_notified_body_of_measure/2, gloss('market surveillance authority must inform relevant notified body of measures taken'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_commission_and_member_states_of_cross_border_noncompliance/2, gloss('market surveillance authority must inform Commission and Member States of cross-border non-compliance'), source('celex:32024R1689/oj#art_79').
:- pred must_take_corrective_action_for_all_marketed_systems/2, gloss('operator must ensure corrective action for all AI systems made available on Union market'), source('celex:32024R1689/oj#art_79').
:- pred must_take_provisional_measures_on_inaction/2, gloss('market surveillance authority must take provisional measures if operator fails to act'), source('celex:32024R1689/oj#art_79').
:- pred must_notify_provisional_measures/2, gloss('market surveillance authority must notify Commission and Member States of provisional measures'), source('celex:32024R1689/oj#art_79').
:- pred noncompliance_reason/2, gloss('reason for non-compliance identified by market surveillance authority'), source('celex:32024R1689/oj#art_79').
:- pred must_inform_of_measures_and_objections/2, gloss('other market surveillance authorities must inform of measures and objections'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measure_deemed_justified/2, gloss('provisional measure deemed justified after period without objection'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure_restrictive_measures/2, gloss('market surveillance authority must ensure restrictive measures are taken'), source('celex:32024R1689/oj#art_79').

presents_risk_to_health_or_safety_or_fundamental_rights(S) :-
    ai_system(S),
    presents_risk(S).

must_evaluate_ai_system_compliance(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).

must_inform_and_cooperate_on_fundamental_rights_risk(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    presents_risk_to_health_or_safety_or_fundamental_rights(S).

must_require_corrective_action_for_noncompliance(A, O) :-
    market_surveillance_authority(A),
    operator(O),
    ai_system(S),
    must_evaluate_ai_system_compliance(A, S),
    \+ compliant_with_requirements(S).

must_inform_notified_body_of_measure(A, B) :-
    market_surveillance_authority(A),
    notified_body(B),
    must_require_corrective_action_for_noncompliance(A, _O).

must_inform_commission_and_member_states_of_cross_border_noncompliance(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_require_corrective_action_for_noncompliance(A, _O),
    noncompliance_not_restricted_to_national_territory(A, S).

must_take_corrective_action_for_all_marketed_systems(O, S) :-
    operator(O),
    ai_system(S),
    making_available_on_market(S),
    must_require_corrective_action_for_noncompliance(_A, O).

must_take_provisional_measures_on_inaction(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_require_corrective_action_for_noncompliance(A, O),
    \+ adequate_corrective_action_taken(O, S).

must_notify_provisional_measures(A, M) :-
    market_surveillance_authority(A),
    must_take_provisional_measures_on_inaction(A, _S),
    provisional_measure(M).

noncompliance_reason(S, prohibited_practice) :-
    ai_system(S),
    prohibited_practice_infringement(S).

noncompliance_reason(S, high_risk_requirement_failure) :-
    ai_system(S),
    high_risk_ai_system(S),
    \+ requirements_of_chapter_3_section_2(S).

noncompliance_reason(S, harmonised_standard_shortcoming) :-
    ai_system(S),
    harmonised_standard(H),
    presumption_of_conformity_shortcoming(H).

noncompliance_reason(S, transparency_obligation_failure) :-
    ai_system(S),
    \+ compliant_with_transparency_obligations(S).

must_inform_of_measures_and_objections(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_notify_provisional_measures(_OtherA, _M),
    \+ initiating_authority(A, S).

provisional_measure_deemed_justified(M, months(3)) :-
    must_notify_provisional_measures(_A, M),
    \+ objection_raised_within_period(M, months(3)).

provisional_measure_deemed_justified(M, days(30)) :-
    must_notify_provisional_measures(_A, M),
    noncompliance_reason(_S, prohibited_practice),
    \+ objection_raised_within_period(M, days(30)).

must_ensure_restrictive_measures(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_take_provisional_measures_on_inaction(A, S).

% Placeholder predicates required for rule bodies but not defined in this unit
compliant_with_requirements(_S) :- fail.
noncompliance_not_restricted_to_national_territory(_A, _S) :- fail.
adequate_corrective_action_taken(_O, _S) :- fail.
provisional_measure(_M) :- fail.
presumption_of_conformity_shortcoming(_H) :- fail.
compliant_with_transparency_obligations(_S) :- fail.
initiating_authority(_A, _S) :- fail.
objection_raised_within_period(_M, _Period) :- fail.

provenance(presents_risk_to_health_or_safety_or_fundamental_rights/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_ai_system_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate_on_fundamental_rights_risk/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action_for_noncompliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body_of_measure/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states_of_cross_border_noncompliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_action_for_all_marketed_systems/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures_on_inaction/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(noncompliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_measures_and_objections/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').

references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
