% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 69fa9450dbc1a70bc1c09b53af34fdcd250dfb8f72f80c9945f01deda4e34742
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan/1, gloss('document laying down the post-market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_nature_and_risks/2, gloss('system is proportionate to technology nature and system risks'), source('celex:32024R1689/oj#art_72').
:- pred technical_documentation/1, gloss('technical documentation of an AI system'), source('celex:32024R1689/oj#art_72').
:- pred contains_element/2, gloss('document or container contains element'), source('celex:32024R1689/oj#art_72').
:- pred based_on_plan/2, gloss('system is based on a specific plan'), source('celex:32024R1689/oj#art_72').
:- pred covers_union_harmonisation_legislation_annex_i/1, gloss('system is covered by Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#art_72').
:- pred covered_annex_iii_point_5_financial_institution/1, gloss('system is covered by Annex III point 5 and subject to Union financial services law governance'), source('celex:32024R1689/oj#art_72').
:- pred achieves_equivalent_level_of_protection/1, gloss('integrated plan achieves an equivalent level of protection'), source('celex:32024R1689/oj#art_72').
:- pred existing_post_market_monitoring_established/1, gloss('post-market monitoring system and plan already established under other Union legislation'), source('celex:32024R1689/oj#art_72').
:- pred must_establish/2, gloss('actor must establish an object'), source('celex:32024R1689/oj#art_72').
:- pred must_document/2, gloss('actor must document an object'), source('celex:32024R1689/oj#art_72').
:- pred permitted_integration/2, gloss('actor is permitted to integrate elements into existing systems and plans'), source('celex:32024R1689/oj#art_72').
:- pred required_monitoring_collection/2, gloss('monitoring system must collect and analyse data on system performance'), source('celex:32024R1689/oj#art_72').
:- pred exempt_monitoring_data/2, gloss('data excluded from post-market monitoring collection obligation'), source('celex:32024R1689/oj#art_72').

% Paragraph 1: Providers shall establish and document a post-market monitoring system
must_establish(Provider, post_market_monitoring_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    proportionate_to_nature_and_risks(post_market_monitoring_system(System), System).

must_document(Provider, post_market_monitoring_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    proportionate_to_nature_and_risks(post_market_monitoring_system(System), System).

% Paragraph 2: Post-market monitoring data collection requirement & exclusion of sensitive operational data
required_monitoring_collection(post_market_monitoring_system(System), data_lifetime_performance(System)) :-
    high_risk_ai_system(System).

exempt_monitoring_data(post_market_monitoring_system(System), Data) :-
    sensitive_operational_data(Data),
    deployer(Deployer),
    law_enforcement_authority(Deployer),
    high_risk_ai_system(System).

% Paragraph 3: System based on plan, and plan part of technical documentation
post_market_monitoring_system(System) :-
    based_on_plan(System, Plan),
    post_market_monitoring_plan(Plan),
    technical_documentation(Doc),
    contains_element(Doc, Plan).

% Paragraph 4: Option to integrate for Annex I harmonisation legislation
permitted_integration(Provider, post_market_monitoring(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    covers_union_harmonisation_legislation_annex_i(System),
    existing_post_market_monitoring_established(System),
    achieves_equivalent_level_of_protection(System).

% Paragraph 4 subparagraph 2: Option to integrate for Annex III point 5 financial institutions
permitted_integration(Provider, post_market_monitoring(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_annex_iii_point_5_financial_institution(System),
    existing_post_market_monitoring_established(System),
    achieves_equivalent_level_of_protection(System).

% Provenance
provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(required_monitoring_collection/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_monitoring_data/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system/1, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration/2, 'celex:32024R1689/oj#art_72').

% References
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
