% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 23b1ee2c92fc6697a9287456dabcf36e15853f6cb3878af01e2f81a5ac9a51bf
% cached     : False
% title      : Scope
:- pred regulation_applies_to/1, gloss('entity to which the regulation applies'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to/1, gloss('entity or system to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to_system/1, gloss('AI system to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to_activity/1, gloss('activity to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred limited_articles_apply/1, gloss('AI system for which only limited articles apply'), source('celex:32024R1689/oj#art_2').
:- pred exclusively_military_defence_national_security_purpose/1, gloss('purpose exclusively military, defence or national security'), source('celex:32024R1689/oj#art_2').
:- pred scientific_research_and_development_purpose/1, gloss('sole purpose of scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred personal_non_professional_activity/1, gloss('purely personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred free_and_open_source_licence/1, gloss('released under free and open-source licence'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_6/par_1').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section B'), source('celex:32024R1689/oj#anx_1/sec_2').
:- pred international_cooperation_law_enforcement_judicial/1, gloss('international cooperation or agreement for law enforcement and judicial cooperation'), source('celex:32024R1689/oj#art_2').
:- pred adequate_safeguards_fundamental_rights/1, gloss('provides adequate safeguards for protection of fundamental rights and freedoms'), source('celex:32024R1689/oj#art_2').

% Paragraph 1 — entities to which the regulation applies
regulation_applies_to(Provider) :-
    provider(Provider),
    ( placing_on_market(Provider) ; putting_into_service(Provider) ).

regulation_applies_to(Provider) :-
    provider(Provider),
    placing_on_market(Provider),
    general_purpose_ai_model(_M).

regulation_applies_to(Deployer) :-
    deployer(Deployer),
    ( established_in_union(Deployer) ; located_in_union(Deployer) ).

regulation_applies_to(Entity) :-
    ( provider(Entity) ; deployer(Entity) ),
    ( established_in_third_country(Entity) ; located_in_third_country(Entity) ),
    output_used_in_union(Entity).

regulation_applies_to(Entity) :-
    importer(Entity),
    ai_system(_S).

regulation_applies_to(Entity) :-
    distributor(Entity),
    ai_system(_S).

regulation_applies_to(Manufacturer) :-
    product_manufacturer(Manufacturer),
    ( placing_on_market(Manufacturer) ; putting_into_service(Manufacturer) ),
    ai_system(_S),
    under_own_name_or_trademark(Manufacturer, _S).

regulation_applies_to(Representative) :-
    authorised_representative(Representative),
    provider(_P),
    \+ established_in_union(_P).

regulation_applies_to(Person) :-
    affected_person(Person),
    located_in_union(Person).

% Paragraph 2 — limited application for high-risk AI systems related to products
limited_articles_apply(S) :-
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(S).

% Paragraph 3 — exclusions for areas outside Union law, national security, military, defence
regulation_does_not_apply_to(area_outside_union_law).

regulation_does_not_apply_to(national_security_competence).

regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ; used(S) ),
    exclusively_military_defence_national_security_purpose(S).

regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    \+ ( placing_on_market(S) ; putting_into_service(S) ),
    output_used_in_union(S),
    exclusively_military_defence_national_security_purpose(S).

% Paragraph 4 — exclusion for third-country public authorities and international organisations
regulation_does_not_apply_to(Authority) :-
    public_authority_third_country(Authority),
    international_cooperation_law_enforcement_judicial(Authority),
    adequate_safeguards_fundamental_rights(Authority).

regulation_does_not_apply_to(Organisation) :-
    international_organisation(Organisation),
    international_cooperation_law_enforcement_judicial(Organisation),
    adequate_safeguards_fundamental_rights(Organisation).

% Paragraph 5 — liability of intermediary services
regulation_does_not_apply_to(liability_of_intermediary_services).

% Paragraph 6 — scientific research and development
regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    scientific_research_and_development_purpose(S).

regulation_does_not_apply_to_system(M) :-
    ai_model(M),
    scientific_research_and_development_purpose(M).

% Paragraph 7 — data protection law unaffected
regulation_does_not_apply_to(data_protection_law).

% Paragraph 8 — pre-market research, testing, development
regulation_does_not_apply_to_activity(research_testing_development_prior_to_market).

% Paragraph 9 — consumer protection and product safety
regulation_does_not_apply_to(consumer_protection_product_safety_law).

% Paragraph 10 — personal non-professional use
regulation_does_not_apply_to(Deployer) :-
    deployer(Deployer),
    natural_person(Deployer),
    personal_non_professional_activity(Deployer).

% Paragraph 11 — more favourable worker protection
regulation_does_not_apply_to(more_favourable_worker_protection).

% Paragraph 12 — free and open-source AI systems
regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_ai_system(S),
    \+ transparency_obligation_system(S).

% Provenance
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_system/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_activity/1, 'celex:32024R1689/oj#art_2').
provenance(limited_articles_apply/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_and_development_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_judicial/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').

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
