% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e8caf532a4acecbcdf767d87d78511055faf018ab788b8757970f8f62e98a798
% cached     : False
% title      : Union safeguard procedure
:- pred objection_raised/2, gloss('market surveillance authority raises objection to measure'), source('celex:32024R1689/oj#art_81').
:- pred measure_justified/1, gloss('national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred measure_unjustified/1, gloss('national measure is unjustified'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_attributed_to_shortcomings/2, gloss('non-compliance attributed to shortcomings in standards or specifications'), source('celex:32024R1689/oj#art_81').

must_enter_consultation(Commission, objection(Authority, Measure)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    objection_raised(OtherAuthority, Measure),
    taken_by(Measure, Authority),
    within_period(objection(Measure), months(3), notification(art_79_par_5)).

must_enter_consultation(Commission, objection(Authority, Measure)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    objection_raised(OtherAuthority, Measure),
    taken_by(Measure, Authority),
    non_compliance_with_prohibition(Measure, art_5),
    within_period(objection(Measure), days(30), notification(art_79_par_5)).

must_enter_consultation(Commission, commission_objection(Measure)) :-
    market_surveillance_authority(Authority),
    taken_by(Measure, Authority),
    contrary_to_union_law(Measure).

must_evaluate(Commission, Measure) :-
    must_enter_consultation(Commission, _).

must_decide_justification(Commission, Measure) :-
    must_evaluate(Commission, Measure),
    within_period(decision(Measure), months(6), notification(art_79_par_5)).

must_decide_justification(Commission, Measure) :-
    must_evaluate(Commission, Measure),
    non_compliance_with_prohibition(Measure, art_5),
    within_period(decision(Measure), days(60), notification(art_79_par_5)).

must_notify_decision(Commission, decision(Measure, justified)) :-
    must_decide_justification(Commission, Measure),
    measure_justified(Measure).

must_notify_decision(Commission, decision(Measure, unjustified)) :-
    must_decide_justification(Commission, Measure),
    measure_unjustified(Measure).

must_inform_authorities(Commission, decision(Measure, _)) :-
    must_notify_decision(Commission, decision(Measure, _)).

must_ensure_restrictive_measures(MemberState, System) :-
    measure_justified(Measure),
    concerns(Measure, System),
    member_state(MemberState).

must_inform_commission(MemberState, restrictive_measures(System)) :-
    must_ensure_restrictive_measures(MemberState, System).

must_withdraw_measure(MemberState, Measure) :-
    measure_unjustified(Measure),
    taken_by(Measure, MemberState).

must_inform_commission(MemberState, withdrawal(Measure)) :-
    must_withdraw_measure(MemberState, Measure).

must_apply_procedure(Commission, art_11_procedure) :-
    measure_justified(Measure),
    concerns(Measure, System),
    non_compliance_attributed_to_shortcomings(System, harmonised_standards),
    non_compliance_attributed_to_shortcomings(System, common_specifications).

provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
