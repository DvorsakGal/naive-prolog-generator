% unit      : celex:32024R1689/oj#art_8
% source    : celex:32024R1689%2Foj#art_8.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 32fa15e9f2872d0f4409c1f38630c5e65235c17a6f8ccffe9c57303c4c402553
% signature: 00ee7559e3c3d18f1bb6c455d54ec6ce4a9521a52c53862ea62ebe810e003bb1
% cached    : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_8').
:- pred state_of_the_art_considered/1, gloss('consideration of the generally acknowledged state of the art on AI and AI‑related technologies'), source('celex:32024R1689/oj#art_8').
:- pred risk_management_system/1, gloss('risk management system referred to in Article 9'), source('celex:32024R1689/oj#art_8').
:- pred considered_in_compliance/2, gloss('risk management system taken into account when ensuring compliance'), source('celex:32024R1689/oj#art_8').

:- pred product_contains_ai_system/2, gloss('product contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred provider_of_product/2, gloss('provider is responsible for the product'), source('celex:32024R1689/oj#art_8').
:- pred applicable_requirements/2, gloss('requirements applicable to the product under Union harmonisation legislation'), source('celex:32024R1689/oj#art_8').
:- pred all_requirements_met/2, gloss('product meets all applicable requirements'), source('celex:32024R1689/oj#art_8').
:- pred integration_possible/2, gloss('provider may integrate testing and reporting processes into existing documentation'), source('celex:32024R1689/oj#art_8').

required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose(S, _),
    state_of_the_art_considered(S),
    risk_management_system(R),
    considered_in_compliance(R, S).

required_ensuring_compliance(Provider, Product) :-
    provider(Provider),
    product_contains_ai_system(Product, _),
    provider_of_product(Provider, Product),
    applicable_requirements(Product, ReqSet),
    all_requirements_met(Product, ReqSet).

permitted_integration_of_testing_and_reporting(Provider, Product) :-
    provider(Provider),
    product_contains_ai_system(Product, _),
    provider_of_product(Provider, Product),
    integration_possible(Provider, Product).

provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(required_ensuring_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
