% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8a2a341b40c66f8fa069ec2d37a3b27d05d8322bc3d940cbb4d4a96675022a4c
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_82').
:- pred finds_risk/2, gloss('market surveillance authority finds risk in system'), source('celex:32024R1689/oj#art_82').
:- pred relevant_operator/2, gloss('operator relevant to AI system'), source('celex:32024R1689/oj#art_82').
:- pred timeline_prescribed_by/2, gloss('timeline prescribed by market surveillance authority'), source('celex:32024R1689/oj#art_82').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_82').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_82').
:- pred finding_details/1, gloss('details of the finding'), source('celex:32024R1689/oj#art_82').
:- pred member_states/1, gloss('Member States concerned'), source('celex:32024R1689/oj#art_82').
:- pred operators/1, gloss('relevant operators'), source('celex:32024R1689/oj#art_82').
:- pred national_measures/1, gloss('national measures taken'), source('celex:32024R1689/oj#art_82').
:- pred evaluation_result/1, gloss('result of evaluation of national measures'), source('celex:32024R1689/oj#art_82').
:- pred decision/1, gloss('Commission decision'), source('celex:32024R1689/oj#art_82').
:- pred recipients/1, gloss('recipients of the decision'), source('celex:32024R1689/oj#art_82').

must_require(MSA, take_all_appropriate_measures(Op, Sys)) :-
    market_surveillance_authority(MSA),
    finds_risk(MSA, Sys),
    operator(Op),
    relevant_operator(Op, Sys).

must_ensure(Actor, corrective_action_taken(Sys)) :-
    ( provider(Actor) ; relevant_operator(Actor, Sys) ),
    making_available_on_market(Sys),
    timeline_prescribed_by(Actor, MSA),
    market_surveillance_authority(MSA).

must_inform(MemberState, finding_information(Commission, Details)) :-
    member_state(MemberState),
    commission(Commission),
    finding_details(Details),
    member_state(MemberState),
    commission(Commission).

must_consult(Commission, member_states_and_operators(MemberStates, Operators)) :-
    commission(Commission),
    member_states(MemberStates),
    operators(Operators),
    commission(Commission).

must_evaluate(Commission, national_measures(Measures)) :-
    commission(Commission),
    national_measures(Measures),
    commission(Commission).

must_decide(Commission, measure_justified(Justified)) :-
    commission(Commission),
    evaluation_result(Justified),
    commission(Commission).

must_communicate(Commission, decision_communication(Decision, Recipients)) :-
    commission(Commission),
    decision(Decision),
    recipients(Recipients),
    commission(Commission).

provenance(must_require/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
