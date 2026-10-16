% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6b07c56c38ba0e649dcb835e2531f1a2fce5915caee11bf92830cbaffe643dc3
% cached     : False
% title      : Compliance with the requirements
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_8').
:- pred product_containing_ai_system/1, gloss('product that contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred union_harmonisation_legislation_applies/1, gloss('Union harmonisation legislation listed in Annex I Section 1 applies to the product'), source('celex:32024R1689/oj#art_8').

must_comply_with_requirements(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S).

must_take_into_account_intended_purpose(S) :-
    high_risk_ai_system(S).

must_take_into_account_state_of_the_art(S) :-
    high_risk_ai_system(S).

must_take_into_account_risk_management_system(S) :-
    high_risk_ai_system(S).

must_ensure_product_compliance(P, Product) :-
    provider(P),
    product_containing_ai_system(Product),
    union_harmonisation_legislation_applies(Product).

permitted_integration_of_documentation(P, Product) :-
    provider(P),
    product_containing_ai_system(Product),
    high_risk_ai_system(Product),
    union_harmonisation_legislation_applies(Product).

provenance(must_comply_with_requirements/2, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account_intended_purpose/1, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account_state_of_the_art/1, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account_risk_management_system/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_product_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_documentation/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
