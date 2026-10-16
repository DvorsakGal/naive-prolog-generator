% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a0199ef42b2d7b3d2a7c0d7a15035be2c56998ad6207a7b19b91ed396d2ebc9f
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_82').
:- pred evaluated_under_article_79/2, gloss('authority has evaluated AI system under Article 79'), source('celex:32024R1689/oj#art_82').
:- pred consulted_relevant_public_authority/2, gloss('authority consulted public authority under Article 77(1)'), source('celex:32024R1689/oj#art_82').
:- pred complies_with_regulation/1, gloss('AI system complies with the regulation'), source('celex:32024R1689/oj#art_82').
:- pred presents_risk_despite_compliance/1, gloss('AI system presents risk to health, safety, fundamental rights, or public interest protection'), source('celex:32024R1689/oj#art_82').
:- pred must_require_mitigation/2, gloss('market surveillance authority must require operator to eliminate risk'), source('celex:32024R1689/oj#art_82').
:- pred must_ensure_corrective_action/2, gloss('operator must ensure corrective action is taken for all affected AI systems'), source('celex:32024R1689/oj#art_82').
:- pred required_mitigation/2, gloss('market surveillance authority requires mitigation measures from operator for system'), source('celex:32024R1689/oj#art_82').
:- pred must_inform/2, gloss('an entity must inform another entity of details'), source('celex:32024R1689/oj#art_82').
:- pred member_state_finding_compliant_risk/2, gloss('member state finds compliant AI system presenting risk'), source('celex:32024R1689/oj#art_82').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_82').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_82').
:- pred national_measure_taken/2, gloss('Member State has taken measures regarding system presenting risk'), source('celex:32024R1689/oj#art_82').
:- pred must_consult/2, gloss('actor must consult other parties'), source('celex:32024R1689/oj#art_82').
:- pred must_evaluate/2, gloss('actor must evaluate measures'), source('celex:32024R1689/oj#art_82').
:- pred must_decide_justification/2, gloss('actor must decide whether national measure is justified'), source('celex:32024R1689/oj#art_82').
:- pred must_communicate/2, gloss('actor must communicate decision to party'), source('celex:32024R1689/oj#art_82').

% Paragraph 1:
% Market surveillance authority must require relevant operator to ensure the system no longer presents the risk.
must_require_mitigation(Authority, system_risk_mitigation(System, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    high_risk_ai_system(System),
    evaluated_under_article_79(Authority, System),
    consulted_relevant_public_authority(Authority, System),
    complies_with_regulation(System),
    presents_risk_despite_compliance(System).

% Paragraph 2:
% Operator must ensure corrective action is taken in respect of all systems made available on the Union market.
must_ensure_corrective_action(Operator, corrective_action(System)) :-
    operator(Operator),
    high_risk_ai_system(System),
    required_mitigation(Authority, system_risk_mitigation(System, Operator)),
    market_surveillance_authority(Authority).

% Paragraph 3:
% Member State must inform Commission and other Member States of the finding and measures.
must_inform(MemberState, commission_and_other_member_states(finding_under_article_82(System))) :-
    member_state(MemberState),
    member_state_finding_compliant_risk(MemberState, System).

% Paragraph 4:
% Commission must consult, evaluate measures, and decide justification.
must_consult(Commission, consultation(MemberState, Operator, System)) :-
    commission(Commission),
    member_state(MemberState),
    operator(Operator),
    national_measure_taken(MemberState, System).

must_evaluate(Commission, national_measures(MemberState, System)) :-
    commission(Commission),
    member_state(MemberState),
    national_measure_taken(MemberState, System).

must_decide_justification(Commission, national_measure(MemberState, System)) :-
    commission(Commission),
    member_state(MemberState),
    national_measure_taken(MemberState, System).

% Paragraph 5:
% Commission must communicate decision to concerned MS and operators, and inform others.
must_communicate(Commission, decision(justification(Measure), concerned_parties(MemberState, Operator))) :-
    commission(Commission),
    member_state(MemberState),
    operator(Operator),
    national_measure_taken(MemberState, System),
    Measure = national_measure(MemberState, System).

must_inform(Commission, other_member_states(decision(justification(Measure)))) :-
    commission(Commission),
    member_state(MemberState),
    national_measure_taken(MemberState, System),
    Measure = national_measure(MemberState, System).

% Provenance facts
provenance(must_require_mitigation/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').

% References
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
