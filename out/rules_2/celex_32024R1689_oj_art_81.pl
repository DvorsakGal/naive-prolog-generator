% unit       : celex:32024R1689/oj#art_81
% title      : Union safeguard procedure
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : gpt-oss:120b-cloud
% prompt sha : 3f2c85aff4a423bcc849322569d905ca85a293aa118ad2872b9d9d48be9f021b
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred notification/1, gloss('notification received'), source('celex:32024R1689/oj#art_81').
:- pred three_months_applies/1, gloss('within three months of notification'), source('celex:32024R1689/oj#art_81').
:- pred thirty_days_applies/1, gloss('within thirty days in case of non‑compliance with prohibition'), source('celex:32024R1689/oj#art_81').
:- pred six_months_applies/1, gloss('within six months from notification'), source('celex:32024R1689/oj#art_81').
:- pred sixty_days_applies/1, gloss('within sixty days in case of non‑compliance'), source('celex:32024R1689/oj#art_81').
:- pred national_measure/1, gloss('measure taken by a market surveillance authority'), source('celex:32024R1689/oj#art_81').
:- pred decision/1, gloss('decision whether national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_81').
:- pred justified_measure_applies/1, gloss('Commission considers the measure justified'), source('celex:32024R1689/oj#art_81').
:- pred unjustified_measure_applies/1, gloss('Commission considers the measure unjustified'), source('celex:32024R1689/oj#art_81').
:- pred shortcomings_in_standards_applies/1, gloss('non‑compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

must_enter_consultation(commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    notification(N),
    three_months_applies(N).

must_enter_consultation(commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    notification(N),
    thirty_days_applies(N).

must_evaluate_national_measure(commission, Measure) :-
    national_measure(Measure),
    notification(N),
    ( three_months_applies(N) ; thirty_days_applies(N) ).

must_decide_measure(commission, Measure, Decision) :-
    national_measure(Measure),
    notification(N),
    ( six_months_applies(N) ; sixty_days_applies(N) ),
    decision(Decision).

must_notify_decision(commission, Authority, Decision) :-
    market_surveillance_authority(Authority),
    decision(Decision).

must_inform_all_authorities(commission, Decision) :-
    decision(Decision).

must_ensure_restrictive_measures(MemberState, AISystem) :-
    member_state(MemberState),
    ai_system(AISystem),
    justified_measure_applies(Measure),
    justified_measure_applies(Measure).

must_inform_commission(MemberState, Decision) :-
    member_state(MemberState),
    decision(Decision).

must_withdraw_measure(MemberState, Measure) :-
    member_state(MemberState),
    unjustified_measure_applies(Measure).

must_inform_commission(MemberState, Decision) :-
    member_state(MemberState),
    decision(Decision).

must_apply_procedure(commission, procedure('celex:32012R1025/oj#art_11')) :-
    justified_measure_applies(Measure),
    shortcomings_in_standards_applies(Measure).

provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_measure/3, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/3, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
