% unit       : celex:32024R1689/oj#art_82
% title      : Compliant AI systems which present a risk
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : gpt-oss:120b-cloud
% prompt sha : e070aa0a81ade43250506bb21783e0c157570d0e44ce314c1f1d5d8eaabba28d
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('celex:32024R1689/oj#art_82').
:- pred complies_with_regulation/1, gloss('AI system complies with the requirements of this Regulation'), source('celex:32024R1689/oj#art_82').
:- pred presents_risk/1, gloss('AI system presents a risk to health, safety, fundamental rights or public interest'), source('celex:32024R1689/oj#art_82').
:- pred period_prescribed_by/2, gloss('Period prescribed by a market surveillance authority'), source('celex:32024R1689/oj#art_82').
:- pred required_operator_take_measures/4, gloss('Market surveillance authority requires operator to take appropriate measures to eliminate risk'), source('celex:32024R1689/oj#art_82').
:- pred relevant_operator/2, gloss('Operator relevant to a given AI system'), source('celex:32024R1689/oj#art_82').
:- pred made_available_on_union_market/2, gloss('Actor has made the AI system available on the Union market'), source('celex:32024R1689/oj#art_82').
:- pred required_provider_or_operator_corrective_action/3, gloss('Provider or operator must ensure corrective action for AI systems made available'), source('celex:32024R1689/oj#art_82').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_82').
:- pred member_state_concerned/1, gloss('Member State concerned with a finding'), source('celex:32024R1689/oj#art_82').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_82').
:- pred finding/1, gloss('Finding of a market surveillance authority under article 82 paragraph 1'), source('celex:32024R1689/oj#art_82').
:- pred finding_under_art_82_par_1/1, gloss('Finding referred to in article 82 paragraph 1'), source('celex:32024R1689/oj#art_82').
:- pred required_member_state_inform_finding/3, gloss('Member State must inform Commission and other Member States of a finding'), source('celex:32024R1689/oj#art_82').
:- pred national_measures/1, gloss('National measures taken by a Member State'), source('celex:32024R1689/oj#art_82').
:- pred required_commission_consult_and_evaluate/4, gloss('Commission must consult with Member States and operators and evaluate national measures'), source('celex:32024R1689/oj#art_82').
:- pred decision/1, gloss('Commission decision on justification of a measure'), source('celex:32024R1689/oj#art_82').
:- pred other_measures/1, gloss('Other appropriate measures proposed by the Commission'), source('celex:32024R1689/oj#art_82').
:- pred required_commission_decide_and_propose/3, gloss('Commission decides on justification and proposes other measures'), source('celex:32024R1689/oj#art_82').
:- pred required_commission_communicate_decision/3, gloss('Commission communicates its decision to Member States and operators'), source('celex:32024R1689/oj#art_82').
:- pred required_commission_inform_other_member_states/2, gloss('Commission informs other Member States'), source('celex:32024R1689/oj#art_82').

relevant_operator(O, S) :-
    operator(O).

required_operator_take_measures(A, O, S, P) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    complies_with_regulation(S),
    presents_risk(S),
    relevant_operator(O, S),
    period_prescribed_by(A, P).

required_provider_or_operator_corrective_action(Actor, S, P) :-
    ( provider(Actor) ; operator(Actor) ),
    made_available_on_union_market(Actor, S),
    period_prescribed_by(A, P),
    market_surveillance_authority(A).

required_member_state_inform_finding(MS, C, F) :-
    member_state_concerned(MS),
    commission(C),
    finding(F),
    finding_under_art_82_par_1(F),
    member_state_concerned(MS),
    commission(C).

required_commission_consult_and_evaluate(C, MS, O, Measures) :-
    commission(C),
    member_state(MS),
    operator(O),
    national_measures(Measures),
    commission(C),
    member_state(MS).

required_commission_decide_and_propose(C, D, OM) :-
    commission(C),
    decision(D),
    other_measures(OM),
    commission(C).

required_commission_communicate_decision(C, MS, O) :-
    commission(C),
    member_state(MS),
    operator(O),
    commission(C),
    member_state(MS).

required_commission_inform_other_member_states(C, MS) :-
    commission(C),
    member_state(MS),
    commission(C),
    member_state(MS).

provenance(required_operator_take_measures/4, 'celex:32024R1689/oj#art_82').
provenance(relevant_operator/2, 'celex:32024R1689/oj#art_82').
provenance(required_provider_or_operator_corrective_action/3, 'celex:32024R1689/oj#art_82').
provenance(required_member_state_inform_finding/3, 'celex:32024R1689/oj#art_82').
provenance(required_commission_consult_and_evaluate/4, 'celex:32024R1689/oj#art_82').
provenance(required_commission_decide_and_propose/3, 'celex:32024R1689/oj#art_82').
provenance(required_commission_communicate_decision/3, 'celex:32024R1689/oj#art_82').
provenance(required_commission_inform_other_member_states/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
