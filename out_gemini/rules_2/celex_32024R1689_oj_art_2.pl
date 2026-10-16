% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 6a76dee7a424a2fb2f98b5f569a9651592fba1ba8c77b61a55e99bf38fa9ea9c
% cached     : False
% title      : Scope
:- pred regulation_applies_to/1, gloss('The AI Regulation applies to the specified entity or activity'), source('celex:32024R1689/oj#art_2').
:- pred exempt_from_regulation/1, gloss('Activity, system or entity is exempt from the scope of the AI Regulation'), source('celex:32024R1689/oj#art_2').
:- pred in_union/1, gloss('Located or established in the Union'), source('celex:32024R1689/oj#art_2').
:- pred in_third_country/1, gloss('Located or established in a third country'), source('celex:32024R1689/oj#art_2').
:- pred places_on_market_in_union/2, gloss('Entity places AI system or general-purpose AI model on the market in the Union'), source('celex:32024R1689/oj#art_2').
:- pred puts_into_service_in_union/2, gloss('Entity puts AI system into service in the Union'), source('celex:32024R1689/oj#art_2').
:- pred output_used_in_union/1, gloss('Output produced by the AI system is used in the Union'), source('celex:32024R1689/oj#art_2').
:- pred affected_person/1, gloss('Affected person under the AI Regulation'), source('celex:32024R1689/oj#art_2').
:- pred military_defence_or_national_security_purpose/1, gloss('Used or intended exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred national_security_competence/1, gloss('Competence or task of a Member State concerning national security'), source('celex:32024R1689/oj#art_2').
:- pred public_authority/1, gloss('Public authority'), source('celex:32024R1689/oj#art_2').
:- pred international_organisation/1, gloss('International organisation'), source('celex:32024R1689/oj#art_2').
:- pred law_enforcement_or_judicial_cooperation/1, gloss('Use of AI system in framework of international cooperation or agreement for law enforcement or judicial cooperation'), source('celex:32024R1689/oj#art_2').
:- pred provides_adequate_safeguards_fundamental_rights/1, gloss('Third country or international organisation provides adequate safeguards for fundamental rights'), source('celex:32024R1689/oj#art_2').
:- pred scientific_research_and_development/1, gloss('Specifically developed and put into service for the sole purpose of scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred research_testing_development_prior_to_market/1, gloss('Research, testing or development activity regarding AI systems or models prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_2').
:- pred natural_person/1, gloss('Natural person'), source('celex:32024R1689/oj#art_2').
:- pred personal_non_professional_activity/1, gloss('Use of AI system in the course of a purely personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred open_source_licence/1, gloss('AI system released under free and open-source licence'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_2').
:- pred falls_under_article_5/1, gloss('AI system falls under Article 5 prohibited practices'), source('celex:32024R1689/oj#art_2').
:- pred falls_under_article_50/1, gloss('AI system falls under Article 50 transparency obligations'), source('celex:32024R1689/oj#art_2').
:- pred limited_scope_annex_1_system/1, gloss('AI system subject only to limited provisions pursuant to Article 2(2)'), source('celex:32024R1689/oj#art_2').
:- pred annex_1_section_b_product_system/1, gloss('High-risk AI system related to products covered by Union harmonisation legislation listed in Annex I Section B'), source('celex:32024R1689/oj#art_2').

% Paragraph 1: Scope of the Regulation
regulation_applies_to(P) :-
    provider(P),
    places_on_market_in_union(P, _System).

regulation_applies_to(P) :-
    provider(P),
    puts_into_service_in_union(P, _System).

regulation_applies_to(D) :-
    deployer(D),
    in_union(D).

regulation_applies_to(P) :-
    provider(P),
    in_third_country(P),
    places_on_market_in_union(P, S),
    output_used_in_union(S).

regulation_applies_to(D) :-
    deployer(D),
    in_third_country(D),
    output_used_in_union(D).

regulation_applies_to(I) :-
    importer(I).

regulation_applies_to(D) :-
    distributor(D).

regulation_applies_to(M) :-
    product_manufacturer(M),
    places_on_market_in_union(M, _System).

regulation_applies_to(M) :-
    product_manufacturer(M),
    puts_into_service_in_union(M, _System).

regulation_applies_to(R) :-
    authorised_representative(R),
    authorised_representative_of(R, P),
    provider(P),
    \+ in_union(P).

regulation_applies_to(Person) :-
    affected_person(Person),
    in_union(Person).

% Paragraph 2: Limited scope for Annex I Section B high-risk AI systems
limited_scope_annex_1_system(S) :-
    high_risk_ai_system(S),
    annex_1_section_b_product_system(S).

% Paragraph 3: Exclusions for national security, defence, and military
exempt_from_regulation(Task) :-
    national_security_competence(Task).

exempt_from_regulation(S) :-
    ai_system(S),
    military_defence_or_national_security_purpose(S).

% Paragraph 4: Public authorities in third countries / international organisations
exempt_from_regulation(Entity) :-
    public_authority(Entity),
    in_third_country(Entity),
    law_enforcement_or_judicial_cooperation(Entity),
    provides_adequate_safeguards_fundamental_rights(Entity).

exempt_from_regulation(Entity) :-
    international_organisation(Entity),
    law_enforcement_or_judicial_cooperation(Entity),
    provides_adequate_safeguards_fundamental_rights(Entity).

% Paragraph 6: Scientific research and development
exempt_from_regulation(S) :-
    ai_system(S),
    scientific_research_and_development(S).

exempt_from_regulation(M) :-
    general_purpose_ai_model(M),
    scientific_research_and_development(M).

% Paragraph 8: Prior research, testing, or development (excluding real-world testing)
exempt_from_regulation(Activity) :-
    research_testing_development_prior_to_market(Activity),
    \+ testing_in_real_world_conditions(Activity).

% Paragraph 10: Personal non-professional activities by natural persons
exempt_from_regulation(deployment(Deployer, _System)) :-
    deployer(Deployer),
    natural_person(Deployer),
    personal_non_professional_activity(Deployer).

% Paragraph 12: Open source systems exclusion (with exceptions)
exempt_from_regulation(S) :-
    ai_system(S),
    open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ falls_under_article_5(S),
    \+ falls_under_article_50(S).

% Provenance facts
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_from_regulation/1, 'celex:32024R1689/oj#art_2').
provenance(limited_scope_annex_1_system/1, 'celex:32024R1689/oj#art_2').

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
references('celex:32024R1689/oj#art_2', 'celex:32002L0058/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
