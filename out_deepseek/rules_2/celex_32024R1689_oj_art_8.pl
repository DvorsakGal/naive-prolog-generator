% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 5aad7832dd9539915df7fce1f751d014c1b5022565a72a35cebafece15ed6359
% cached     : False
% title      : Compliance with the requirements
:- pred must_comply_with_requirements/2, gloss('high-risk AI system must comply with Section 2 requirements'), source('celex:32024R1689/oj#art_8').
:- pred must_integrate_testing_and_reporting/2, gloss('provider must integrate testing and reporting processes with existing documentation'), source('celex:32024R1689/oj#art_8').

must_comply_with_requirements(S, intended_purpose(P)) :-
    high_risk_ai_system(S),
    intended_purpose(P).

must_integrate_testing_and_reporting(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    must_comply_with_requirements(S, _).

provenance(must_comply_with_requirements/2, 'celex:32024R1689/oj#art_8').
provenance(must_integrate_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
