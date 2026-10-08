% unit       : celex:32024R1689/oj#art_86
% title      : Right to explanation of individual decision-making
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : gpt-oss:120b-cloud
% prompt sha : af158291798fd67224bbd0493273a08ff49050845c853450dd00742325d990bf
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_86').
:- pred affected_person/1, gloss('person affected by a decision'), source('celex:32024R1689/oj#art_86').
:- pred decision_by_deployer/2, gloss('decision taken by a deployer based on AI system output'), source('celex:32024R1689/oj#art_86').
:- pred exception_system/1, gloss('high‑risk AI system excluded from the right to explanation'), source('celex:32024R1689/oj#art_86').
:- pred union_law_provides_explanation/2, gloss('Union law already provides the right to explanation'), source('celex:32024R1689/oj#art_86').
:- pred significant_impact/2, gloss('decision produces legal effects or significantly affects health, safety or fundamental rights'), source('celex:32024R1689/oj#art_86').

permitted_explanation_of_decision(P, D) :-
    affected_person(P),
    decision_by_deployer(Deployer, D),
    deployer(Deployer),
    high_risk_ai_system(D),
    significant_impact(P, D),
    \+ exception_system(D),
    \+ union_law_provides_explanation(P, D).

provenance(permitted_explanation_of_decision/2, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
