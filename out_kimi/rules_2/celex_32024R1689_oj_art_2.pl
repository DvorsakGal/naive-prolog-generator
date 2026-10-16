% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : bdc6f1246cb0b93d4a26c8f8e7583bab38443b35d1f160736f62e00f6da51389
% cached     : False
% title      : Scope
:- pred applies_to/1, gloss('the AI Act applies to the entity or activity'), source('celex:32024R1689/oj#art_2').
:- pred does_not_apply_to/1, gloss('the AI Act does not apply to the entity or activity'), source('celex:32024R1689/oj#art_2').
:- pred applies_with_limitation/2, gloss('the AI Act applies with specified limitation'), source('celex:32024R1689/oj#art_2').
:- pred does_not_affect/1, gloss('the AI Act does not affect the specified provision'), source('celex:32024R1689/oj#art_2').
:- pred without_prejudice_to/1, gloss('the AI Act is without prejudice to the specified provision'), source('celex:32024R1689/oj#art_2').
:- pred exclusively_for_military_defence_national_security/1, gloss('AI system used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred output_used_exclusively_for_military_defence_national_security/1, gloss('output of AI system used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred scientific_research_and_development/1, gloss('AI system or model developed and put into service for sole purpose of scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred research_testing_development_prior_to_market/1, gloss('research, testing or development activity prior to being placed on market or put into service'), source('celex:32024R1689/oj#art_2').
:- pred purely_personal_non_professional_activity/1, gloss('natural person using AI system in purely personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred more_favourable_worker_protection/1, gloss('law or collective agreement more favourable to workers regarding AI use by employers'), source('celex:32024R1689/oj#art_2').
:- pred international_cooperation_law_enforcement_judicial/1, gloss('use of AI systems in framework of international cooperation or agreements for law enforcement and judicial cooperation'), source('celex:32024R1689/oj#art_2').
:- pred adequate_safeguards_fundamental_rights/1, gloss('third country or international organisation provides adequate safeguards for fundamental rights and freedoms'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_under_art_6_par_1/1, gloss('AI system classified as high-risk in accordance with Article 6(1)'), source('celex:32024R1689/oj#art_2').
:- pred product_covered_by_union_harmonisation_legislation_annex_1_sec_2/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section 2'), source('celex:32024R1689/oj#art_2').
:- pred requirements_integrated_in_union_harmonisation_legislation/1, gloss('requirements for high-risk AI systems integrated in Union harmonisation legislation'), source('celex:32024R1689/oj#art_2').

% Paragraph 1(a) - providers placing on market or putting into service AI systems, or placing on market GPAI models
applies_to(provider_placing_on_market_or_putting_into_service(P, S)) :-
    provider(P),
    (ai_system(S); general_purpose_ai_model(S)),
    placing_on_market_or_putting_into_service(P, S),
    established_or_located_in_union_or_third_country(P).

placing_on_market_or_putting_into_service(P, S) :-
    (placing_on_market(S); putting_into_service(S)),
    provider(P).

established_or_located_in_union_or_third_country(P) :-
    established_in_union(P).
established_or_located_in_union_or_third_country(P) :-
    \+ established_in_union(P).

% Paragraph 1(b) - deployers established or located in Union
applies_to(deployer_in_union(D)) :-
    deployer(D),
    established_in_union(D).

% Paragraph 1(c) - providers and deployers in third country where output used in Union
applies_to(provider_or_deployer_third_country_output_in_union(P, S)) :-
    (provider(P); deployer(P)),
    \+ established_in_union(P),
    ai_system(S),
    output_used_in_union(S).

% Paragraph 1(d) - importers and distributors
applies_to(importer_or_distributor(I)) :-
    importer(I).
applies_to(importer_or_distributor(D)) :-
    distributor(D).

% Paragraph 1(e) - product manufacturers placing AI system with their product under own name/trademark
applies_to(product_manufacturer_with_ai_system(M, S)) :-
    product_manufacturer(M),
    ai_system(S),
    placing_on_market_or_putting_into_service(M, S),
    under_own_name_or_trademark(M, S).

under_own_name_or_trademark(M, S).

% Paragraph 1(f) - authorised representatives not established in Union
applies_to(authorised_representative_not_in_union(R)) :-
    authorised_representative(R),
    \+ established_in_union(R).

% Paragraph 1(g) - affected persons located in Union
applies_to(affected_person_in_union(P)) :-
    affected_person(P),
    established_in_union(P).

% Paragraph 2 - limited application for high-risk AI systems related to products covered by Annex I Section 2 harmonisation legislation
applies_with_limitation(high_risk_ai_system_annex_1_sec_2(S), limited_provisions_apply) :-
    high_risk_under_art_6_par_1(S),
    product_covered_by_union_harmonisation_legislation_annex_1_sec_2(S).

applies_with_limitation(high_risk_ai_system_annex_1_sec_2(S), art_57_conditional) :-
    high_risk_under_art_6_par_1(S),
    product_covered_by_union_harmonisation_legislation_annex_1_sec_2(S),
    requirements_integrated_in_union_harmonisation_legislation(S).

% Paragraph 3 - exclusions for national security, military, defence
does_not_apply_to(area_outside_union_law).

does_not_apply_to(national_security_competence).

does_not_apply_to(ai_system_military_defence_national_security(S)) :-
    ai_system(S),
    exclusively_for_military_defence_national_security(S).

does_not_apply_to(ai_system_output_military_defence_national_security(S)) :-
    ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    output_used_exclusively_for_military_defence_national_security(S).

% Paragraph 4 - exclusion for third country public authorities and international organisations in international cooperation
does_not_apply_to(third_country_authority_international_organisation_cooperation(A)) :-
    (public_authority_third_country(A); international_organisation(A)),
    international_cooperation_law_enforcement_judicial(A),
    adequate_safeguards_fundamental_rights(A).

public_authority_third_country(A).
international_organisation(A).

% Paragraph 5 - does not affect liability of intermediary services providers
does_not_affect(liability_intermediary_services).

% Paragraph 6 - exclusion for scientific research and development
does_not_apply_to(scientific_research_development(S)) :-
    (ai_system(S); general_purpose_ai_model(S)),
    scientific_research_and_development(S).

% Paragraph 7 - without prejudice to data protection law
without_prejudice_to(data_protection_law).

% Paragraph 8 - exclusion for R&D prior to market, but testing in real world conditions not covered
does_not_apply_to(research_testing_development_activity(A)) :-
    research_testing_development_prior_to_market(A),
    \+ testing_in_real_world_conditions(A).

% Paragraph 9 - without prejudice to consumer protection and product safety
without_prejudice_to(consumer_protection_product_safety).

% Paragraph 10 - exclusion for natural persons in purely personal non-professional activity
does_not_apply_to(natural_person_purely_personal_non_professional(D)) :-
    deployer(D),
    natural_person(D),
    purely_personal_non_professional_activity(D).

% Paragraph 11 - does not preclude more favourable worker protection
does_not_preclude(more_favourable_worker_protection(L)) :-
    more_favourable_worker_protection(L).

% Paragraph 12 - exclusion for free and open-source, unless high-risk or under Article 5 or 50
does_not_apply_to(free_open_source_not_high_risk_or_prohibited(S)) :-
    (ai_system(S); general_purpose_ai_model(S)),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ falls_under_art_5_or_50(S).

falls_under_art_5_or_50(S) :-
    ai_system(S),
    (prohibited_practice_art_5(S); falls_under_art_50(S)).

prohibited_practice_art_5(S).
falls_under_art_50(S).

% Provenance
provenance(applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(applies_with_limitation/2, 'celex:32024R1689/oj#art_2').
provenance(does_not_affect/1, 'celex:32024R1689/oj#art_2').
provenance(without_prejudice_to/1, 'celex:32024R1689/oj#art_2').
provenance(does_not_preclude/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_for_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_exclusively_for_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_and_development/1, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_prior_to_market/1, 'celex:32024R1689/oj#art_2').
provenance(purely_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(more_favourable_worker_protection/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_judicial/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_under_art_6_par_1/1, 'celex:32024R1689/oj#art_2').
provenance(product_covered_by_union_harmonisation_legislation_annex_1_sec_2/1, 'celex:32024R1689/oj#art_2').
provenance(requirements_integrated_in_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_2').
provenance(placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_2').
provenance(established_or_located_in_union_or_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(provider_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_2').
provenance(deployer_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(provider_or_deployer_third_country_output_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(importer_or_distributor/1, 'celex:32024R1689/oj#art_2').
provenance(product_manufacturer_with_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(under_own_name_or_trademark/2, 'celex:32024R1689/oj#art_2').
provenance(authorised_representative_not_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(limited_provisions_apply/0, 'celex:32024R1689/oj#art_2').
provenance(art_57_conditional/0, 'celex:32024R1689/oj#art_2').
provenance(area_outside_union_law/0, 'celex:32024R1689/oj#art_2').
provenance(national_security_competence/0, 'celex:32024R1689/oj#art_2').
provenance(ai_system_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(ai_system_output_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(third_country_authority_international_organisation_cooperation/1, 'celex:32024R1689/oj#art_2').
provenance(public_authority_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(international_organisation/1, 'celex:32024R1689/oj#art_2').
provenance(liability_intermediary_services/0, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_development/1, 'celex:32024R1689/oj#art_2').
provenance(data_protection_law/0, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_activity/1, 'celex:32024R1689/oj#art_2').
provenance(consumer_protection_product_safety/0, 'celex:32024R1689/oj#art_2').
provenance(natural_person_purely_personal_non_professional/1, 'celex:32024R1689/oj#art_2').
provenance(free_open_source_not_high_risk_or_prohibited/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_5_or_50/1, 'celex:32024R1689/oj#art_2').
provenance(prohibited_practice_art_5/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_50/1, 'celex:32024R1689/oj#art_2').

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
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32022R2065/oj#chp_2').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32002L0058/oj').
