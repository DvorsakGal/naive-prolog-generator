% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : c7dc65884e2d5d9e008f3519f6cdb8991c0024a9be92c604dc8ce0c70303ea57
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred must_establish_post_market_monitoring_system/2, gloss('provider must establish and document post-market monitoring system'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_system_established/2, gloss('post-market monitoring system established by provider for high-risk AI system'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_nature_and_risks/2, gloss('post-market monitoring system proportionate to nature of AI technologies and risks'), source('celex:32024R1689/oj#art_72').
:- pred collects_performance_data/2, gloss('post-market monitoring system actively and systematically collects relevant data on performance'), source('celex:32024R1689/oj#art_72').
:- pred allows_continuous_compliance_evaluation/2, gloss('post-market monitoring system allows provider to evaluate continuous compliance with Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_72').
:- pred includes_interaction_analysis/2, gloss('post-market monitoring includes analysis of interaction with other AI systems where relevant'), source('celex:32024R1689/oj#art_72').
:- pred exempt_sensitive_operational_data_law_enforcement/2, gloss('obligation does not cover sensitive operational data of law enforcement deployers'), source('celex:32024R1689/oj#art_72').
:- pred based_on_post_market_monitoring_plan/2, gloss('post-market monitoring system based on post-market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred part_of_technical_documentation/2, gloss('post-market monitoring plan is part of technical documentation'), source('celex:32024R1689/oj#art_72').
:- pred commission_adopts_implementing_act_template/1, gloss('Commission shall adopt implementing act establishing template for post-market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred integration_choice_for_existing_systems/2, gloss('provider may integrate elements into existing post-market monitoring systems under Union harmonisation legislation'), source('celex:32024R1689/oj#art_72').
:- pred achieves_equivalent_level_of_protection/2, gloss('integration achieves equivalent level of protection'), source('celex:32024R1689/oj#art_72').
:- pred financial_institution_subject_to_internal_governance_requirements/1, gloss('financial institution subject to Union financial services law internal governance requirements'), source('celex:32024R1689/oj#art_72').

must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

post_market_monitoring_system_established(P, S) :-
    must_establish_post_market_monitoring_system(P, S),
    proportionate_to_nature_and_risks(P, S).

proportionate_to_nature_and_risks(_P, S) :-
    high_risk_ai_system(S).

collects_performance_data(P, S) :-
    post_market_monitoring_system_established(P, S),
    high_risk_ai_system(S).

allows_continuous_compliance_evaluation(P, S) :-
    post_market_monitoring_system_established(P, S),
    requirements_in_chapter_3_section_2(S).

includes_interaction_analysis(P, S) :-
    post_market_monitoring_system_established(P, S),
    relevant_interaction_with_other_systems(S).

relevant_interaction_with_other_systems(_S).

exempt_sensitive_operational_data_law_enforcement(P, S) :-
    post_market_monitoring_system_established(P, S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data_law_enforcement(D).

based_on_post_market_monitoring_plan(P, S) :-
    post_market_monitoring_system_established(P, S).

part_of_technical_documentation(P, S) :-
    based_on_post_market_monitoring_plan(P, S),
    technical_documentation(S).

commission_adopts_implementing_act_template(commission) :-
    ai_office(commission).

integration_choice_for_existing_systems(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    existing_post_market_monitoring_system_under_legislation(S),
    achieves_equivalent_level_of_protection(P, S).

achieves_equivalent_level_of_protection(_P, _S).

integration_choice_for_existing_systems(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    financial_institution_subject_to_internal_governance_requirements(P),
    existing_post_market_monitoring_system_under_legislation(S),
    achieves_equivalent_level_of_protection(P, S).

existing_post_market_monitoring_system_under_legislation(_S).

financial_institution_subject_to_internal_governance_requirements(P) :-
    provider(P).

provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_established/2, 'celex:32024R1689/oj#art_72').
provenance(proportionate_to_nature_and_risks/2, 'celex:32024R1689/oj#art_72').
provenance(collects_performance_data/2, 'celex:32024R1689/oj#art_72').
provenance(allows_continuous_compliance_evaluation/2, 'celex:32024R1689/oj#art_72').
provenance(includes_interaction_analysis/2, 'celex:32024R1689/oj#art_72').
provenance(relevant_interaction_with_other_systems/1, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data_law_enforcement/2, 'celex:32024R1689/oj#art_72').
provenance(based_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72').
provenance(part_of_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(commission_adopts_implementing_act_template/1, 'celex:32024R1689/oj#art_72').
provenance(integration_choice_for_existing_systems/2, 'celex:32024R1689/oj#art_72').
provenance(achieves_equivalent_level_of_protection/2, 'celex:32024R1689/oj#art_72').
provenance(existing_post_market_monitoring_system_under_legislation/1, 'celex:32024R1689/oj#art_72').
provenance(financial_institution_subject_to_internal_governance_requirements/1, 'celex:32024R1689/oj#art_72').

references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
