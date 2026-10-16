% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : e7e3c828a5dacd2ea654b453833b2f61c0766bf7cde17a093475f78edb4dd373
% cached     : False
% title      : Compliance with the requirements
:- pred must_ensure_compliance/2, gloss('must ensure compliance'), source('reconciled').
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high-risk'), source('reconciled').
:- pred union_harmonisation_legislation_applies/1, gloss('Union harmonisation legislation listed in Annex I applies to product'), source('reconciled').
:- pred other_union_harmonisation_legislation/1, gloss('legislation listed in Annex I Section B as other Union harmonisation legislation'), source('reconciled').

must_ensure_compliance(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    generally_acknowledged_state_of_the_art(S),
    risk_management_system_taken_into_account(S).

risk_management_system_taken_into_account(S) :-
    high_risk_ai_system(S),
    risk_management_system_referred_to_in_article_9(S).

risk_management_system_referred_to_in_article_9(S) :-
    high_risk_ai_system(S).

generally_acknowledged_state_of_the_art(S) :-
    high_risk_ai_system(S).

must_ensure_compliance(P, product_fully_compliant(Product)) :-
    provider(P),
    product_contains_ai_system(Product),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_in_product(Product, S),
    must_ensure_compliance(S, requirements(chapter_3_section_2)).

product_contains_ai_system(Product) :-
    provider(_P),
    ai_system_in_product(Product, _S).

ai_system_in_product(Product, S) :-
    product_contains_ai_system(Product),
    ai_system(S).

high_risk_ai_system_in_product(Product, S) :-
    product_contains_ai_system(Product),
    ai_system_in_product(Product, S),
    high_risk_ai_system(S).

may_integrate_testing_and_reporting_processes(P, Product) :-
    provider(P),
    product_contains_ai_system(Product),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_in_product(Product, S),
    must_ensure_compliance(S, requirements(chapter_3_section_2)),
    existing_documentation_and_procedures_required(Product).

existing_documentation_and_procedures_required(Product) :-
    union_harmonisation_legislation_applies(Product),
    other_union_harmonisation_legislation(Product).

provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_taken_into_account/1, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_referred_to_in_article_9/1, 'celex:32024R1689/oj#art_8').
provenance(generally_acknowledged_state_of_the_art/1, 'celex:32024R1689/oj#art_8').
provenance(product_contains_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(ai_system_in_product/2, 'celex:32024R1689/oj#art_8').
provenance(high_risk_ai_system_in_product/2, 'celex:32024R1689/oj#art_8').
provenance(may_integrate_testing_and_reporting_processes/2, 'celex:32024R1689/oj#art_8').
provenance(existing_documentation_and_procedures_required/1, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
