% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : eaec1d75f4f698d3f642ce15f771937ecf5ece94c5ce00912b3aa3cda95ce70b
% cached     : False
% title      : Compliance with the requirements
:- pred must_comply/2, gloss('entity must comply with requirements'), source('celex:32024R1689/oj#art_8').
:- pred must_ensure_full_compliance/2, gloss('provider must ensure product fully complies'), source('celex:32024R1689/oj#art_8').
:- pred may_integrate_documentation/2, gloss('provider may integrate documentation'), source('celex:32024R1689/oj#art_8').

must_comply(S, requirements(chp_3_sec_2)) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    state_of_art_acknowledged(S),
    risk_management_system_taken_into_account(S).

must_ensure_full_compliance(Provider, Product) :-
    provider(Provider),
    product_contains_ai_system(Product),
    applies_regulation(Product, 'celex:32024R1689/oj'),
    applies_harmonisation_legislation(Product, 'celex:32024R1689/oj#anx_1/sec_1').

may_integrate_documentation(Provider, Product) :-
    provider(Provider),
    must_comply(Product, requirements(chp_3_sec_2)),
    applies_harmonisation_legislation(Product, 'celex:32024R1689/oj#anx_1/sec_1').

% Supporting predicates
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_8').
:- pred state_of_art_acknowledged/1, gloss('generally acknowledged state of the art on AI'), source('celex:32024R1689/oj#art_8').
:- pred risk_management_system_taken_into_account/1, gloss('risk management system referred to in Article 9'), source('celex:32024R1689/oj#art_8').
:- pred product_contains_ai_system/1, gloss('product contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred applies_regulation/2, gloss('regulation applies to product'), source('celex:32024R1689/oj#art_8').
:- pred applies_harmonisation_legislation/2, gloss('harmonisation legislation applies to product'), source('celex:32024R1689/oj#art_8').

provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_full_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(may_integrate_documentation/2, 'celex:32024R1689/oj#art_8').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(state_of_art_acknowledged/1, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_taken_into_account/1, 'celex:32024R1689/oj#art_8').
provenance(product_contains_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(applies_regulation/2, 'celex:32024R1689/oj#art_8').
provenance(applies_harmonisation_legislation/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
