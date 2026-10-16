% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 38e56b43513b2db8e76030d6ca522dc7593fdad44298c7dd61d3247e268f3766
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan/1, gloss('document describing post-market monitoring objectives and methodology'), source('celex:32024R1689/oj#art_72').
:- pred technical_documentation/1, gloss('technical documentation referred to in Annex IV'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_nature_and_risk/2, gloss('system is proportionate to the nature of the AI technologies and the risks'), source('celex:32024R1689/oj#art_72').
:- pred actively_collects_data/1, gloss('system actively and systematically collects, documents and analyses relevant data'), source('celex:32024R1689/oj#art_72').
:- pred data_from_deployers/1, gloss('data provided by deployers'), source('celex:32024R1689/oj#art_72').
:- pred data_from_other_sources/1, gloss('data collected through other sources'), source('celex:32024R1689/oj#art_72').
:- pred lifetime_performance_data/1, gloss('data on performance of high-risk AI systems throughout their lifetime'), source('celex:32024R1689/oj#art_72').
:- pred continuous_compliance_evaluation/2, gloss('provider can evaluate continuous compliance of AI system with Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_72').
:- pred interaction_analysis_with_other_ai_systems/1, gloss('analysis of interaction with other AI systems included where relevant'), source('celex:32024R1689/oj#art_72').
:- pred sensitive_operational_data_excluded/1, gloss('sensitive operational data of law-enforcement deployers is excluded from monitoring obligation'), source('celex:32024R1689/oj#art_72').
:- pred plan_part_of_technical_documentation/2, gloss('post-market monitoring plan is part of technical documentation'), source('celex:32024R1689/oj#art_72').
:- pred implementing_act_template/1, gloss('Commission implementing act laying down template for post-market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred union_harmonisation_legislation_annex_1_section_1/1, gloss('Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_72').
:- pred existing_post_market_monitoring_under_legislation/1, gloss('post-market monitoring system and plan already established under Union harmonisation legislation'), source('celex:32024R1689/oj#art_72').
:- pred integration_choice_available/1, gloss('provider has choice of integrating necessary elements into existing systems and plans'), source('celex:32024R1689/oj#art_72').
:- pred equivalent_level_of_protection/1, gloss('integration achieves an equivalent level of protection'), source('celex:32024R1689/oj#art_72').
:- pred financial_institution_high_risk_ai_system/1, gloss('high-risk AI system referred to in Annex III point 5 placed on market or put into service by financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_72').

must_establish_post_market_monitoring_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    post_market_monitoring_system(System),
    proportionate_to_nature_and_risk(System, S).

must_document_post_market_monitoring_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    post_market_monitoring_system(System),
    proportionate_to_nature_and_risk(System, S).

post_market_monitoring_system_actively_collects(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    actively_collects_data(System),
    (data_from_deployers(System) ; data_from_other_sources(System)),
    lifetime_performance_data(System),
    continuous_compliance_evaluation(System, S).

post_market_monitoring_system_includes_interaction_analysis(System) :-
    post_market_monitoring_system(System),
    interaction_analysis_with_other_ai_systems(System).

sensitive_operational_data_excluded(System, Deployer) :-
    post_market_monitoring_system(System),
    deployer(Deployer),
    law_enforcement_authority(Deployer),
    sensitive_operational_data(Data),
    \+ actively_collects_data(System, Data).

post_market_monitoring_plan_required(System, Plan) :-
    post_market_monitoring_system(System),
    post_market_monitoring_plan(Plan),
    plan_part_of_technical_documentation(Plan, System).

plan_part_of_technical_documentation(Plan, System) :-
    post_market_monitoring_plan(Plan),
    post_market_monitoring_system(System),
    technical_documentation(Doc),
    member(Plan, Doc).

implementing_act_template_required(Act) :-
    implementing_act_template(Act).

integration_choice_available(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_annex_1_section_1(Legislation),
    existing_post_market_monitoring_under_legislation(Legislation, S),
    equivalent_level_of_protection(S).

financial_institution_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point_5(S),
    financial_institution(Deployer),
    deployer(Deployer),
    (placing_on_market(S) ; putting_into_service(S)),
    union_financial_services_law_requirements(Deployer).

must_apply_paragraph_4_to_financial_institution_system(Provider, S) :-
    provider(Provider),
    financial_institution_high_risk_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan/1, 'celex:32024R1689/oj#art_72').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(proportionate_to_nature_and_risk/2, 'celex:32024R1689/oj#art_72').
provenance(actively_collects_data/1, 'celex:32024R1689/oj#art_72').
provenance(data_from_deployers/1, 'celex:32024R1689/oj#art_72').
provenance(data_from_other_sources/1, 'celex:32024R1689/oj#art_72').
provenance(lifetime_performance_data/1, 'celex:32024R1689/oj#art_72').
provenance(continuous_compliance_evaluation/2, 'celex:32024R1689/oj#art_72').
provenance(interaction_analysis_with_other_ai_systems/1, 'celex:32024R1689/oj#art_72').
provenance(sensitive_operational_data_excluded/1, 'celex:32024R1689/oj#art_72').
provenance(plan_part_of_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(implementing_act_template/1, 'celex:32024R1689/oj#art_72').
provenance(union_harmonisation_legislation_annex_1_section_1/1, 'celex:32024R1689/oj#art_72').
provenance(existing_post_market_monitoring_under_legislation/1, 'celex:32024R1689/oj#art_72').
provenance(integration_choice_available/1, 'celex:32024R1689/oj#art_72').
provenance(equivalent_level_of_protection/1, 'celex:32024R1689/oj#art_72').
provenance(financial_institution_high_risk_ai_system/1, 'celex:32024R1689/oj#art_72').
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(must_document_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_actively_collects/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_includes_interaction_analysis/1, 'celex:32024R1689/oj#art_72').
provenance(sensitive_operational_data_excluded/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_required/2, 'celex:32024R1689/oj#art_72').
provenance(plan_part_of_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(implementing_act_template_required/1, 'celex:32024R1689/oj#art_72').
provenance(integration_choice_available/2, 'celex:32024R1689/oj#art_72').
provenance(must_apply_paragraph_4_to_financial_institution_system/2, 'celex:32024R1689/oj#art_72').

references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
