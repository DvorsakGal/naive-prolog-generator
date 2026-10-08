% unit       : celex:32024R1689/oj#art_81
% title      : Union safeguard procedure
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : gpt-oss:120b-cloud
% prompt sha : 3b5c64aa5f06246d3d3c6f053d738d1027d9d584c02724581c5486db71ea047f
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_enter_consultation/2, gloss('Commission must enter into consultation with authority and operator'), source('celex:32024R1689/oj#art_81').
:- pred must_evaluate_national_measure/2, gloss('Commission must evaluate the national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_decide_justified/3, gloss('Commission must decide whether the national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred must_notify_decision/2, gloss('Commission must notify its decision to the concerned market surveillance authority'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_other_authorities/1, gloss('Commission must inform all other market surveillance authorities'), source('celex:32024R1689/oj#art_81').

:- pred must_take_restrictive_measures/2, gloss('Member State must take appropriate restrictive measures concerning the AI system'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_measure/2, gloss('Member State must withdraw the national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_commission/2, gloss('Member State must inform the Commission'), source('celex:32024R1689/oj#art_81').

:- pred must_apply_procedure/2, gloss('Commission must apply the procedure referred to in the referenced regulation'), source('celex:32024R1689/oj#art_81').

:- pred commission_considers_justified/2, gloss('Commission considers the national measure justified'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_unjustified/2, gloss('Commission considers the national measure unjustified'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_contrary/2, gloss('Commission considers the measure contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred objection_raised/2, gloss('Objection raised by one market surveillance authority to a measure taken by another'), source('celex:32024R1689/oj#art_81').

:- pred national_measure/1, gloss('National measure taken by a Member State'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_justified/1, gloss('National measure is considered justified'), source('celex:32024R1689/oj#art_81').
:- pred shortcomings_in_harmonised_standards/1, gloss('Non‑compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_81').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_81').

must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    commission(Commission),
    commission(Commission),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority),
    operator(Operator),
    operator(Operator),
    ( objection_raised(Authority, _OtherAuthority)
    ; commission_considers_contrary(Commission, _Measure)
    ).

must_evaluate_national_measure(Commission, NationalMeasure) :-
    commission(Commission),
    commission(Commission),
    national_measure(NationalMeasure),
    national_measure(NationalMeasure),
    ( objection_raised(_Authority, _OtherAuthority)
    ; commission_considers_contrary(Commission, NationalMeasure)
    ).

must_decide_justified(Commission, NationalMeasure, Justified) :-
    commission(Commission),
    commission(Commission),
    national_measure(NationalMeasure),
    national_measure(NationalMeasure),
    ( Justified = justified ; Justified = unjustified ).

must_notify_decision(Commission, Authority) :-
    commission(Commission),
    commission(Commission),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority),
    national_measure(_NationalMeasure),
    national_measure(_NationalMeasure).

must_inform_other_authorities(Commission) :-
    commission(Commission),
    commission(Commission).

must_take_restrictive_measures(MemberState, AISystem) :-
    member_state(MemberState),
    member_state(MemberState),
    ai_system(AISystem),
    ai_system(AISystem),
    commission_considers_justified(_Commission, _Measure).

must_withdraw_measure(MemberState, Measure) :-
    member_state(MemberState),
    member_state(MemberState),
    national_measure(Measure),
    national_measure(Measure),
    commission_considers_unjustified(_Commission, Measure).

must_inform_commission(MemberState, Commission) :-
    member_state(MemberState),
    member_state(MemberState),
    commission(Commission),
    commission(Commission),
    commission_considers_justified(Commission, _Measure).

must_inform_commission(MemberState, Commission) :-
    member_state(MemberState),
    member_state(MemberState),
    commission(Commission),
    commission(Commission),
    commission_considers_unjustified(Commission, _Measure).

must_apply_procedure(Commission, procedure('celex:32012R1025/oj#art_11')) :-
    commission(Commission),
    commission(Commission),
    national_measure(NationalMeasure),
    national_measure(NationalMeasure),
    national_measure_justified(NationalMeasure),
    national_measure_justified(NationalMeasure),
    shortcomings_in_harmonised_standards(NationalMeasure),
    shortcomings_in_harmonised_standards(NationalMeasure).

provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justified/3, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_other_authorities/1, 'celex:32024R1689/oj#art_81').

provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').

provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').

provenance(commission_considers_justified/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_unjustified/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary/2, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').

provenance(national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(shortcomings_in_harmonised_standards/1, 'celex:32024R1689/oj#art_81').

provenance(member_state/1, 'celex:32024R1689/oj#art_81').
provenance(commission/1, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
