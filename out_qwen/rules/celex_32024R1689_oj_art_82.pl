% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6adbe5076b4dcba1d21e213543271a3a0cb382fc8250651d70d6bb6d91d694fe
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred compliant_but_risky_ai_system/1, gloss('high-risk AI system that complies with the regulation but presents a risk'), source('celex:32024R1689/oj#art_82').
:- pred must_require_risk_mitigation_measures/2, gloss('market surveillance authority requires operator to take measures for compliant but risky system'), source('celex:32024R1689/oj#art_82').
:- pred must_take_corrective_action/2, gloss('operator ensures corrective action for compliant but risky system'), source('celex:32024R1689/oj#art_82').
:- pred must_inform_commission_and_member_states/2, gloss('member state informs commission and other member states of finding'), source('celex:32024R1689/oj#art_82').
:- pred must_evaluate_national_measures/2, gloss('commission evaluates national measures taken for compliant but risky system'), source('celex:32024R1689/oj#art_82').
:- pred must_communicate_decision/2, gloss('commission communicates decision on national measures'), source('celex:32024R1689/oj#art_82').

compliant_but_risky_ai_system(S) :-
    ai_system(S),
    high_risk_ai_system(S),
    presents_risk_to_health_or_safety_or_fundamental_rights_or_public_interest(S).

must_require_risk_mitigation_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    compliant_but_risky_ai_system(S),
    evaluation_performed_under_art_79(Authority, S),
    consultation_with_national_public_authority(Authority, S).

must_take_corrective_action(Operator, S) :-
    operator(Operator),
    compliant_but_risky_ai_system(S),
    made_available_on_union_market(Operator, S),
    timeline_prescribed_by_authority(S).

must_inform_commission_and_member_states(MemberState, Finding) :-
    finding_of_compliant_but_risky_system(Finding),
    member_state_concerned(MemberState, Finding).

must_evaluate_national_measures(Commission, Measures) :-
    ai_office(Commission),
    national_measures_taken(Measures),
    consultation_with_member_states_and_operators(Commission, Measures).

must_communicate_decision(Commission, Decision) :-
    ai_office(Commission),
    decision_on_national_measures(Decision).

provenance(compliant_but_risky_ai_system/1, 'celex:32024R1689/oj#art_82').
provenance(must_require_risk_mitigation_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
