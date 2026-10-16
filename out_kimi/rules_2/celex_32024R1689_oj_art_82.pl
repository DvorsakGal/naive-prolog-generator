% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 10cebd3b79b3dfa6246251e7b372c45016dc2332bd34c3f92c4dba4d61177d4e
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred risk_within_art_79_1/1, gloss('high-risk AI system presents a risk within meaning of Article 79(1)'), source('celex:32024R1689/oj#art_82').
:- pred national_public_authority_or_body/1, gloss('national public authority or body'), source('celex:32024R1689/oj#art_82').
:- pred consulted_relevant_authority/1, gloss('market surveillance authority consulted relevant national public authority'), source('celex:32024R1689/oj#art_82').
:- pred must_take_corrective_action/2, gloss('provider must take corrective action for non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_82').
:- pred corrective_action/2, gloss('corrective action taken by operator for AI systems made available'), source('celex:32024R1689/oj#art_82').
:- pred measures_taken/2, gloss('measures taken'), source('celex:32024R1689/oj#art_82').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority shall inform Commission and other Member States of non-compliance beyond national territory'), source('celex:32024R1689/oj#art_82').
:- pred commission_decides/2, gloss('Commission decides whether authorisation is justified'), source('celex:32024R1689/oj#art_82').
:- pred deemed_justified/1, gloss('authorisation deemed justified after no objection period'), source('celex:32024R1689/oj#art_82').

risk_within_art_79_1(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_or_rights(S),
    market_surveillance_authority(_Authority),
    consulted_relevant_authority(_Authority).

consulted_relevant_authority(Authority) :-
    market_surveillance_authority(Authority),
    national_public_authority_or_body(_PublicAuthority).

must_take_corrective_action(Operator, system(S, risk_within_art_79_1)) :-
    operator(Operator),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    market_surveillance_authority(Authority),
    consulted_relevant_authority(Authority),
    placing_on_market(S),
    putting_into_service(S).

corrective_action(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    made_available_on_market(Operator, S),
    must_take_corrective_action(Operator, system(S, risk_within_art_79_1)).

measures_taken(member_state(MemberState), measure(corrective_action, Operator, S)) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    risk_within_art_79_1(S),
    must_take_corrective_action(Operator, system(S, risk_within_art_79_1)).

must_inform_commission_and_member_states(member_state(MemberState), finding(system(S, risk_within_art_79_1), details(Data))) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    risk_within_art_79_1(S),
    measures_taken(member_state(MemberState), measure(corrective_action, _Operator, S)),
    identification_data(S, Data).

commission_decides(commission, measure_justified(member_state(MemberState), measure(corrective_action, Operator, S))) :-
    member_state(MemberState),
    operator(Operator),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    measures_taken(member_state(MemberState), measure(corrective_action, Operator, S)),
    consultation_with_member_states_and_operators,
    evaluation_results_justify_measure.

deemed_justified(measure(corrective_action, Operator, S)) :-
    commission_decides(commission, measure_justified(_MemberState, measure(corrective_action, Operator, S))).

provenance(risk_within_art_79_1/1, 'celex:32024R1689/oj#art_82').
provenance(consulted_relevant_authority/1, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(measures_taken/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(commission_decides/2, 'celex:32024R1689/oj#art_82').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
