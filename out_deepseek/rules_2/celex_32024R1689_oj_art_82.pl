% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 2b571f0982ea3f9aac68b95f33d6ddf2136dd31cdd9ea4eab40a5d1c864e1e50
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred must_require_corrective_measures/3, gloss('market surveillance authority must require operator to take measures'), source('celex:32024R1689/oj#art_82').
:- pred must_ensure_corrective_action/3, gloss('provider or operator must ensure corrective action on all systems'), source('celex:32024R1689/oj#art_82').
:- pred must_inform_commission_and_member_states_of_finding/1, gloss('Member State must inform Commission and other Member States of finding'), source('celex:32024R1689/oj#art_82').
:- pred must_consult_and_evaluate/2, gloss('Commission must consult and evaluate national measures'), source('celex:32024R1689/oj#art_82').
:- pred must_communicate_decision/2, gloss('Commission must communicate decision to Member States and operators'), source('celex:32024R1689/oj#art_82').

% Paragraph 1
must_require_corrective_measures(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    high_risk_ai_system(System),
    evaluation_finds_high_risk(Authority, System),
    risk_presenting_system(System),
    \+ risk_eliminated(System, Operator).

risk_eliminated(System, Operator) :-
    must_ensure_corrective_action(Operator, System, _Timeline).

% Paragraph 2
must_ensure_corrective_action(Operator, System, Timeline) :-
    operator(Operator),
    high_risk_ai_system(System),
    made_available_on_union_market(Operator, System),
    risk_presenting_system(System),
    prescribed_timeline(Timeline).

% Paragraph 3
must_inform_commission_and_member_states_of_finding(Finding) :-
    finding_under_paragraph_1(Finding).

finding_under_paragraph_1(Finding) :-
    must_require_corrective_measures(_, _, _).

% Paragraph 4
must_consult_and_evaluate(Commission, Measures) :-
    ai_office(Commission),
    national_measures(Measures).

% Paragraph 5
must_communicate_decision(Commission, Decision) :-
    ai_office(Commission),
    decision_on_measures(Decision).

% Provenance
provenance(must_require_corrective_measures/3, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/3, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states_of_finding/1, 'celex:32024R1689/oj#art_82').
provenance(must_consult_and_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/2, 'celex:32024R1689/oj#art_82').

% References
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
