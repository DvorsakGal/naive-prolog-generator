% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1fb751c9bfa3a57df3a967ab0f5edb7c14356743931ddf6840247aa81c331c07
% cached     : False
% title      : Scope
:- pred applies_to/1, gloss('the regulation applies to the entity or activity'), source('celex:32024R1689/oj#art_2/par_1').
:- pred exempt/1, gloss('the regulation does not apply to the entity or activity'), source('celex:32024R1689/oj#art_2/par_3').
:- pred exempt_military_defence_national_security/1, gloss('exemption for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2/par_3').
:- pred exempt_third_country_authorities/1, gloss('exemption for third country authorities and international organisations under conditions'), source('celex:32024R1689/oj#art_2/par_4').
:- pred exempt_scientific_research/1, gloss('exemption for scientific research and development'), source('celex:32024R1689/oj#art_2/par_6').
:- pred exempt_research_testing_development/1, gloss('exemption for research, testing or development prior to market placement'), source('celex:32024R1689/oj#art_2/par_8').
:- pred exempt_personal_non_professional/1, gloss('exemption for natural persons in purely personal non-professional activity'), source('celex:32024R1689/oj#art_2/par_10').
:- pred exempt_free_open_source/1, gloss('exemption for free and open-source AI systems'), source('celex:32024R1689/oj#art_2/par_12').
:- pred high_risk_integration_in_harmonisation_legislation/1, gloss('high-risk AI systems integrated in Union harmonisation legislation with limited articles applying'), source('celex:32024R1689/oj#art_2/par_2').
:- pred without_prejudice_consumer_protection/0, gloss('regulation is without prejudice to consumer protection and product safety rules'), source('celex:32024R1689/oj#art_2/par_9').
:- pred without_prejudice_workers_rights/0, gloss('regulation does not preclude more favourable worker protection'), source('celex:32024R1689/oj#art_2/par_11').
:- pred without_prejudice_intermediary_liability/0, gloss('regulation does not affect intermediary service liability provisions'), source('celex:32024R1689/oj#art_2/par_5').
:- pred without_prejudice_data_protection/0, gloss('regulation does not affect data protection legislation'), source('celex:32024R1689/oj#art_2/par_7').
:- pred limited_application_high_risk_harmonisation/1, gloss('only specific articles apply to high-risk AI systems under harmonisation legislation'), source('celex:32024R1689/oj#art_2/par_2').

applies_to(provider_placing_on_market_or_putting_into_service_ai_system(P, S)) :-
    provider(P),
    ai_system(S),
    placing_on_market_or_putting_into_service(P, S).

applies_to(provider_placing_general_purpose_ai_model_on_market(P, M)) :-
    provider(P),
    general_purpose_ai_model(M),
    placing_on_market(P, M).

applies_to(deployer_of_ai_system(D, S)) :-
    deployer(D),
    ai_system(S),
    established_or_located_in_union(D).

applies_to(provider_or_deployer_third_country_output_used_in_union(P, S)) :-
    (provider(P); deployer(P)),
    ai_system(S),
    established_or_located_in_third_country(P),
    output_used_in_union(S).

applies_to(importer_or_distributor_of_ai_system(I, S)) :-
    (importer(I); distributor(I)),
    ai_system(S).

applies_to(product_manufacturer_placing_ai_system_with_product(M, S)) :-
    product_manufacturer(M),
    ai_system(S),
    placing_on_market_or_putting_into_service(M, S),
    under_own_name_or_trademark(M, S).

applies_to(authorised_representative_not_established_in_union(R, P)) :-
    authorised_representative(R),
    provider(P),
    \+ established_or_located_in_union(P),
    mandated_by(R, P).

applies_to(affected_person_in_union(P)) :-
    affected_person(P),
    located_in_union(P).

exempt(areas_outside_union_law) :-
    outside_scope_of_union_law.

exempt(national_security_competences) :-
    national_security_competence_of_member_states.

exempt_military_defence_national_security(S) :-
    ai_system(S),
    placed_on_market_put_into_service_or_used_for_military_defence_national_security(S).

exempt_military_defence_national_security_output(S) :-
    ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    located_in_union(S),
    output_used_for_military_defence_national_security(S).

exempt_third_country_authorities(A) :-
    (public_authority_third_country(A); international_organisation(A)),
    use_ai_system_in_international_cooperation(A),
    adequate_safeguards_fundamental_rights(A).

exempt_scientific_research(S) :-
    (ai_system(S); general_purpose_ai_model(M)),
    specifically_developed_and_put_into_service_for_scientific_research(S, M).

exempt_research_testing_development(A) :-
    (research_activity(A); testing_activity(A); development_activity(A)),
    regarding_ai_system_or_model(A),
    prior_to_placing_on_market_or_putting_into_service(A),
    \+ testing_in_real_world_conditions(A).

exempt_personal_non_professional(D, S) :-
    deployer(D),
    natural_person(D),
    ai_system(S),
    purely_personal_non_professional_activity(D, S).

exempt_free_open_source(S) :-
    ai_system(S),
    released_under_free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ falls_under_art_5_or_50(S).

limited_application_high_risk_harmonisation(S) :-
    high_risk_ai_system(S),
    classified_under_art_6_par_1(S),
    related_to_product_covered_by_union_harmonisation_legislation_annex_1_sec_2(S).

without_prejudice_consumer_protection.
without_prejudice_workers_rights.
without_prejudice_intermediary_liability.
without_prejudice_data_protection.

provenance(applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(exempt/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_military_defence_national_security/1, 'celex:32024R1689/oj#art_2/par_3').
provenance(exempt_military_defence_national_security_output/1, 'celex:32024R1689/oj#art_2/par_3').
provenance(exempt_third_country_authorities/1, 'celex:32024R1689/oj#art_2/par_4').
provenance(exempt_scientific_research/1, 'celex:32024R1689/oj#art_2/par_6').
provenance(exempt_research_testing_development/1, 'celex:32024R1689/oj#art_2/par_8').
provenance(exempt_personal_non_professional/2, 'celex:32024R1689/oj#art_2/par_10').
provenance(exempt_free_open_source/1, 'celex:32024R1689/oj#art_2/par_12').
provenance(limited_application_high_risk_harmonisation/1, 'celex:32024R1689/oj#art_2/par_2').
provenance(without_prejudice_consumer_protection/0, 'celex:32024R1689/oj#art_2/par_9').
provenance(without_prejudice_workers_rights/0, 'celex:32024R1689/oj#art_2/par_11').
provenance(without_prejudice_intermediary_liability/0, 'celex:32024R1689/oj#art_2/par_5').
provenance(without_prejudice_data_protection/0, 'celex:32024R1689/oj#art_2/par_7').

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
