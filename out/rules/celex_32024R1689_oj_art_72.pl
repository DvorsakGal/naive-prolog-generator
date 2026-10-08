% unit       : celex:32024R1689/oj#art_72
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : gpt-oss:120b-cloud
% prompt sha : 7f7a22380a8b07fb462fb9ceef42abb5e95219c9bf4c54cdcfc42354f51bbdea
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_nature_and_risk/1, gloss('proportionate to the nature of the AI technologies and the risks'), source('celex:32024R1689/oj#art_72').
:- pred actively_and_systematically_collect_document_analyse_data/1, gloss('actively and systematically collect, document and analyse relevant data'), source('celex:32024R1689/oj#art_72').
:- pred exempt_sensitive_operational_data/2, gloss('exempt from collection the sensitive operational data of deployers that are law‑enforcement authorities'), source('celex:32024R1689/oj#art_72').
:- pred required_establish_and_document_post_market_monitoring_system/2, gloss('provider must establish and document a post‑market monitoring system'), source('celex:32024R1689/oj#art_72').
:- pred required_collect_document_analyse_data/2, gloss('provider must collect, document and analyse relevant data'), source('celex:32024R1689/oj#art_72').
:- pred required_based_on_post_market_monitoring_plan/2, gloss('post‑market monitoring system must be based on a post‑market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan/1, gloss('post‑market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred based_on_plan/2, gloss('system is based on a plan'), source('celex:32024R1689/oj#art_72').
:- pred permitted_integrate_existing_elements/2, gloss('provider may integrate existing elements into system and plan'), source('celex:32024R1689/oj#art_72').
:- pred covered_by_union_harmonisation_legislation/1, gloss('high‑risk AI system covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_72').
:- pred existing_post_market_monitoring_system/1, gloss('post‑market monitoring system already established under that legislation'), source('celex:32024R1689/oj#art_72').
:- pred equivalent_level_of_protection/1, gloss('achieves an equivalent level of protection'), source('celex:32024R1689/oj#art_72').

required_establish_and_document_post_market_monitoring_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    proportionate_to_nature_and_risk(System).

required_collect_document_analyse_data(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    actively_and_systematically_collect_document_analyse_data(System),
    \+ exempt_sensitive_operational_data(Provider, System).

exempt_sensitive_operational_data(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    deployer(Deployer),
    law_enforcement_authority(Deployer),
    sensitive_operational_data(Deployer).

required_based_on_post_market_monitoring_plan(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    post_market_monitoring_plan(Plan),
    based_on_plan(System, Plan).

permitted_integrate_existing_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_by_union_harmonisation_legislation(System),
    existing_post_market_monitoring_system(System),
    equivalent_level_of_protection(System).

provenance(required_establish_and_document_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(required_collect_document_analyse_data/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data/2, 'celex:32024R1689/oj#art_72').
provenance(required_based_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integrate_existing_elements/2, 'celex:32024R1689/oj#art_72').

references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
