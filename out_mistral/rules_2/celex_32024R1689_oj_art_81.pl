% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : b885d323ffa0b435cf07d6ae3a332991b2941211ff018a7ee285bfb25d9f70bd
% cached     : False
% title      : Union safeguard procedure
:- pred must_enter_into_consultation/2, gloss('Commission enters into consultation with Member State authority and operators'), source('celex:32024R1689/oj#art_81').
:- pred must_evaluate_national_measure/1, gloss('Commission evaluates the national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_decide_justification/2, gloss('Commission decides whether national measure is justified within deadline'), source('celex:32024R1689/oj#art_81').
:- pred must_notify_decision/2, gloss('Commission notifies its decision to the market surveillance authority concerned'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_all_authorities/2, gloss('Commission informs all other market surveillance authorities of its decision'), source('celex:32024R1689/oj#art_81').
:- pred justified_national_measure/1, gloss('Commission considers the national measure justified'), source('celex:32024R1689/oj#art_81').
:- pred unjustified_national_measure/1, gloss('Commission considers the national measure unjustified'), source('celex:32024R1689/oj#art_81').
:- pred objections_raised/2, gloss('market surveillance authority of a Member State raises objections to a measure'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_contrary_to_union_law/1, gloss('Commission considers the measure contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred trigger_union_safeguard_procedure/1, gloss('condition triggering the Union safeguard procedure is met'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_with_prohibition_present/1, gloss('non-compliance with the prohibition of AI practices under Article 5 is present'), source('celex:32024R1689/oj#art_81').
:- pred deadline_months/2, gloss('deadline expressed in months for a given situation'), source('celex:32024R1689/oj#art_81').
:- pred deadline_days/2, gloss('deadline expressed in days for a given situation'), source('celex:32024R1689/oj#art_81').
:- pred notification_received/1, gloss('notification under Article 79(5) has been received'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_taken/2, gloss('market surveillance authority of a Member State has taken a national measure'), source('celex:32024R1689/oj#art_81').
:- pred shortcomings_in_harmonised_standards_or_common_specifications/1, gloss('non-compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

trigger_union_safeguard_procedure(M) :-
    national_measure_taken(A, M),
    notification_received(N),
    within_period(N, months(3), M),
    objections_raised(A, M).

trigger_union_safeguard_procedure(M) :-
    national_measure_taken(A, M),
    notification_received(N),
    within_period(N, days(30), M),
    non_compliance_with_prohibition_present(M),
    objections_raised(A, M).

trigger_union_safeguard_procedure(M) :-
    national_measure_taken(_A, M),
    commission_considers_contrary_to_union_law(M).

must_enter_into_consultation(commission, member_state(M)) :-
    trigger_union_safeguard_procedure(Measure),
    national_measure_taken(A, Measure),
    market_surveillance_authority(A),
    member_state(M),
    without_delay.

must_evaluate_national_measure(Measure) :-
    trigger_union_safeguard_procedure(Measure),
    must_enter_into_consultation(commission, _).

must_decide_justification(commission, Measure) :-
    must_evaluate_national_measure(Measure),
    notification_received(N),
    within_period(N, months(6), Measure).

must_decide_justification(commission, Measure) :-
    must_evaluate_national_measure(Measure),
    non_compliance_with_prohibition_present(Measure),
    notification_received(N),
    within_period(N, days(60), Measure).

must_notify_decision(commission, A) :-
    must_decide_justification(commission, Measure),
    national_measure_taken(A, Measure),
    market_surveillance_authority(A).

must_inform_all_authorities(commission, A) :-
    must_decide_justification(commission, _Measure),
    market_surveillance_authority(A),
    member_state(MS),
    \+ national_measure_taken(A, _).

justified_national_measure(Measure) :-
    must_decide_justification(commission, Measure),
    commission_decides_justified(Measure).

unjustified_national_measure(Measure) :-
    must_decide_justification(commission, Measure),
    commission_decides_unjustified(Measure).

must_take_restrictive_measures(MS, Measure) :-
    justified_national_measure(Measure),
    member_state(MS),
    without_delay(1).

must_withdraw_measure(A, Measure) :-
    unjustified_national_measure(Measure),
    national_measure_taken(A, Measure).

inform_commission(MS, decision(Measure, withdrawn)) :-
    must_withdraw_measure(_A, Measure),
    member_state(MS).

inform_commission(MS, decision(Measure, restrictive_measures_taken)) :-
    must_take_restrictive_measures(MS, Measure).

shortcomings_in_harmonised_standards_or_common_specifications(Measure) :-
    justified_national_measure(Measure),
    non_compliance_attributed_to_shortcomings(Measure).

apply_procedure_regulation_1025_2012(Measure) :-
    shortcomings_in_harmonised_standards_or_common_specifications(Measure).

within_period(N, months(M), Measure) :-
    notification_received(N),
    national_measure_taken(_A, Measure),
    period_months(M).

within_period(N, days(D), Measure) :-
    notification_received(N),
    national_measure_taken(_A, Measure),
    non_compliance_with_prohibition_present(Measure),
    period_days(D).

provenance(trigger_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_81').
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(justified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(unjustified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(objections_raised/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_union_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_prohibition_present/1, 'celex:32024R1689/oj#art_81').
provenance(deadline_months/2, 'celex:32024R1689/oj#art_81').
provenance(deadline_days/2, 'celex:32024R1689/oj#art_81').
provenance(notification_received/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_taken/2, 'celex:32024R1689/oj#art_81').
provenance(shortcomings_in_harmonised_standards_or_common_specifications/1, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
