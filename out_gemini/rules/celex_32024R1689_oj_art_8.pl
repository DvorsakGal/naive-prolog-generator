% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fe40f9c22e7d85107b5768b27a91cba2287c419b79c3fc1f114d4331baf5bb5d
% cached     : False
% title      : Compliance with the requirements
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_8').
:- pred must_comply(2), gloss('actor or system must comply with specified requirements'), source('celex:32024R1689/oj#art_8').
:- pred contains_ai_system/2, gloss('product contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred subject_to_harmonisation_legislation/2, gloss('product or AI system is subject to specific Union harmonisation legislation'), source('celex:32024R1689/oj#art_8').
:- pred product/1, gloss('entity is a product'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integrate_documentation_and_procedures/2, gloss('provider is permitted to integrate documentation and procedures for AI system into existing product compliance procedures'), source('celex:32024R1689/oj#art_8').

% Paragraph 1: High-risk AI systems shall comply with the requirements laid down in Section 2,
% taking into account their intended purpose and the state of the art, as well as the risk management system.
must_comply(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S).

% Paragraph 2: Where a product contains an AI system, to which the requirements of this Regulation
% as well as requirements of Union harmonisation legislation listed in Annex I, Section A apply,
% providers shall be responsible for ensuring that their product is fully compliant with all applicable
% requirements under applicable Union harmonisation legislation.
must_comply(Provider, product_harmonisation_legislation(Product)) :-
    provider(Provider),
    product(Product),
    contains_ai_system(Product, System),
    ai_system(System),
    subject_to_harmonisation_legislation(Product, annex_1_section_a).

% Paragraph 2 (second sentence): Providers have a choice of integrating necessary testing, reporting,
% information and documentation into documentation and procedures under the Union harmonisation legislation.
permitted_integrate_documentation_and_procedures(Provider, product_integration(System, Product)) :-
    provider(Provider),
    high_risk_ai_system(System),
    product(Product),
    contains_ai_system(Product, System),
    subject_to_harmonisation_legislation(Product, annex_1_section_a).

provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integrate_documentation_and_procedures/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
