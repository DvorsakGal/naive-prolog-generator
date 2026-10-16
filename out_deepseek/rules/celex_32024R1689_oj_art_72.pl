% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 433bcad13b4096f717721da7cbc5e4b37c48d26faa8820aa0bb06c3b463ac904
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred must_establish_post_market_monitoring_system/2, gloss('provider must establish and document a post-market monitoring system'), source('celex:32024R1689/oj#art_72/par_1').
:- pred must_collect_and_analyse_data/2, gloss('post-market monitoring system must actively and systematically collect, document and analyse relevant data'), source('celex:32024R1689/oj#art_72/par_2').
:- pred must_base_on_post_market_monitoring_plan/2, gloss('post-market monitoring system must be based on a post-market monitoring plan'), source('celex:32024R1689/oj#art_72/par_3').
:- pred may_integrate_existing_system/2, gloss('provider may integrate elements into existing post-market monitoring system under harmonisation legislation'), source('celex:32024R1689/oj#art_72/par_4').

must_establish_post_market_monitoring_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    post_market_monitoring_system(System),
    proportionate_to_nature_and_risks(System).

must_collect_and_analyse_data(System, Data) :-
    post_market_monitoring_system(System),
    relevant_data(Data),
    provided_by_deployers_or_other_sources(Data),
    concerns_performance_throughout_lifetime(Data, System),
    allows_evaluation_of_continuous_compliance(Data, System),
    \+ sensitive_operational_data_of_law_enforcement_deployers(Data).

must_base_on_post_market_monitoring_plan(System, Plan) :-
    post_market_monitoring_system(System),
    post_market_monitoring_plan(Plan),
    part_of_technical_documentation(Plan).

may_integrate_existing_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_by_union_harmonisation_legislation_annex_i_section_a(System),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).

% Supporting predicates
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_nature_and_risks/1, gloss('system is proportionate to the nature of the AI technologies and the risks'), source('celex:32024R1689/oj#art_72/par_1').
:- pred relevant_data/1, gloss('data relevant to the performance of high-risk AI systems'), source('celex:32024R1689/oj#art_72/par_2').
:- pred provided_by_deployers_or_other_sources/1, gloss('data provided by deployers or collected through other sources'), source('celex:32024R1689/oj#art_72/par_2').
:- pred concerns_performance_throughout_lifetime/2, gloss('data concerns the performance of the AI system throughout its lifetime'), source('celex:32024R1689/oj#art_72/par_2').
:- pred allows_evaluation_of_continuous_compliance/2, gloss('data allows the provider to evaluate continuous compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_72/par_2').
:- pred sensitive_operational_data_of_law_enforcement_deployers/1, gloss('data is sensitive operational data of deployers which are law-enforcement authorities'), source('celex:32024R1689/oj#art_72/par_2').
:- pred post_market_monitoring_plan/1, gloss('plan for post-market monitoring'), source('celex:32024R1689/oj#art_72/par_3').
:- pred part_of_technical_documentation/1, gloss('plan is part of the technical documentation referred to in Annex IV'), source('celex:32024R1689/oj#art_72/par_3').
:- pred covered_by_union_harmonisation_legislation_annex_i_section_a/1, gloss('system covered by Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_72/par_4').
:- pred existing_post_market_monitoring_system/1, gloss('post-market monitoring system and plan already established under that legislation'), source('celex:32024R1689/oj#art_72/par_4').
:- pred achieves_equivalent_level_of_protection/1, gloss('integration achieves an equivalent level of protection'), source('celex:32024R1689/oj#art_72/par_4').

% Provenance
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72/par_1').
provenance(must_collect_and_analyse_data/2, 'celex:32024R1689/oj#art_72/par_2').
provenance(must_base_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72/par_3').
provenance(may_integrate_existing_system/2, 'celex:32024R1689/oj#art_72/par_4').

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
