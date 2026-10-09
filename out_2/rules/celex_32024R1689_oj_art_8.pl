% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 73d86aabfb2406cd4d725af40647ef2f59904658acb29c2b1ec3da52bac6fe32
% cached     : False
% title      : Compliance with the requirements
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_8').
:- pred risk_management_system/1, gloss('risk management system referred to in art 9'), source('celex:32024R1689/oj#art_8').
:- pred product_contains_ai_system/1, gloss('product that contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred applicable_requirements/2, gloss('requirements applicable to a product'), source('celex:32024R1689/oj#art_8').
:- pred product_fully_compliant/1, gloss('product that meets all applicable requirements'), source('celex:32024R1689/oj#art_8').
:- pred must_comply/2, gloss('actor must comply with object'), source('celex:32024R1689/oj#art_8').
:- pred must_take_into_account/2, gloss('actor must take into account object'), source('celex:32024R1689/oj#art_8').
:- pred must_ensure/2, gloss('actor must ensure object'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integration_of_testing_and_reporting/1, gloss('provider may integrate testing and reporting into existing documentation'), source('celex:32024R1689/oj#art_8').

must_comply(System, requirements(chapter_3_sec_2)) :-
    high_risk_ai_system(System).

must_take_into_account(System, intended_purpose) :-
    high_risk_ai_system(System).

must_take_into_account(System, state_of_the_art) :-
    high_risk_ai_system(System).

must_take_into_account(System, risk_management_system) :-
    high_risk_ai_system(System).

must_ensure(Provider, product_fully_compliant(Product)) :-
    provider(Provider),
    product_contains_ai_system(Product).

permitted_integration_of_testing_and_reporting(Provider) :-
    provider(Provider).

provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_8').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/1, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
