% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c49c0b09db780e08e0468b8fff6785545c276ef3327e8b0e27ece1e33ab50fff
% cached     : False
% title      : Union safeguard procedure
:- pred commission_consultation_triggered/1, gloss('Commission enters into consultation under Union safeguard procedure'), source('celex:32024R1689/oj#art_81').
:- pred commission_evaluation/1, gloss('Commission evaluates the national measure'), source('celex:32024R1689/oj#art_81').
:- pred commission_decision/1, gloss('Commission decides whether national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_justified/1, gloss('Commission considers the national measure justified'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_unjustified/1, gloss('Commission considers the national measure unjustified'), source('celex:32024R1689/oj#art_81').
:- pred objection_raised/2, gloss('market surveillance authority of a Member State raises objection to a measure'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_contrary_to_union_law/1, gloss('Commission considers the measure contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_with_prohibition/1, gloss('non-compliance with the prohibition of AI practices under Article 5'), source('celex:32024R1689/oj#art_81').
:- pred notification_received/1, gloss('notification under Article 79(5) received by Commission'), source('celex:32024R1689/oj#art_81').
:- pred restrictive_measure_required/1, gloss('Member State must take appropriate restrictive measures'), source('celex:32024R1689/oj#art_81').
:- pred withdrawal_of_measure_required/1, gloss('Member State must withdraw the national measure'), source('celex:32024R1689/oj#art_81').
:- pred shortcomings_in_standards/1, gloss('non-compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

% Article 81(1): Commission consultation and evaluation triggered by objections or Commission concern
commission_consultation_triggered(Measure) :-
    market_surveillance_authority(MSA1),
    market_surveillance_authority(MSA2),
    MSA1 \= MSA2,
    objection_raised(MSA1, Measure),
    measure_taken_by(MSA2, Measure),
    notification_received(Measure).

commission_consultation_triggered(Measure) :-
    commission_considers_contrary_to_union_law(Measure).

commission_evaluation(Measure) :-
    commission_consultation_triggered(Measure),
    market_surveillance_authority(MSA),
    operator(O),
    commission_enters_consultation_with(MSA, O),
    commission_evaluates(Measure).

% Time limits for Commission decision
commission_decision(Measure) :-
    commission_evaluation(Measure),
    notification_received(Measure),
    \+ non_compliance_with_prohibition(Measure),
    within_period(months(6), from(notification_received(Measure))).

commission_decision(Measure) :-
    commission_evaluation(Measure),
    notification_received(Measure),
    non_compliance_with_prohibition(Measure),
    within_period(days(60), from(notification_received(Measure))).

% Objection time limits
objection_raised(MSA, Measure) :-
    market_surveillance_authority(MSA),
    notification_received(Measure),
    \+ non_compliance_with_prohibition(Measure),
    within_period(months(3), from(notification_received(Measure))).

objection_raised(MSA, Measure) :-
    market_surveillance_authority(MSA),
    notification_received(Measure),
    non_compliance_with_prohibition(Measure),
    within_period(days(30), from(notification_received(Measure))).

% Article 81(2): Consequences of justified/unjustified measures
national_measure_justified(Measure) :-
    commission_decision(Measure),
    commission_decides_justified(Measure).

national_measure_unjustified(Measure) :-
    commission_decision(Measure),
    commission_decides_unjustified(Measure).

restrictive_measure_required(S) :-
    ai_system(S),
    national_measure_justified(measure(S)),
    member_state(MS),
    must_take_restrictive_measures(MS, S).

withdrawal_of_measure_required(Measure) :-
    national_measure_unjustified(Measure),
    member_state(MS),
    measure_taken_by(MS, Measure),
    must_withdraw_measure(MS, Measure).

% Article 81(3): Shortcomings in standards trigger specific procedure
shortcomings_in_standards(Measure) :-
    national_measure_justified(Measure),
    ai_system(S),
    measure(S, Measure),
    non_compliance_of(S),
    attributed_to_shortcomings_in_harmonised_standards(S).

shortcomings_in_standards(Measure) :-
    national_measure_justified(Measure),
    ai_system(S),
    measure(S, Measure),
    non_compliance_of(S),
    attributed_to_shortcomings_in_common_specifications(S).

must_apply_procedure(Measure) :-
    shortcomings_in_standards(Measure),
    procedure_provided_for('celex:32012R1025/oj#art_11').

% Helper predicates (auxiliary, not directly from text but needed for structure)
:- pred measure_taken_by/2, gloss('market surveillance authority took a measure'), source('celex:32024R1689/oj#art_81').
:- pred measure/2, gloss('measure concerning an AI system'), source('celex:32024R1689/oj#art_81').
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_81').
:- pred within_period/2, gloss('event occurs within a period from a reference point'), source('celex:32024R1689/oj#art_81').
:- pred from/1, gloss('reference point for time period'), source('celex:32024R1689/oj#art_81').
:- pred commission_enters_consultation_with/2, gloss('Commission enters into consultation with parties'), source('celex:32024R1689/oj#art_81').
:- pred commission_evaluates/1, gloss('Commission evaluates a measure'), source('celex:32024R1689/oj#art_81').
:- pred commission_decides_justified/1, gloss('Commission decides measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred commission_decides_unjustified/1, gloss('Commission decides measure is unjustified'), source('celex:32024R1689/oj#art_81').
:- pred must_take_restrictive_measures/2, gloss('Member State must take restrictive measures'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_measure/2, gloss('Member State must withdraw measure'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_of/1, gloss('AI system is non-compliant'), source('celex:32024R1689/oj#art_81').
:- pred attributed_to_shortcomings_in_harmonised_standards/1, gloss('non-compliance due to shortcomings in harmonised standards'), source('celex:32024R1689/oj#art_81').
:- pred attributed_to_shortcomings_in_common_specifications/1, gloss('non-compliance due to shortcomings in common specifications'), source('celex:32024R1689/oj#art_81').
:- pred procedure_provided_for/1, gloss('procedure provided for in a referenced act'), source('celex:32024R1689/oj#art_81').

% Core obligations from Article 81
must_notify_decision(Commission, MSA) :-
    commission_decision(Measure),
    measure_taken_by(MSA, Measure),
    commission_notifies_decision(Commission, MSA, Measure).

must_inform_other_authorities(Commission, MSA) :-
    commission_decision(Measure),
    market_surveillance_authority(MSA),
    MSA \= MSA_concerned,
    measure_taken_by(MSA_concerned, Measure),
    commission_informs(Commission, MSA, Measure).

must_ensure_restrictive_measures(MS, S) :-
    national_measure_justified(measure(S)),
    member_state(MS),
    ai_system(S),
    ensure_restrictive_measures(MS, S).

must_inform_commission_restrictive(MS, S) :-
    national_measure_justified(measure(S)),
    member_state(MS),
    ai_system(S),
    inform_commission(MS, restrictive_measures_taken(S)).

must_withdraw_measure(MS, Measure) :-
    national_measure_unjustified(Measure),
    member_state(MS),
    measure_taken_by(MS, Measure).

must_inform_commission_withdrawal(MS, Measure) :-
    national_measure_unjustified(Measure),
    member_state(MS),
    measure_taken_by(MS, Measure),
    inform_commission(MS, withdrawal_of(Measure)).

must_apply_procedure(Commission, Measure) :-
    shortcomings_in_standards(Measure),
    apply_procedure(Commission, 'celex:32012R1025/oj#art_11').

% Additional helper predicates for obligations
:- pred commission_notifies_decision/3, gloss('Commission notifies decision to authority'), source('celex:32024R1689/oj#art_81').
:- pred commission_informs/3, gloss('Commission informs authority of decision'), source('celex:32024R1689/oj#art_81').
:- pred ensure_restrictive_measures/2, gloss('Member State ensures restrictive measures'), source('celex:32024R1689/oj#art_81').
:- pred inform_commission/2, gloss('Member State informs Commission'), source('celex:32024R1689/oj#art_81').
:- pred withdrawal_of/1, gloss('withdrawal of a measure'), source('celex:32024R1689/oj#art_81').
:- pred restrictive_measures_taken/1, gloss('restrictive measures taken concerning an AI system'), source('celex:32024R1689/oj#art_81').
:- pred apply_procedure/2, gloss('Commission applies a procedure'), source('celex:32024R1689/oj#art_81').

% Provenance for all defined predicates
provenance(commission_consultation_triggered/1, 'celex:32024R1689/oj#art_81').
provenance(commission_evaluation/1, 'celex:32024R1689/oj#art_81').
provenance(commission_decision/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_union_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_prohibition/1, 'celex:32024R1689/oj#art_81').
provenance(notification_received/1, 'celex:32024R1689/oj#art_81').
provenance(restrictive_measure_required/1, 'celex:32024R1689/oj#art_81').
provenance(withdrawal_of_measure_required/1, 'celex:32024R1689/oj#art_81').
provenance(shortcomings_in_standards/1, 'celex:32024R1689/oj#art_81').
provenance(measure_taken_by/2, 'celex:32024R1689/oj#art_81').
provenance(measure/2, 'celex:32024R1689/oj#art_81').
provenance(member_state/1, 'celex:32024R1689/oj#art_81').
provenance(within_period/2, 'celex:32024R1689/oj#art_81').
provenance(from/1, 'celex:32024R1689/oj#art_81').
provenance(commission_enters_consultation_with/2, 'celex:32024R1689/oj#art_81').
provenance(commission_evaluates/1, 'celex:32024R1689/oj#art_81').
provenance(commission_decides_justified/1, 'celex:32024R1689/oj#art_81').
provenance(commission_decides_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_of/1, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_shortcomings_in_harmonised_standards/1, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_shortcomings_in_common_specifications/1, 'celex:32024R1689/oj#art_81').
provenance(procedure_provided_for/1, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/3, 'celex:32024R1689/oj#art_81').
provenance(must_inform_other_authorities/3, 'celex:32024R1689/oj#art_81').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_restrictive/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_withdrawal/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(commission_notifies_decision/3, 'celex:32024R1689/oj#art_81').
provenance(commission_informs/3, 'celex:32024R1689/oj#art_81').
provenance(ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(withdrawal_of/1, 'celex:32024R1689/oj#art_81').
provenance(restrictive_measures_taken/1, 'celex:32024R1689/oj#art_81').
provenance(apply_procedure/2, 'celex:32024R1689/oj#art_81').

% References
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
