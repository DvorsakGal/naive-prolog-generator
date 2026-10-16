% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 28b220f3c65668045a3fb23dcd16e9a67367bba5e511b31a0df6441a6d7afa5c
% cached     : False
% title      : Compliance with the requirements
:- pred must_comply_with_section_2_requirements/1, gloss('high-risk AI system must comply with requirements of Chapter III Section 2'), source('celex:32024R1689/oj#art_8').
:- pred must_ensure_product_compliance_with_union_legislation/2, gloss('provider must ensure product containing AI system complies with Union harmonisation legislation'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integration_of_documentation/1, gloss('provider may integrate AI testing and documentation into existing Union harmonisation procedures'), source('celex:32024R1689/oj#art_8').

must_comply_with_section_2_requirements(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    requirements_of_chapter_3_section_2(S).

must_ensure_product_compliance_with_union_legislation(P, S) :-
    provider(P),
    ai_system(S),
    covered_by_union_harmonisation_legislation(S).

permitted_integration_of_documentation(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    requirements_of_chapter_3_section_2(S).

provenance(must_comply_with_section_2_requirements/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_product_compliance_with_union_legislation/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_documentation/1, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
