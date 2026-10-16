% unit       : celex:32024R1689/oj#art_8
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 7aac68292861395a0a702efee8ea1cd637590c5ad139beccc67c466ad73d140f
% cached     : False
% title      : Compliance with the requirements
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_8').
:- pred product_contains_ai_system/2, gloss('product contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred provider_of/2, gloss('entity is the provider of an AI system or product'), source('celex:32024R1689/oj#art_8').
:- pred subject_to_annex_1_legislation/1, gloss('product is subject to Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integration_of_documentation_and_procedures/2, gloss('provider is permitted to integrate testing, reporting, information and documentation into existing Union harmonisation procedures'), source('celex:32024R1689/oj#art_8').

% Paragraph 1: High-risk AI systems shall comply with the requirements laid down in Chapter III Section 2.
required_compliance(System, chapter_3_section_2) :-
    high_risk_ai_system(System).

% Paragraph 2 (first sentence): Where a product contains an AI system to which the AI Act
% and Annex I Section A legislation apply, providers are responsible for ensuring that their product
% is fully compliant with all applicable requirements under applicable Union harmonisation legislation.
must_comply(Provider, applicable_union_harmonisation_legislation(Product)) :-
    product_contains_ai_system(Product, System),
    ai_system(System),
    subject_to_annex_1_legislation(Product),
    provider_of(Provider, Product).

% Paragraph 2 (second sentence): Providers have the choice of integrating testing/reporting/documentation
% into existing procedures required under Annex I Section A legislation.
permitted_integration_of_documentation_and_procedures(Provider, Product) :-
    product_contains_ai_system(Product, System),
    high_risk_ai_system(System),
    subject_to_annex_1_legislation(Product),
    provider_of(Provider, Product).

% Provenance
provenance(required_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_documentation_and_procedures/2, 'celex:32024R1689/oj#art_8').

% References
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
