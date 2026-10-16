% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 44886b900ec751b0a89336ff8d6d0ba0a955555219c1be76db1828feb4b42100
% cached     : False
% title      : Compliance with the requirements
:- pred must_comply_with_requirements/1, gloss('high-risk AI system must comply with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_8').
:- pred must_ensure_full_compliance/2, gloss('provider must ensure product is fully compliant with all applicable requirements'), source('celex:32024R1689/oj#art_8').
:- pred may_integrate_existing_documentation/1, gloss('provider may integrate testing and reporting into existing documentation'), source('celex:32024R1689/oj#art_8').

must_comply_with_requirements(S) :-
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    intended_purpose(P),
    applies_to(S, P).

must_ensure_full_compliance(Provider, Product) :-
    provider(Provider),
    product_covered_by_harmonisation_legislation(Product),
    ai_system_in_product(AiSystem, Product),
    requirements_in_chapter_3_section_2(AiSystem),
    union_harmonisation_legislation(Legislation),
    applies_to(Product, Legislation).

may_integrate_existing_documentation(Provider) :-
    provider(Provider),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    union_harmonisation_legislation(Legislation),
    existing_documentation_and_procedures(Provider, Legislation).

provenance(must_comply_with_requirements/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_full_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(may_integrate_existing_documentation/1, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
