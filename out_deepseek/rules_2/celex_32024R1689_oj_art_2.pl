% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : b1c3a05f3be5b88c232e4f0e2b82d27d0fe72c0d737519b6f7535d7a0e612b8e
% cached     : False
% title      : Scope
:- pred regulation_applies_to/1, gloss('entity to which the regulation applies'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to/1, gloss('entity or system to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to_system/1, gloss('AI system to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to_activity/1, gloss('activity to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to_obligations/1, gloss('obligations to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_preclude/1, gloss('laws or provisions the regulation does not preclude'), source('celex:32024R1689/oj#art_2').
:- pred regulation_without_prejudice_to/1, gloss('legal acts the regulation is without prejudice to'), source('celex:32024R1689/oj#art_2').
:- pred limited_application/2, gloss('only specified articles apply to a given system'), source('celex:32024R1689/oj#art_2').
:- pred military_defence_national_security_purpose/1, gloss('used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred scientific_research_and_development_purpose/1, gloss('specifically developed and put into service for the sole purpose of scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred personal_non_professional_activity/1, gloss('purely personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred international_cooperation_framework/1, gloss('used in the framework of international cooperation or agreements for law enforcement and judicial cooperation'), source('celex:32024R1689/oj#art_2').
:- pred adequate_safeguards_fundamental_rights/1, gloss('provides adequate safeguards with respect to the protection of fundamental rights and freedoms of individuals'), source('celex:32024R1689/oj#art_2').
:- pred testing_in_real_world_conditions/1, gloss('testing in real world conditions'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system_under_annex_1/1, gloss('high-risk AI system related to products covered by Union harmonisation legislation listed in Annex I Section B'), source('celex:32024R1689/oj#art_2').

% Paragraph 1: Regulation applies to
regulation_applies_to(Provider) :-
    provider(Provider),
    ( placing_on_market(Provider) ; putting_into_service(Provider) ),
    ( established_in_union(Provider) ; established_in_third_country(Provider) ).

regulation_applies_to(Provider) :-
    provider(Provider),
    placing_on_market(general_purpose_ai_model),
    ( established_in_union(Provider) ; established_in_third_country(Provider) ).

regulation_applies_to(Deployer) :-
    deployer(Deployer),
    ( established_in_union(Deployer) ; located_in_union(Deployer) ).

regulation_applies_to(Entity) :-
    ( provider(Entity) ; deployer(Entity) ),
    ( established_in_third_country(Entity) ; located_in_third_country(Entity) ),
    output_used_in_union(Entity).

regulation_applies_to(Entity) :-
    importer(Entity).
regulation_applies_to(Entity) :-
    distributor(Entity).

regulation_applies_to(Manufacturer) :-
    product_manufacturer(Manufacturer),
    ( placing_on_market(Manufacturer) ; putting_into_service(Manufacturer) ),
    places_ai_system_with_product(Manufacturer).

regulation_applies_to(Representative) :-
    authorised_representative(Representative),
    represents_provider_not_established_in_union(Representative).

regulation_applies_to(Person) :-
    affected_person(Person),
    located_in_union(Person).

% Paragraph 2: Limited application for high-risk AI systems under Annex I
limited_application(System, [art_6_par_1, art_102, art_103, art_104, art_105, art_106, art_107, art_108, art_109, art_112]) :-
    high_risk_ai_system_under_annex_1(System).

limited_application(System, [art_57]) :-
    high_risk_ai_system_under_annex_1(System),
    requirements_integrated_in_harmonisation_legislation(System).

% Paragraph 3: Exclusions for military, defence, national security
regulation_does_not_apply_to(Area) :-
    outside_scope_of_union_law(Area).
regulation_does_not_apply_to(Competence) :-
    national_security_competence(Competence).

regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    military_defence_national_security_purpose(System),
    ( placed_on_market_or_put_into_service(System) ; used_with_or_without_modification(System) ).

regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    \+ placed_on_market_or_put_into_service_in_union(System),
    output_used_in_union(System),
    military_defence_national_security_purpose(System).

% Paragraph 4: Exclusion for third country public authorities and international organisations
regulation_does_not_apply_to(Authority) :-
    public_authority_third_country(Authority),
    international_cooperation_framework(Authority),
    adequate_safeguards_fundamental_rights(Authority).

regulation_does_not_apply_to(Organisation) :-
    international_organisation(Organisation),
    international_cooperation_framework(Organisation),
    adequate_safeguards_fundamental_rights(Organisation).

% Paragraph 5: Without prejudice to liability of intermediary service providers
regulation_without_prejudice_to(liability_of_providers_of_intermediary_services).

% Paragraph 6: Exclusion for scientific research and development
regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    scientific_research_and_development_purpose(System).

regulation_does_not_apply_to_system(Model) :-
    general_purpose_ai_model(Model),
    scientific_research_and_development_purpose(Model).

% Paragraph 7: Data protection law applies; regulation without prejudice to specific acts
regulation_without_prejudice_to('celex:32016R0679/oj').
regulation_without_prejudice_to('(EU) 2018/1725').
regulation_without_prejudice_to('celex:32002L0058/oj').
regulation_without_prejudice_to('(EU) 2016/680').

% Paragraph 8: Exclusion for pre-market research, testing, development (except real-world testing)
regulation_does_not_apply_to_activity(Activity) :-
    research_testing_development_activity(Activity),
    prior_to_placing_on_market_or_putting_into_service(Activity),
    \+ testing_in_real_world_conditions(Activity).

% Paragraph 9: Without prejudice to consumer protection and product safety
regulation_without_prejudice_to(consumer_protection_and_product_safety).

% Paragraph 10: Exclusion for personal non-professional use by natural persons
regulation_does_not_apply_to_obligations(Deployer) :-
    deployer(Deployer),
    natural_person(Deployer),
    personal_non_professional_activity(Deployer).

% Paragraph 11: Does not preclude more favourable worker protection
regulation_does_not_preclude(more_favourable_worker_protection).

% Paragraph 12: Exclusion for free and open-source AI systems (with exceptions)
regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    free_and_open_source_licence(System),
    \+ high_risk_ai_system(System),
    \+ system_falls_under_art_5_or_art_50(System).

% Provenance
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_system/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_activity/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_obligations/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_preclude/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_without_prejudice_to/1, 'celex:32024R1689/oj#art_2').
provenance(limited_application/2, 'celex:32024R1689/oj#art_2').
provenance(military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_and_development_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_framework/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_under_annex_1/1, 'celex:32024R1689/oj#art_2').

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
