% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b749eba96a034c8de945d49ff9906043c1d3fa129c0ae17d70bf8223199d86a2
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_72').
:- pred provider_of/2, gloss('Entity is the provider of an AI system'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan/1, gloss('Document specifying post-market monitoring plan for AI system'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan_of/2, gloss('Post-market monitoring plan for an AI system'), source('celex:32024R1689/oj#art_72').
:- pred technical_documentation_of/2, gloss('Technical documentation of an AI system'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_system_of/2, gloss('Post-market monitoring system established for an AI system'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_technology_and_risk/2, gloss('Monitoring system is proportionate to the nature of AI technologies and risks'), source('celex:32024R1689/oj#art_72').
:- pred based_on/2, gloss('Entity or system is based on another specification or plan'), source('celex:32024R1689/oj#art_72').
:- pred part_of/2, gloss('Object is part of another composite entity'), source('celex:32024R1689/oj#art_72').
:- pred covers_data/2, gloss('System or plan covers specified data'), source('celex:32024R1689/oj#art_72').
:- pred deployer_of/2, gloss('Entity is the deployer of an AI system'), source('celex:32024R1689/oj#art_72').
:- pred financial_institution/1, gloss('Entity is a financial institution'), source('celex:32024R1689/oj#art_72').
:- pred subject_to_union_financial_services_governance/1, gloss('Entity is subject to Union financial services law regarding internal governance'), source('celex:32024R1689/oj#art_72').
:- pred annex_3_point_5_system/1, gloss('AI system referred to in Annex III point 5'), source('celex:32024R1689/oj#art_72').
:- pred permitted_integrate_post_market_monitoring/2, gloss('Provider may integrate post-market monitoring elements into existing systems/plans'), source('celex:32024R1689/oj#art_72').
:- pred existing_post_market_monitoring_regime/1, gloss('AI system has existing post-market monitoring system and plan under applicable legislation'), source('celex:32024R1689/oj#art_72').
:- pred achieves_equivalent_level_of_protection/1, gloss('Integration achieves an equivalent level of protection'), source('celex:32024R1689/oj#art_72').
:- pred must_establish/2, gloss('Actor must establish an object or system'), source('celex:32024R1689/oj#art_72').
:- pred must_document/2, gloss('Actor must document an object or system'), source('celex:32024R1689/oj#art_72').
:- pred must_collect_document_analyse/2, gloss('Monitoring system must actively and systematically collect, document, and analyse relevant data'), source('celex:32024R1689/oj#art_72').
:- pred must_adopt/2, gloss('Actor must adopt a legal act or measure'), source('celex:32024R1689/oj#art_72').
:- pred examination_procedure/1, gloss('Examination procedure referred to in Article 98(2)'), source('celex:32024R1689/oj#art_72').

% Paragraph 1: Providers shall establish and document a post-market monitoring system
must_establish(Provider, post_market_monitoring_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

must_document(Provider, post_market_monitoring_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

required_proportionate_monitoring(System) :-
    high_risk_ai_system(System),
    post_market_monitoring_system_of(MonitoringSystem, System),
    proportionate_to_technology_and_risk(MonitoringSystem, System).

% Paragraph 2: Post-market monitoring system functions and exclusion of sensitive operational data of law enforcement
must_collect_document_analyse(MonitoringSystem, performance_data(System)) :-
    post_market_monitoring_system_of(MonitoringSystem, System),
    high_risk_ai_system(System).

exempt_from_post_market_monitoring(sensitive_operational_data(Deployer, System)) :-
    high_risk_ai_system(System),
    deployer_of(Deployer, System),
    law_enforcement_authority(Deployer),
    sensitive_operational_data(Data),
    covers_data(sensitive_operational_data(Deployer, System), Data).

% Paragraph 3: System based on plan, plan part of technical documentation, Commission mandate
required_monitoring_plan_basis(MonitoringSystem, Plan) :-
    post_market_monitoring_system_of(MonitoringSystem, System),
    post_market_monitoring_plan_of(Plan, System),
    based_on(MonitoringSystem, Plan).

required_plan_in_technical_documentation(Plan, TechDoc) :-
    post_market_monitoring_plan_of(Plan, System),
    technical_documentation_of(TechDoc, System),
    part_of(Plan, TechDoc).

must_adopt(Commission, implementing_act(template_post_market_monitoring_plan)) :-
    commission(Commission),
    examination_procedure(proc_art_98_2).

% Paragraph 4: Integration for systems under Annex I Section A
permitted_integrate_post_market_monitoring(Provider, System) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    covers_union_harmonisation_legislation_annex_i(System),
    existing_post_market_monitoring_regime(System),
    achieves_equivalent_level_of_protection(System).

% Paragraph 4, second subparagraph: Application to Annex III point 5 systems by financial institutions
permitted_integrate_post_market_monitoring(Provider, System) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    annex_3_point_5_system(System),
    financial_institution(Provider),
    subject_to_union_financial_services_governance(Provider),
    existing_post_market_monitoring_regime(System),
    achieves_equivalent_level_of_protection(System).

% Provenance facts
provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(required_proportionate_monitoring/1, 'celex:32024R1689/oj#art_72').
provenance(must_collect_document_analyse/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_from_post_market_monitoring/1, 'celex:32024R1689/oj#art_72').
provenance(required_monitoring_plan_basis/2, 'celex:32024R1689/oj#art_72').
provenance(required_plan_in_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integrate_post_market_monitoring/2, 'celex:32024R1689/oj#art_72').

% Cross-reference facts
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
