% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b498e916a87f6d0bee769a6f56b06169df30f48b5c8cb5b31edf313b3e72d087
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred must_take_appropriate_measures/2, gloss('operator must take measures to eliminate risk'), source('celex:32024R1689/oj#art_82').
:- pred must_ensure_corrective_action/2, gloss('provider or operator must ensure corrective action'), source('celex:32024R1689/oj#art_82').
:- pred must_inform_commission_and_member_states/2, gloss('Member State must inform Commission and other Member States'), source('celex:32024R1689/oj#art_82').
:- pred must_enter_consultation/1, gloss('Commission must enter consultation'), source('celex:32024R1689/oj#art_82').
:- pred must_evaluate_national_measures/1, gloss('Commission must evaluate national measures'), source('celex:32024R1689/oj#art_82').
:- pred must_decide_justification/1, gloss('Commission must decide whether measure is justified'), source('celex:32024R1689/oj#art_82').
:- pred must_communicate_decision/2, gloss('Commission must communicate decision'), source('celex:32024R1689/oj#art_82').

must_take_appropriate_measures(Authority, Operator) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    finds_risk_after_evaluation(Authority, Operator).

must_ensure_corrective_action(Operator, System) :-
    operator(Operator),
    ai_system(System),
    corrective_action_required(Operator, System).

must_inform_commission_and_member_states(MemberState, finding(System)) :-
    member_state(MemberState),
    ai_system(System),
    finding_under_paragraph_1(MemberState, System).

must_enter_consultation(Commission) :-
    ai_office(Commission).

must_evaluate_national_measures(Commission) :-
    ai_office(Commission).

must_decide_justification(Commission) :-
    ai_office(Commission).

must_communicate_decision(Commission, decision(Decision)) :-
    ai_office(Commission),
    decision_reached(Decision).

finds_risk_after_evaluation(Authority, Operator) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    high_risk_ai_system(System),
    complies_with_regulation(System),
    presents_risk(System),
    consulted_authority(Authority, _NationalAuthority).

corrective_action_required(Operator, System) :-
    operator(Operator),
    ai_system(System),
    made_available_on_union_market(Operator, System),
    timeline_prescribed(Authority, System),
    market_surveillance_authority(Authority).

finding_under_paragraph_1(MemberState, System) :-
    member_state(MemberState),
    ai_system(System),
    finds_risk_after_evaluation(_Authority, _Operator).

provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(must_enter_consultation/1, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measures/1, 'celex:32024R1689/oj#art_82').
provenance(must_decide_justification/1, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
