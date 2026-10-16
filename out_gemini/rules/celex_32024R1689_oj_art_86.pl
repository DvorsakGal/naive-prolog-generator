% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 298b2ff8fceb297cb413afd4b531a3787bfb6fb97452f32cc5dc83b579a948d9
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_86').
:- pred annex_3_point_2_system/1, gloss('AI system listed in Annex III point 2 (critical infrastructure)'), source('celex:32024R1689/oj#art_86').
:- pred affected_person/1, gloss('natural person subject to an AI-assisted decision'), source('celex:32024R1689/oj#art_86').
:- pred decision_taken_on_output/3, gloss('deployer took decision on person based on AI system output'), source('celex:32024R1689/oj#art_86').
:- pred significant_adverse_impact/2, gloss('decision produces legal or significant effects impacting health, safety, or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred exempt_from_explanation/1, gloss('use of AI system exempt or restricted under Union or national law'), source('celex:32024R1689/oj#art_86').
:- pred right_otherwise_provided/2, gloss('right to explanation is otherwise provided for under Union law'), source('celex:32024R1689/oj#art_86').
:- pred permitted_explanation_request/3, gloss('person has the right to obtain explanation from deployer regarding AI decision'), source('celex:32024R1689/oj#art_86').
:- pred must_provide/2, gloss('deployer must provide explanation to affected person'), source('celex:32024R1689/oj#art_86').

% Paragraph 1, 2 and 3: Right to explanation
permitted_explanation_request(Person, Deployer, explanation(System, Decision)) :-
    affected_person(Person),
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    decision_taken_on_output(Deployer, Person, decision(Decision, System)),
    significant_adverse_impact(Person, Decision),
    \+ exempt_from_explanation(System),
    \+ right_otherwise_provided(Person, Decision).

% Obligation on the deployer to provide the explanation
must_provide(Deployer, explanation(Person, Decision, System)) :-
    permitted_explanation_request(Person, Deployer, explanation(System, Decision)).

% Provenance
provenance(permitted_explanation_request/3, 'celex:32024R1689/oj#art_86').
provenance(must_provide/2, 'celex:32024R1689/oj#art_86').

% References
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
