% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e85e63cb13175b07445249ae952af420f16b0c52563e2bf9887e2faeac69b0b1
% cached     : False
% title      : Compliance with the requirements
:- pred must_comply/2, gloss('entity must ensure compliance of AI system with requirements'), source('celex:32024R1689/oj#art_8').
:- pred must_integrate_testing_and_reporting/2, gloss('provider must integrate testing and reporting into existing documentation'), source('celex:32024R1689/oj#art_8').

must_comply(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_purpose(Purpose),
    applies_to(S, Purpose),
    state_of_the_art_applies(S).

must_comply(Provider, Product) :-
    provider(Provider),
    product(Product),
    contains_ai_system(Product, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(Product).

must_integrate_testing_and_reporting(Provider, Product) :-
    provider(Provider),
    product(Product),
    contains_ai_system(Product, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(Product),
    existing_documentation_required(Product).

provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(must_integrate_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
