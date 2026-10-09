% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 0a44e9dfebd3c08b6ea0bbc368e08c86ca5707aae98b3f8dc5d65f95a21322e0
% cached     : False
% title      : Union safeguard procedure
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_81').
:- pred objection_raised/3, gloss('objection raised by a market surveillance authority to a national measure'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_contrary/1, gloss('Commission considers a national measure contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_justified/1, gloss('Commission considers a national measure justified'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_unjustified/1, gloss('Commission considers a national measure unjustified'), source('celex:32024R1689/oj#art_81').
:- pred measure_concerns/2, gloss('AI system is concerned by a national measure'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_attributed_to_shortcomings/1, gloss('Non‑compliance of the AI system is attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

:- pred must_consult/2, gloss('Commission must consult with the market surveillance authority of the relevant Member State and the operator(s)'), source('celex:32024R1689/oj#art_81').
must_consult(Commission, consultation(MSA, Operator)) :-
    commission(Commission),
    market_surveillance_authority(MSA),
    member_state(_MemberState),
    operator(Operator),
    ( objection_raised(MSA, _Measure, _OtherMSA)
    ; commission_considers_contrary(_Measure)
    ).

:- pred must_evaluate/2, gloss('Commission must evaluate the national measure'), source('celex:32024R1689/oj#art_81').
must_evaluate(Commission, Measure) :-
    commission(Commission),
    ( objection_raised(_MSA, Measure, _OtherMSA)
    ; commission_considers_contrary(Measure)
    ).

:- pred must_decide/2, gloss('Commission must decide whether the national measure is justified'), source('celex:32024R1689/oj#art_81').
must_decide(Commission, decision(Measure, Status)) :-
    commission(Commission),
    ( objection_raised(_MSA, Measure, _OtherMSA)
    ; commission_considers_contrary(Measure)
    ),
    member(Status, [justified, unjustified]).

:- pred must_notify/2, gloss('Commission must notify its decision to the market surveillance authority of the concerned Member State'), source('celex:32024R1689/oj#art_81').
must_notify(Commission, notification(decision(Measure, Status), MSA)) :-
    commission(Commission),
    market_surveillance_authority(MSA),
    member(Status, [justified, unjustified]),
    ( objection_raised(_MSA2, Measure, _)
    ; commission_considers_contrary(Measure)
    ).

:- pred must_inform/2, gloss('Commission must inform all other market surveillance authorities of its decision'), source('celex:32024R1689/oj#art_81').
must_inform(Commission, inform(OtherMSA, decision(Measure, Status))) :-
    commission(Commission),
    market_surveillance_authority(OtherMSA),
    member(Status, [justified, unjustified]),
    ( objection_raised(_MSA2, Measure, _)
    ; commission_considers_contrary(Measure)
    ).

:- pred must_ensure/2, gloss('Member State shall ensure appropriate restrictive measures are taken concerning the AI system'), source('celex:32024R1689/oj#art_81').
must_ensure(MemberState, restrictive_measures(AISystem)) :-
    member_state(MemberState),
    commission_considers_justified(_Measure),
    ai_system(AISystem),
    measure_concerns(AISystem, _Measure).

:- pred must_inform/2, gloss('Member State shall inform the Commission of the restrictive measures taken'), source('celex:32024R1689/oj#art_81').
must_inform(MemberState, inform(Commission, restrictive_measures_taken(AISystem))) :-
    member_state(MemberState),
    commission(Commission),
    commission_considers_justified(_Measure),
    ai_system(AISystem),
    measure_concerns(AISystem, _Measure).

:- pred must_withdraw/2, gloss('Member State shall withdraw the national measure'), source('celex:32024R1689/oj#art_81').
must_withdraw(MemberState, Measure) :-
    member_state(MemberState),
    commission_considers_unjustified(Measure).

:- pred must_inform/2, gloss('Member State shall inform the Commission that the national measure has been withdrawn'), source('celex:32024R1689/oj#art_81').
must_inform(MemberState, inform(Commission, measure_withdrawn(Measure))) :-
    member_state(MemberState),
    commission(Commission),
    commission_considers_unjustified(Measure).

:- pred must_apply_procedure/2, gloss('Commission shall apply the procedure provided for in Article 11 of Regulation (EU) 2021/1025'), source('celex:32024R1689/oj#art_81').
must_apply_procedure(Commission, procedure(art_11)) :-
    commission(Commission),
    commission_considers_justified(_Measure),
    non_compliance_attributed_to_shortcomings(_Measure),
    ( harmonised_standard(_)
    ; common_specification(_)
    ).

provenance(must_consult/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform/2, 'celex:32024R1689/oj#art_81').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
