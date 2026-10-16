% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 97203a73f0f1313ad0dcdbd23f4067e218eb84ff813f32529c3e7e32dfc31af6
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred must_establish_post_market_monitoring_system/1, gloss('provider must establish and document a post-market monitoring system proportionate to nature of AI technologies and risks of high-risk AI system'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_system_actively_collects_data/1, gloss('post-market monitoring system actively and systematically collects, documents and analyses relevant data on performance of high-risk AI systems throughout their lifetime'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_data_source/2, gloss('data source for post-market monitoring: deployer or other source'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_evaluates_continuous_compliance/2, gloss('post-market monitoring allows provider to evaluate continuous compliance of AI system with requirements set out in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_includes_ai_interaction_analysis/1, gloss('post-market monitoring includes analysis of interaction with other AI systems where relevant'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_excludes_sensitive_operational_data/1, gloss('post-market monitoring obligation does not cover sensitive operational data of deployers which are law-enforcement authorities'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_based_on_plan/1, gloss('post-market monitoring system is based on a post-market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan_part_of_technical_documentation/1, gloss('post-market monitoring plan is part of technical documentation referred to in Annex 4'), source('celex:32024R1689/oj#art_72').
:- pred commission_adopts_implementing_act_post_market_monitoring_plan/0, gloss('Commission adopts implementing act laying down template for post-market monitoring plan and list of elements by 2 February 2026'), source('celex:32024R1689/oj#art_72').
:- pred implementing_act_examination_procedure/0, gloss('implementing act adopted in accordance with examination procedure referred to in Article 98(2)'), source('celex:32024R1689/oj#art_72').
:- pred may_integrate_post_market_monitoring_elements/1, gloss('provider may integrate necessary elements into systems and plans already existing under Union harmonisation legislation listed in Annex 1 Section 1'), source('celex:32024R1689/oj#art_72').
:- pred integration_achieves_equivalent_protection/1, gloss('integration achieves equivalent level of protection'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_applies_to_financial_institutions/1, gloss('Article 72(4) applies to high-risk AI systems referred to in Annex 3 point 5 placed on market or put into service by financial institutions subject to Union financial services law requirements'), source('celex:32024R1689/oj#art_72').

must_establish_post_market_monitoring_system(P) :-
    provider(P),
    high_risk_ai_system(S),
    places_on_market(P, S).

post_market_monitoring_system_actively_collects_data(S) :-
    post_market_monitoring_system(S),
    high_risk_ai_system(S).

post_market_monitoring_data_source(S, deployer(D)) :-
    post_market_monitoring_system_actively_collects_data(S),
    deployer(D),
    provides_data_for_monitoring(D, S).

post_market_monitoring_data_source(S, other_source) :-
    post_market_monitoring_system_actively_collects_data(S).

post_market_monitoring_evaluates_continuous_compliance(P, S) :-
    provider(P),
    post_market_monitoring_system_actively_collects_data(S),
    high_risk_ai_system(S),
    places_on_market(P, S).

post_market_monitoring_includes_ai_interaction_analysis(S) :-
    post_market_monitoring_system_actively_collects_data(S),
    interacts_with_other_ai_systems(S).

post_market_monitoring_excludes_sensitive_operational_data(S) :-
    post_market_monitoring_system_actively_collects_data(S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(Data),
    relates_to(Data, S).

post_market_monitoring_based_on_plan(S) :-
    post_market_monitoring_system(S),
    post_market_monitoring_plan(Plan),
    based_on(S, Plan).

post_market_monitoring_plan_part_of_technical_documentation(Plan) :-
    post_market_monitoring_plan(Plan),
    technical_documentation(Doc),
    part_of(Plan, Doc).

commission_adopts_implementing_act_post_market_monitoring_plan.

implementing_act_examination_procedure.

may_integrate_post_market_monitoring_elements(P) :-
    provider(P),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    existing_post_market_monitoring_system_under_legislation(S),
    places_on_market(P, S).

integration_achieves_equivalent_protection(S) :-
    may_integrate_post_market_monitoring_elements(_P),
    high_risk_ai_system(S),
    equivalent_level_of_protection(S).

post_market_monitoring_applies_to_financial_institutions(S) :-
    high_risk_ai_system(S),
    annex_3_point_5(S),
    financial_institution(F),
    places_on_market(F, S).

post_market_monitoring_applies_to_financial_institutions(S) :-
    high_risk_ai_system(S),
    annex_3_point_5(S),
    financial_institution(F),
    putting_into_service(F, S).

provenance(must_establish_post_market_monitoring_system/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_actively_collects_data/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_data_source/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_evaluates_continuous_compliance/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_includes_ai_interaction_analysis/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_excludes_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_based_on_plan/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_part_of_technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(commission_adopts_implementing_act_post_market_monitoring_plan/0, 'celex:32024R1689/oj#art_72').
provenance(implementing_act_examination_procedure/0, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_post_market_monitoring_elements/1, 'celex:32024R1689/oj#art_72').
provenance(integration_achieves_equivalent_protection/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_applies_to_financial_institutions/1, 'celex:32024R1689/oj#art_72').

references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
