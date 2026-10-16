% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : faab5ef02e46dc00e1b9bcca80620432079fd7ac55f3f1ccb8d6f6c2260780a2
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_72').
:- pred must_establish_post_market_monitoring_system/2, gloss('provider obligation to establish and document a post-market monitoring system'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_nature_and_risks/2, gloss('system is proportionate to AI technologies and risks of the system'), source('celex:32024R1689/oj#art_72').
:- pred must_collect_performance_data/2, gloss('post-market monitoring system actively collects relevant performance data'), source('celex:32024R1689/oj#art_72').
:- pred must_analyze_interaction_with_other_ai_systems/2, gloss('post-market monitoring includes analysis of interaction with other AI systems where relevant'), source('celex:32024R1689/oj#art_72').
:- pred exempt_sensitive_operational_data/2, gloss('obligation does not cover sensitive operational data of law enforcement deployers'), source('celex:32024R1689/oj#art_72').
:- pred must_base_system_on_plan/2, gloss('post-market monitoring system must be based on a post-market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred part_of_technical_documentation/2, gloss('plan is part of technical documentation referred to in Annex IV'), source('celex:32024R1689/oj#art_72').
:- pred covered_by_union_harmonisation_legislation/1, gloss('high-risk AI system covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_72').
:- pred existing_post_market_monitoring_under_sector_law/1, gloss('post-market monitoring system and plan already established under sector legislation'), source('celex:32024R1689/oj#art_72').
:- pred permitted_integration_into_existing_system/2, gloss('provider may integrate necessary elements into existing sector-law systems if equivalent protection achieved'), source('celex:32024R1689/oj#art_72').
:- pred financial_institution_subject_to_governance_requirements/1, gloss('financial institution subject to Union financial services law internal governance requirements'), source('celex:32024R1689/oj#art_72').
:- pred referred_to_in_annex_3_point_5/1, gloss('high-risk AI system referred to in Annex III point 5'), source('celex:32024R1689/oj#art_72').

must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    proportionate_to_nature_and_risks(S, _System).

must_collect_performance_data(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    \+ exempt_sensitive_operational_data(System, S).

exempt_sensitive_operational_data(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(_Data).

must_analyze_interaction_with_other_ai_systems(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    interaction_relevant(S).

must_base_system_on_plan(System, Plan) :-
    post_market_monitoring_system(System),
    post_market_monitoring_plan(Plan).

part_of_technical_documentation(Plan, S) :-
    post_market_monitoring_plan(Plan),
    high_risk_ai_system(S).

permitted_integration_into_existing_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    existing_post_market_monitoring_under_sector_law(S),
    equivalent_level_of_protection(S).

permitted_integration_into_existing_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    referred_to_in_annex_3_point_5(S),
    financial_institution_subject_to_governance_requirements(P),
    equivalent_level_of_protection(S).

provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect_performance_data/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data/2, 'celex:32024R1689/oj#art_72').
provenance(must_analyze_interaction_with_other_ai_systems/2, 'celex:32024R1689/oj#art_72').
provenance(must_base_system_on_plan/2, 'celex:32024R1689/oj#art_72').
provenance(part_of_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration_into_existing_system/2, 'celex:32024R1689/oj#art_72').

references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
