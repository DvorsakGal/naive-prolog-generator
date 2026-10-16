% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 8e049f649285b57701ba4e2b1e9229c0edf3dcd1a42e36b82176e23e5993f128
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred must_require_risk_mitigation_measures/2, gloss('market surveillance authority requires operator to take measures for compliant but risky system'), source('celex:32024R1689/oj#art_82').
:- pred must_take_corrective_action_for_compliant_but_risky_system/2, gloss('operator ensures corrective action for compliant but risky system within prescribed timeline'), source('celex:32024R1689/oj#art_82').
:- pred must_inform_of_compliant_but_risky_finding/2, gloss('member state informs commission and other member states of finding under article 82(1)'), source('celex:32024R1689/oj#art_82').
:- pred must_evaluate_national_measure_for_compliant_but_risky_system/2, gloss('commission evaluates national measures taken for compliant but risky system'), source('celex:32024R1689/oj#art_82').
:- pred must_communicate_decision_on_compliant_but_risky_system/2, gloss('commission communicates decision on national measure to member states and operators'), source('celex:32024R1689/oj#art_82').

compliant_but_risky_ai_system(S) :-
    high_risk_ai_system(S),
    presents_risk(S).

must_require_risk_mitigation_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    compliant_but_risky_ai_system(S),
    evaluation_performed_under_art_79(Authority, S),
    consulted_relevant_public_authority(Authority, S).

must_take_corrective_action_for_compliant_but_risky_system(Operator, S) :-
    operator(Operator),
    compliant_but_risky_ai_system(S),
    made_available_on_union_market(Operator, S),
    timeline_prescribed_by_authority(S).

must_inform_of_compliant_but_risky_finding(MemberState, Finding) :-
    finding_under_art_82_par_1(Finding),
    member_state(MemberState).

must_evaluate_national_measure_for_compliant_but_risky_system(Commission, Measure) :-
    ai_office(Commission),
    national_measure_for_compliant_but_risky_system(Measure).

must_communicate_decision_on_compliant_but_risky_system(Commission, Decision) :-
    ai_office(Commission),
    decision_on_national_measure(Decision).

provenance(must_require_risk_mitigation_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action_for_compliant_but_risky_system/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_of_compliant_but_risky_finding/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measure_for_compliant_but_risky_system/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision_on_compliant_but_risky_system/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
