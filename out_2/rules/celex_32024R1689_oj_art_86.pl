% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 831f213c97d607deddc9b016f89579ffcaa6c315b9ac169cb62a54f96a3bc61b
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred affected_person/1, gloss('person subject to a decision taken by a deployer'), source('celex:32024R1689/oj#art_86').
:- pred decision_taken_by_deployer/3, gloss('decision taken by a deployer based on the output of an AI system'), source('celex:32024R1689/oj#art_86').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system listed in annex III'), source('celex:32024R1689/oj#art_86').
:- pred adverse_impact/1, gloss('adverse impact on health, safety or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred exception_from_law/2, gloss('exception or restriction from Union or national law'), source('celex:32024R1689/oj#art_86').
:- pred union_law_provides_explanation/1, gloss('right to explanation already provided under Union law'), source('celex:32024R1689/oj#art_86').

must_provide_explanation(Deployer, explanation(Person)) :-
    deployer(Deployer),
    affected_person(Person),
    decision_taken_by_deployer(Person, Deployer, System),
    high_risk_ai_system(System),
    adverse_impact(Person),
    \+ exception_from_law(Deployer, System),
    \+ union_law_provides_explanation(Person).

provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
