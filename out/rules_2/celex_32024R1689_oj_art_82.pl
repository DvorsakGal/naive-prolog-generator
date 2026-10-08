% unit       : celex:32024R1689/oj#art_82
% title      : Compliant AI systems which present a risk
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : gpt-oss:120b-cloud
% prompt sha : eb5283545f3c4ba48a028457ff26a8266258fd1840c5b3bae9ec16f3844c4d44
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_82').
:- pred presents_risk/1, gloss('AI system presents a risk to health, safety, fundamental rights or public interest'), source('celex:32024R1689/oj#art_82').
:- pred deadline_prescribed_by/3, gloss('deadline prescribed by market surveillance authority for operator to remove risk'), source('celex:32024R1689/oj#art_82').
:- pred market_surveillance_authority_finds_risk/2, gloss('market surveillance authority finds risk in AI system'), source('celex:32024R1689/oj#art_82').
:- pred relevant_operator/2, gloss('operator relevant to the AI system'), source('celex:32024R1689/oj#art_82').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_82').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_82').

:- pred required_measure/2, gloss('operator must take appropriate measures to eliminate risk'), source('celex:32024R1689/oj#art_82').
:- pred required_corrective_action/2, gloss('provider or operator must ensure corrective action for AI systems made available'), source('celex:32024R1689/oj#art_82').
:- pred required_inform/2, gloss('Member State must inform Commission and other Member States of finding'), source('celex:32024R1689/oj#art_82').
:- pred required_consult/3, gloss('Commission must consult with Member States and relevant operators'), source('celex:32024R1689/oj#art_82').
:- pred required_evaluate/3, gloss('Commission must evaluate national measures taken'), source('celex:32024R1689/oj#art_82').
:- pred required_communicate_decision/3, gloss('Commission must communicate its decision to Member States and operators'), source('celex:32024R1689/oj#art_82').

market_surveillance_authority_finds_risk(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    presents_risk(S).

required_measure(Operator, S) :-
    market_surveillance_authority_finds_risk(MSA, S),
    relevant_operator(Operator, S),
    deadline_prescribed_by(MSA, Operator, S).

required_corrective_action(Actor, S) :-
    ( provider(Actor) ; operator(Actor) ),
    made_available_on_market(S),
    deadline_prescribed_by(MSA, Actor, S),
    market_surveillance_authority(MSA).

required_inform(MemberState, Commission) :-
    member_state(MemberState),
    commission(Commission),
    market_surveillance_authority_finds_risk(_, _).

required_consult(Commission, MemberState, Operator) :-
    commission(Commission),
    member_state(MemberState),
    relevant_operator(Operator, _),
    market_surveillance_authority_finds_risk(_, _).

required_evaluate(Commission, MemberState, Operator) :-
    commission(Commission),
    member_state(MemberState),
    relevant_operator(Operator, _),
    market_surveillance_authority_finds_risk(_, _).

required_communicate_decision(Commission, MemberState, Operator) :-
    commission(Commission),
    member_state(MemberState),
    relevant_operator(Operator, _),
    market_surveillance_authority_finds_risk(_, _).

provenance(required_measure/2, 'celex:32024R1689/oj#art_82').
provenance(required_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(required_inform/2, 'celex:32024R1689/oj#art_82').
provenance(required_consult/3, 'celex:32024R1689/oj#art_82').
provenance(required_evaluate/3, 'celex:32024R1689/oj#art_82').
provenance(required_communicate_decision/3, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
