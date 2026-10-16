% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : ddf640828f43951751e894187084b2b8d8ad883eb18880f5fdb5ec7f4c94ae9e
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_82').
:- pred evaluated_under_article_79/2, gloss('authority evaluated the AI system under Article 79'), source('celex:32024R1689/oj#art_82').
:- pred consulted_relevant_national_authority/2, gloss('authority consulted the relevant national authority referred to in Art 77(1)'), source('celex:32024R1689/oj#art_82').
:- pred complies_with_regulation/1, gloss('AI system complies with Regulation 2024/1689'), source('celex:32024R1689/oj#art_82').
:- pred presents_risk/1, gloss('AI system presents a risk to health, safety, fundamental rights, or public interest'), source('celex:32024R1689/oj#art_82').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_82').
:- pred finding_compliant_system_presents_risk/2, gloss('authority has made a finding that a compliant high-risk AI system presents a risk'), source('celex:32024R1689/oj#art_82').
:- pred must_require/2, gloss('authority must require operator to take measures'), source('celex:32024R1689/oj#art_82').
:- pred must_take_corrective_action/2, gloss('operator must take corrective action regarding the AI system'), source('celex:32024R1689/oj#art_82').
:- pred must_inform/2, gloss('actor must inform recipient of specified information'), source('celex:32024R1689/oj#art_82').
:- pred must_consult/2, gloss('actor must enter into consultation with entities'), source('celex:32024R1689/oj#art_82').
:- pred must_evaluate/2, gloss('actor must evaluate national measures'), source('celex:32024R1689/oj#art_82').
:- pred must_communicate/2, gloss('actor must communicate decision to specified entities'), source('celex:32024R1689/oj#art_82').
:- pred authority_of_member_state/2, gloss('authority belongs to a Member State'), source('celex:32024R1689/oj#art_82').
:- pred operator_for_system/2, gloss('operator is responsible for the AI system'), source('celex:32024R1689/oj#art_82').

% Paragraph 1: Finding by market surveillance authority and requirement on operator
finding_compliant_system_presents_risk(MSA, System) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(System),
    evaluated_under_article_79(MSA, System),
    consulted_relevant_national_authority(MSA, System),
    complies_with_regulation(System),
    presents_risk(System).

must_require(MSA, take_measures_to_remove_risk(Operator, System)) :-
    finding_compliant_system_presents_risk(MSA, System),
    operator_for_system(Operator, System).

% Paragraph 2: Operator corrective action within timeline
must_take_corrective_action(Operator, all_systems(System)) :-
    operator_for_system(Operator, System),
    finding_compliant_system_presents_risk(_MSA, System).

% Paragraph 3: Member State informs Commission and other Member States
must_inform(MS, finding_compliant_system_presents_risk(System)) :-
    member_state(MS),
    authority_of_member_state(MSA, MS),
    finding_compliant_system_presents_risk(MSA, System).

% Paragraph 4: Commission consultation, evaluation and decision
must_consult(Comm, consultation_on_measures(MS, Operator, System)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    operator_for_system(Operator, System).

must_evaluate(Comm, national_measure(MS, System)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    national_measure(MS, System).

must_decide(Comm, justification_of_measure(national_measure(MS, System))) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    national_measure(MS, System).

% Paragraph 5: Commission communication
must_communicate(Comm, decision_on_measure(national_measure(MS, System), Operator)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    operator_for_system(Operator, System).

must_inform(Comm, decision_on_measure(national_measure(MS, System), other_member_states)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS).

% Provenance
provenance(finding_compliant_system_presents_risk/2, 'celex:32024R1689/oj#art_82').
provenance(must_require/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').

% References
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
