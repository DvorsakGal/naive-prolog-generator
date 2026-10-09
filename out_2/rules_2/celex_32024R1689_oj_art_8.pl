% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 01a12843c9015945adccf24a049b5f02839a3659322dc2044c961c8461804588
% cached     : False
% title      : Compliance with the requirements
:- pred required_compliance/1, gloss('high‑risk AI system complies with laid‑down requirements'), source('celex:32024R1689/oj#art_8').
:- pred product_contains_ai_system/2, gloss('product contains the given AI system'), source('celex:32024R1689/oj#art_8').
:- pred state_of_the_art_applies/1, gloss('state of the art on AI is taken into account'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integration_of_testing_and_reporting/1, gloss('provider may integrate testing and reporting into existing documentation'), source('celex:32024R1689/oj#art_8').

required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    state_of_the_art_applies(S),
    required_risk_management_system(_R).

must_ensure_compliance(P, Prod) :-
    provider(P),
    product_contains_ai_system(Prod, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(_L).

permitted_integration_of_testing_and_reporting(P) :-
    provider(P),
    product_contains_ai_system(_, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(_L).

provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/1, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
