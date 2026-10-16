% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : db25b7512d77b1f66f176ea9d419628da8d30fd1b2415defd6c26cd2d332b2b1
% cached     : False
% title      : Scope
:- pred regulation_applies_to/1, gloss('entity or person to which the regulation applies'), source('celex:32024R1689/oj#art_2').
:- pred regulation_does_not_apply_to/1, gloss('entity, system, or activity to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred established_in_union/1, gloss('entity established or located in the Union'), source('celex:32024R1689/oj#art_2').
:- pred established_in_third_country/1, gloss('entity established or located in a third country'), source('celex:32024R1689/oj#art_2').
:- pred output_used_in_union/1, gloss('output of AI system used in the Union'), source('celex:32024R1689/oj#art_2').
:- pred placed_on_market_in_union/1, gloss('AI system or model placed on the market in the Union'), source('celex:32024R1689/oj#art_2').
:- pred put_into_service_in_union/1, gloss('AI system put into service in the Union'), source('celex:32024R1689/oj#art_2').
:- pred placed_on_market_with_product/1, gloss('AI system placed on market together with product under own name or trademark'), source('celex:32024R1689/oj#art_2').
:- pred affected_person/1, gloss('person affected by AI system output located in the Union'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system_related_to_harmonisation_legislation/1, gloss('high-risk AI system related to products covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_2').
:- pred exclusively_military_defence_national_security/1, gloss('AI system used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred public_authority_third_country/1, gloss('public authority in a third country'), source('celex:32024R1689/oj#art_2').
:- pred international_organisation/1, gloss('international organisation'), source('celex:32024R1689/oj#art_2').
:- pred adequate_safeguards_fundamental_rights/1, gloss('adequate safeguards for protection of fundamental rights and freedoms'), source('celex:32024R1689/oj#art_2').
:- pred scientific_research_development_sole_purpose/1, gloss('AI system or model specifically developed and put into service for sole purpose of scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred research_testing_development_prior_to_market/1, gloss('research, testing or development activity regarding AI systems or models prior to being placed on market or put into service'), source('celex:32024R1689/oj#art_2').
:- pred purely_personal_non_professional_activity/1, gloss('deployer who is natural person using AI system in course of purely personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred free_open_source_licence/1, gloss('AI system released under free and open-source licence'), source('celex:32024R1689/oj#art_2').

% Article 2(1)(a): providers placing on market or putting into service AI systems or placing on market GPAI models in the Union
regulation_applies_to(X) :-
    provider(X),
    placing_on_market(S),
    placed_on_market_in_union(S).

regulation_applies_to(X) :-
    provider(X),
    putting_into_service(S),
    put_into_service_in_union(S).

regulation_applies_to(X) :-
    provider(X),
    general_purpose_ai_model(M),
    placing_on_market(M),
    placed_on_market_in_union(M).

% Article 2(1)(b): deployers established or located in the Union
regulation_applies_to(X) :-
    deployer(X),
    established_in_union(X).

% Article 2(1)(c): providers and deployers in third country where output used in Union
regulation_applies_to(X) :-
    provider(X),
    established_in_third_country(X),
    ai_system(S),
    output_used_in_union(output(S)).

regulation_applies_to(X) :-
    deployer(X),
    established_in_third_country(X),
    ai_system(S),
    output_used_in_union(output(S)).

% Article 2(1)(d): importers and distributors of AI systems
regulation_applies_to(X) :-
    importer(X),
    ai_system(_S).

regulation_applies_to(X) :-
    distributor(X),
    ai_system(_S).

% Article 2(1)(e): product manufacturers placing on market or putting into service AI system together with product under own name or trademark
regulation_applies_to(X) :-
    product_manufacturer(X),
    placed_on_market_with_product(placement(X, S)),
    ai_system(S).

regulation_applies_to(X) :-
    product_manufacturer(X),
    putting_into_service(S),
    put_into_service_in_union(S),
    ai_system(S).

% Article 2(1)(f): authorised representatives of providers not established in the Union
regulation_applies_to(X) :-
    authorised_representative(X),
    established_in_third_country(X).

% Article 2(1)(g): affected persons located in the Union
regulation_applies_to(X) :-
    affected_person(X),
    established_in_union(X).

% Article 2(2): limited application for high-risk AI systems related to harmonisation legislation
regulation_applies_to_limited(S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S).

% Article 2(3): does not apply outside scope of Union law; does not affect national security competences
regulation_does_not_apply_to(area_outside_union_law).

regulation_does_not_apply_to(national_security_competence).

% Article 2(3): does not apply to AI systems exclusively for military, defence or national security purposes
regulation_does_not_apply_to(S) :-
    ai_system(S),
    placed_on_market_in_union(S),
    exclusively_military_defence_national_security(S).

regulation_does_not_apply_to(S) :-
    ai_system(S),
    put_into_service_in_union(S),
    exclusively_military_defence_national_security(S).

regulation_does_not_apply_to(S) :-
    ai_system(S),
    established_in_third_country(_E),
    output_used_in_union(output(S)),
    exclusively_military_defence_national_security(S).

% Article 2(4): does not apply to public authorities in third country or international organisations with adequate safeguards
regulation_does_not_apply_to(X) :-
    public_authority_third_country(X),
    international_cooperation_law_enforcement_judicial(X),
    adequate_safeguards_fundamental_rights(X).

regulation_does_not_apply_to(X) :-
    international_organisation(X),
    international_cooperation_law_enforcement_judicial(X),
    adequate_safeguards_fundamental_rights(X).

% Article 2(6): does not apply to AI systems or models for sole purpose of scientific research and development
regulation_does_not_apply_to(S) :-
    ai_system(S),
    scientific_research_development_sole_purpose(S).

regulation_does_not_apply_to(M) :-
    general_purpose_ai_model(M),
    scientific_research_development_sole_purpose(M).

% Article 2(8): does not apply to research, testing or development prior to market placement or putting into service
regulation_does_not_apply_to(activity(A)) :-
    research_testing_development_prior_to_market(A).

% Article 2(10): does not apply to deployers who are natural persons in purely personal non-professional activity
regulation_does_not_apply_to(X) :-
    deployer(X),
    purely_personal_non_professional_activity(X).

% Article 2(12): does not apply to free and open-source licences unless high-risk or under Article 5 or 50
regulation_does_not_apply_to(S) :-
    ai_system(S),
    free_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_practice(S).

% Helper: high-risk AI system (needed for Article 2(12) exception)
high_risk_ai_system(S) :-
    ai_system(S),
    classified_as_high_risk(S).

% Helper: prohibited practice (Article 5 systems)
prohibited_practice(S) :-
    ai_system(S),
    falls_under_article_5(S).

% Provenance
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(established_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(placed_on_market_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(put_into_service_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(placed_on_market_with_product/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_related_to_harmonisation_legislation/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(public_authority_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(international_organisation/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_development_sole_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_prior_to_market/1, 'celex:32024R1689/oj#art_2').
provenance(purely_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_limited/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(prohibited_practice/1, 'celex:32024R1689/oj#art_2').

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
