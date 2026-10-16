% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c7d4f46f5fe0fd0d6e0ebc762d29e7a0a1abe11bbd6f399201c1c9f8db5bf587
% cached     : False
% title      : Scope
:- pred regulation_applies_to/1, gloss('the AI Act applies to the entity or person'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to/1, gloss('the AI Act does not apply to the entity, system, or activity'), source('celex:32024R1689/oj#art_2').
:- pred established_or_located_in_union/1, gloss('entity has place of establishment or is located in the Union'), source('celex:32024R1689/oj#art_2').
:- pred established_or_located_in_third_country/1, gloss('entity has place of establishment or is located in a third country'), source('celex:32024R1689/oj#art_2').
:- pred output_used_in_union/1, gloss('output produced by the AI system is used in the Union'), source('celex:32024R1689/oj#art_2').
:- pred placing_on_market_or_putting_into_service/1, gloss('placing on the market or putting into service'), source('celex:32024R1689/oj#art_2').
:- pred placing_on_market_general_purpose_ai_model/1, gloss('placing on the market a general-purpose AI model'), source('celex:32024R1689/oj#art_2').
:- pred affected_person/1, gloss('person affected by an AI system'), source('celex:32024R1689/oj#art_2').
:- pred located_in_union/1, gloss('person is located in the Union'), source('celex:32024R1689/oj#art_2').
:- pred product_manufacturer_placing_ai_system_with_product/1, gloss('product manufacturer placing on the market or putting into service an AI system together with their product under their own name or trademark'), source('celex:32024R1689/oj#art_2').
:- pred authorised_representative_not_established_in_union/1, gloss('authorised representative of a provider not established in the Union'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system_related_to_harmonisation_legislation_product/1, gloss('high-risk AI system related to a product covered by Union harmonisation legislation listed in Annex I Section B'), source('celex:32024R1689/oj#art_2').
:- pred limited_application_for_harmonisation_legislation_products/1, gloss('only specific articles apply to high-risk AI systems related to products covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_2').
:- pred outside_scope_of_union_law/1, gloss('area outside the scope of Union law'), source('celex:32024R1689/oj#art_2').
:- pred national_security_competence_unaffected/1, gloss('competences of Member States concerning national security are unaffected'), source('celex:32024R1689/oj#art_2').
:- pred exclusively_military_defence_national_security_purpose/1, gloss('AI system placed on the market, put into service, or used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred output_used_exclusively_military_defence_national_security/1, gloss('output used in the Union exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred public_authority_in_third_country/1, gloss('public authority in a third country'), source('celex:32024R1689/oj#art_2').
:- pred international_organisation/1, gloss('international organisation'), source('celex:32024R1689/oj#art_2').
:- pred international_cooperation_law_enforcement_judicial/1, gloss('use of AI systems in framework of international cooperation or agreements for law enforcement and judicial cooperation with the Union or Member States'), source('celex:32024R1689/oj#art_2').
:- pred adequate_safeguards_fundamental_rights/1, gloss('third country or international organisation provides adequate safeguards with respect to protection of fundamental rights and freedoms of individuals'), source('celex:32024R1689/oj#art_2').
:- pred intermediary_services_liability_provisions_unaffected/1, gloss('provisions on liability of providers of intermediary services are unaffected'), source('celex:32024R1689/oj#art_2').
:- pred sole_purpose_scientific_research_development/1, gloss('AI system or AI model specifically developed and put into service for the sole purpose of scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred personal_data_protection_law_applies/1, gloss('Union law on protection of personal data, privacy and confidentiality of communications applies to personal data processed in connection with rights and obligations laid down in the AI Act'), source('celex:32024R1689/oj#art_2').
:- pred research_testing_development_prior_to_market/1, gloss('research, testing or development activity regarding AI systems or AI models prior to their being placed on the market or put into service'), source('celex:32024R1689/oj#art_2').
:- pred real_world_testing_not_excluded/1, gloss('testing in real world conditions is not covered by the exclusion for pre-market research, testing or development'), source('celex:32024R1689/oj#art_2').
:- pred consumer_protection_product_safety_rules_unaffected/1, gloss('rules laid down by other Union legal acts related to consumer protection and product safety are unaffected'), source('celex:32024R1689/oj#art_2').
:- pred purely_personal_non_professional_activity/1, gloss('deployer is a natural person using AI systems in the course of a purely personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred more_favourable_worker_protection_permitted/1, gloss('Union or Member States may maintain or introduce more favourable laws for workers or collective agreements'), source('celex:32024R1689/oj#art_2').
:- pred free_and_open_source_licence/1, gloss('AI system released under free and open-source licence'), source('celex:32024R1689/oj#art_2').

% Article 2(1)(a): providers placing on the market or putting into service AI systems or placing on the market general-purpose AI models in the Union
regulation_applies_to(P) :-
    provider(P),
    placing_on_market_or_putting_into_service(S),
    ai_system(S),
    placing_on_market(S).

regulation_applies_to(P) :-
    provider(P),
    placing_on_market_or_putting_into_service(S),
    ai_system(S),
    putting_into_service(S).

regulation_applies_to(P) :-
    provider(P),
    placing_on_market_general_purpose_ai_model(M),
    general_purpose_ai_model(M).

% Article 2(1)(b): deployers of AI systems established or located in the Union
regulation_applies_to(D) :-
    deployer(D),
    ai_system(S),
    established_or_located_in_union(D).

% Article 2(1)(c): providers and deployers in third country where output is used in the Union
regulation_applies_to(P) :-
    provider(P),
    ai_system(S),
    established_or_located_in_third_country(P),
    output_used_in_union(S).

regulation_applies_to(D) :-
    deployer(D),
    ai_system(S),
    established_or_located_in_third_country(D),
    output_used_in_union(S).

% Article 2(1)(d): importers and distributors of AI systems
regulation_applies_to(I) :-
    importer(I),
    ai_system(S).

regulation_applies_to(D) :-
    distributor(D),
    ai_system(S).

% Article 2(1)(e): product manufacturers placing on the market or putting into service an AI system together with their product under their own name or trademark
regulation_applies_to(M) :-
    product_manufacturer(M),
    product_manufacturer_placing_ai_system_with_product(M).

% Article 2(1)(f): authorised representatives of providers not established in the Union
regulation_applies_to(R) :-
    authorised_representative(R),
    authorised_representative_not_established_in_union(R).

% Article 2(1)(g): affected persons located in the Union
regulation_applies_to(P) :-
    affected_person(P),
    located_in_union(P).

% Article 2(2): limited application for high-risk AI systems related to products covered by Union harmonisation legislation
limited_application_for_harmonisation_legislation_products(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system_related_to_harmonisation_legislation_product(S).

% Article 2(3): does not apply to areas outside scope of Union law
regulation_does_not_apply_to(A) :-
    outside_scope_of_union_law(A).

% Article 2(3): does not affect Member States' competences concerning national security
national_security_competence_unaffected.

% Article 2(3): does not apply to AI systems exclusively for military, defence or national security purposes
regulation_does_not_apply_to(S) :-
    ai_system(S),
    exclusively_military_defence_national_security_purpose(S).

% Article 2(3): does not apply to AI systems not placed on market or put into service in Union where output used exclusively for military, defence or national security purposes
regulation_does_not_apply_to(S) :-
    ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    output_used_exclusively_military_defence_national_security(S).

% Article 2(4): does not apply to public authorities in third countries or international organisations in specific international cooperation
regulation_does_not_apply_to(A) :-
    public_authority_in_third_country(A),
    international_cooperation_law_enforcement_judicial(A),
    adequate_safeguards_fundamental_rights(A).

regulation_does_not_apply_to(O) :-
    international_organisation(O),
    international_cooperation_law_enforcement_judicial(O),
    adequate_safeguards_fundamental_rights(O).

% Article 2(5): does not affect liability of providers of intermediary services
intermediary_services_liability_provisions_unaffected.

% Article 2(6): does not apply to AI systems or models specifically developed and put into service for sole purpose of scientific research and development
regulation_does_not_apply_to(S) :-
    ai_system(S),
    sole_purpose_scientific_research_development(S).

regulation_does_not_apply_to(M) :-
    general_purpose_ai_model(M),
    sole_purpose_scientific_research_development(M).

% Article 2(7): personal data protection law applies
personal_data_protection_law_applies.

% Article 2(8): does not apply to research, testing or development prior to market placement, but real-world testing is not excluded
regulation_does_not_apply_to(A) :-
    research_testing_development_prior_to_market(A).

real_world_testing_not_excluded.

% Article 2(9): without prejudice to consumer protection and product safety rules
consumer_protection_product_safety_rules_unaffected.

% Article 2(10): does not apply to obligations of deployers who are natural persons using AI systems in purely personal non-professional activity
regulation_does_not_apply_to(D) :-
    deployer(D),
    purely_personal_non_professional_activity(D).

% Article 2(11): does not preclude more favourable worker protection
more_favourable_worker_protection_permitted.

% Article 2(12): does not apply to AI systems released under free and open-source licences, unless high-risk or under Article 5 or 50
regulation_does_not_apply_to(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_practice(S).

:- pred prohibited_practice/1, gloss('AI system falls under Article 5 prohibited practices'), source('celex:32024R1689/oj#art_2').

regulation_does_not_apply_to(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ transparency_obligation_article_50(S).

:- pred transparency_obligation_article_50/1, gloss('AI system falls under Article 50 transparency obligations'), source('celex:32024R1689/oj#art_2').

% Provenance
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(established_or_located_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(established_or_located_in_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_2').
provenance(placing_on_market_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').
provenance(located_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(product_manufacturer_placing_ai_system_with_product/1, 'celex:32024R1689/oj#art_2').
provenance(authorised_representative_not_established_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_related_to_harmonisation_legislation_product/1, 'celex:32024R1689/oj#art_2').
provenance(limited_application_for_harmonisation_legislation_products/1, 'celex:32024R1689/oj#art_2').
provenance(outside_scope_of_union_law/1, 'celex:32024R1689/oj#art_2').
provenance(national_security_competence_unaffected/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_exclusively_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(public_authority_in_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(international_organisation/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_judicial/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(intermediary_services_liability_provisions_unaffected/1, 'celex:32024R1689/oj#art_2').
provenance(sole_purpose_scientific_research_development/1, 'celex:32024R1689/oj#art_2').
provenance(personal_data_protection_law_applies/1, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_prior_to_market/1, 'celex:32024R1689/oj#art_2').
provenance(real_world_testing_not_excluded/1, 'celex:32024R1689/oj#art_2').
provenance(consumer_protection_product_safety_rules_unaffected/1, 'celex:32024R1689/oj#art_2').
provenance(purely_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(more_favourable_worker_protection_permitted/1, 'celex:32024R1689/oj#art_2').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_2').
provenance(prohibited_practice/1, 'celex:32024R1689/oj#art_2').
provenance(transparency_obligation_article_50/1, 'celex:32024R1689/oj#art_2').

% References
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_102').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_105').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_108').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_109').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_2', 'celex:32022R2065/oj#chp_2').
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
