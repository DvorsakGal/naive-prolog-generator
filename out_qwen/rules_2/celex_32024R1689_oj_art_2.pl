% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 6d39504fbea945d03ab9b1a5c2cf93a0d1bb46b5a3b2b53f89bd5cfcdff2c7ae
% cached     : False
% title      : Scope
:- pred regulation_applies_to_provider/1, gloss('regulation applies to a provider'), source('celex:32024R1689/oj#art_2').
:- pred regulation_applies_to_deployer/1, gloss('regulation applies to a deployer'), source('celex:32024R1689/oj#art_2').
:- pred regulation_applies_to_importer/1, gloss('regulation applies to an importer'), source('celex:32024R1689/oj#art_2').
:- pred regulation_applies_to_distributor/1, gloss('regulation applies to a distributor'), source('celex:32024R1689/oj#art_2').
:- pred regulation_applies_to_product_manufacturer/1, gloss('regulation applies to a product manufacturer'), source('celex:32024R1689/oj#art_2').
:- pred regulation_applies_to_authorised_representative/1, gloss('regulation applies to an authorised representative'), source('celex:32024R1689/oj#art_2').
:- pred exempt_military_defence_national_security_purpose/1, gloss('AI system used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred exempt_scientific_research_and_development/1, gloss('AI system developed and put into service solely for scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred exempt_pre_market_research_testing_or_development/1, gloss('research, testing or development activity prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_2').
:- pred exempt_personal_non_professional_activity/1, gloss('deployer who is a natural person using AI system in purely personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred exempt_free_and_open_source_ai_system/1, gloss('AI system released under free and open-source licence not placed on market as high-risk or under Art 5/50'), source('celex:32024R1689/oj#art_2').
:- pred limited_applicable_provisions_for_harmonised_product/1, gloss('high-risk AI system related to product covered by Union harmonisation legislation listed in Annex I Section B'), source('celex:32024R1689/oj#art_2').

% --- Scope: Providers ---
regulation_applies_to_provider(P) :-
    provider(P),
    placing_on_market(_S).

regulation_applies_to_provider(P) :-
    provider(P),
    putting_into_service(_S).

regulation_applies_to_provider(P) :-
    provides_general_purpose_ai_model(P, _M).

% --- Scope: Deployers ---
regulation_applies_to_deployer(D) :-
    deployer(D).

% --- Scope: Other Operators ---
regulation_applies_to_importer(I) :-
    importer(I).

regulation_applies_to_distributor(D) :-
    distributor(D).

regulation_applies_to_product_manufacturer(M) :-
    product_manufacturer(M).

regulation_applies_to_authorised_representative(R) :-
    authorised_representative(R).

% --- Exclusions ---
exempt_military_defence_national_security_purpose(S) :-
    ai_system(S),
    objective_military_defence_national_security(S).

exempt_scientific_research_and_development(S) :-
    ai_system(S),
    objective_scientific_research_and_development(S).

exempt_pre_market_research_testing_or_development(A) :-
    research_testing_or_development_activity(A),
    before_placing_on_market_or_service(A),
    \+ testing_in_real_world_conditions(A).

exempt_personal_non_professional_activity(D) :-
    deployer(D),
    natural_person(D),
    purely_personal_non_professional_use(D).

exempt_free_and_open_source_ai_system(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_practice_infringement(S).

% --- Limited Applicability for Harmonised Products ---
limited_applicable_provisions_for_harmonised_product(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

% --- Provenance ---
provenance(regulation_applies_to_provider/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_deployer/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_importer/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_distributor/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_product_manufacturer/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_authorised_representative/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_scientific_research_and_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_pre_market_research_testing_or_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_free_and_open_source_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(limited_applicable_provisions_for_harmonised_product/1, 'celex:32024R1689/oj#art_2').

% --- References ---
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
