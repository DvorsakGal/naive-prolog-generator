% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0d6594673333d29f29593e574ae357a21813fe5171b3a83cb180a907a849f5ea
% cached     : False
% title      : Scope
:- pred scope_applies_to_provider/1, gloss('provider within scope of the regulation'), source('celex:32024R1689/oj#art_2').
:- pred scope_applies_to_deployer/1, gloss('deployer within scope of the regulation'), source('celex:32024R1689/oj#art_2').
:- pred scope_applies_to_importer/1, gloss('importer within scope of the regulation'), source('celex:32024R1689/oj#art_2').
:- pred scope_applies_to_distributor/1, gloss('distributor within scope of the regulation'), source('celex:32024R1689/oj#art_2').
:- pred scope_applies_to_product_manufacturer/1, gloss('product manufacturer within scope of the regulation'), source('celex:32024R1689/oj#art_2').
:- pred scope_applies_to_authorised_representative/1, gloss('authorised representative within scope of the regulation'), source('celex:32024R1689/oj#art_2').
:- pred exempt_military_defence_national_security/1, gloss('AI system excluded for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred exempt_scientific_research_and_development/1, gloss('AI system excluded for sole purpose of scientific R&D'), source('celex:32024R1689/oj#art_2').
:- pred exempt_pre_market_research_testing_development/1, gloss('activity excluded prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_2').
:- pred exempt_personal_non_professional_activity/1, gloss('deployer obligation excluded for purely personal non-professional use'), source('celex:32024R1689/oj#art_2').
:- pred exempt_free_open_source/1, gloss('AI system released under free and open-source licence excluded'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system_related_to_product/1, gloss('high-risk AI system related to products covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_2').
:- pred international_cooperation_law_enforcement_exemption_applies/1, gloss('exemption for third country public authorities or international organisations in law enforcement cooperation'), source('celex:32024R1689/oj#art_2').

scope_applies_to_provider(P) :-
    provider(P),
    placing_on_market(S),
    ai_system(S).

scope_applies_to_provider(P) :-
    provider(P),
    putting_into_service(S),
    ai_system(S).

scope_applies_to_provider(P) :-
    provider(P),
    placing_on_market(M),
    general_purpose_ai_model(M).

scope_applies_to_deployer(D) :-
    deployer(D).

scope_applies_to_importer(I) :-
    importer(I).

scope_applies_to_distributor(D) :-
    distributor(D).

scope_applies_to_product_manufacturer(M) :-
    product_manufacturer(M),
    placing_on_market(S),
    ai_system(S).

scope_applies_to_product_manufacturer(M) :-
    product_manufacturer(M),
    putting_into_service(S),
    ai_system(S).

scope_applies_to_authorised_representative(R) :-
    authorised_representative(R).

exempt_military_defence_national_security(S) :-
    ai_system(S),
    exclusively_military_defence_national_security_purpose(S).

exempt_scientific_research_and_development(S) :-
    ai_system(S),
    sole_purpose_scientific_research_and_development(S).

exempt_pre_market_research_testing_development(A) :-
    research_testing_development_activity(A),
    prior_to_placing_on_market_or_putting_into_service(A),
    \+ testing_in_real_world_conditions(A).

exempt_personal_non_professional_activity(D) :-
    deployer(D),
    natural_person(D),
    purely_personal_non_professional_use(D).

exempt_free_open_source(S) :-
    ai_system(S),
    released_under_free_open_source_licence(S),
    \+ placed_on_market_as_high_risk(S),
    \+ falls_under_art_5_or_art_50(S).

high_risk_ai_system_related_to_product(S) :-
    ai_system(S),
    classified_as_high_risk(S),
    related_to_product_covered_by_union_harmonisation_legislation(S).

international_cooperation_law_enforcement_exemption_applies(E) :-
    public_authority_in_third_country_or_international_organisation(E),
    uses_ai_system_in_framework_of_international_cooperation(E),
    law_enforcement_or_judicial_cooperation_with_union_or_member_state(E),
    provides_adequate_safeguards_for_fundamental_rights(E).

provenance(scope_applies_to_provider/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_deployer/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_importer/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_distributor/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_product_manufacturer/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_authorised_representative/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_scientific_research_and_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_pre_market_research_testing_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_free_open_source/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_related_to_product/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_exemption_applies/1, 'celex:32024R1689/oj#art_2').

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
