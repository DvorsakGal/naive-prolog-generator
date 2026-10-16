% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cfe69e5e77e9942017fdd77057bc384c5f3e8f7b3597e38d47c08946308f2822
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred must_establish_post_market_monitoring_system/2, gloss('provider shall establish and document a post-market monitoring system'), source('celex:32024R1689/oj#art_72/par_1').
:- pred must_collect_and_analyse_post_market_data/2, gloss('post-market monitoring system shall collect, document and analyse relevant data on performance'), source('celex:32024R1689/oj#art_72/par_2').
:- pred post_market_monitoring_exempt_sensitive_operational_data/1, gloss('post-market monitoring obligation does not cover sensitive operational data of law enforcement deployers'), source('celex:32024R1689/oj#art_72/par_2').
:- pred must_base_on_post_market_monitoring_plan/1, gloss('post-market monitoring system shall be based on a post-market monitoring plan'), source('celex:32024R1689/oj#art_72/par_3').
:- pred post_market_monitoring_plan_part_of_technical_documentation/1, gloss('post-market monitoring plan shall be part of technical documentation'), source('celex:32024R1689/oj#art_72/par_3').
:- pred may_integrate_existing_post_market_monitoring/2, gloss('provider may integrate elements into existing post-market monitoring system under harmonisation legislation'), source('celex:32024R1689/oj#art_72/par_4').
:- pred equivalent_protection_required/1, gloss('integration must achieve equivalent level of protection'), source('celex:32024R1689/oj#art_72/par_4').
:- pred may_integrate_existing_post_market_monitoring_financial_institution/2, gloss('integration option applies to high-risk AI systems placed by financial institutions'), source('celex:32024R1689/oj#art_72/par_4/unp_1').

must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_collect_and_analyse_post_market_data(P, S) :-
    post_market_monitoring_system(M),
    high_risk_ai_system(S),
    provider_of_monitoring_system(P, M),
    performance_of_ai_system(S),
    \+ exempt_from_data_collection(S).

post_market_monitoring_exempt_sensitive_operational_data(S) :-
    high_risk_ai_system(S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(Data),
    provided_by(Data, D).

must_base_on_post_market_monitoring_plan(M) :-
    post_market_monitoring_system(M).

post_market_monitoring_plan_part_of_technical_documentation(Plan) :-
    post_market_monitoring_plan(Plan).

may_integrate_existing_post_market_monitoring(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    existing_post_market_monitoring_system(S),
    equivalent_protection_required(S).

equivalent_protection_required(S) :-
    may_integrate_existing_post_market_monitoring(_P, S).

may_integrate_existing_post_market_monitoring_financial_institution(P, S) :-
    high_risk_ai_system(S),
    referred_in_annex_3_point_5(S),
    (placing_on_market(P, S); putting_into_service(P, S)),
    financial_institution(P),
    subject_to_financial_services_requirements(P).

% Helper predicates for this provision
:- pred provider_of_monitoring_system/2, gloss('provider that established the monitoring system'), source('celex:32024R1689/oj#art_72/par_2').
:- pred provided_by/2, gloss('data provided by an entity'), source('celex:32024R1689/oj#art_72/par_2').
:- pred union_harmonisation_legislation_applies/1, gloss('AI system covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_72/par_4').
:- pred existing_post_market_monitoring_system/1, gloss('post-market monitoring system already established under harmonisation legislation'), source('celex:32024R1689/oj#art_72/par_4').
:- pred referred_in_annex_3_point_5/1, gloss('high-risk AI system referred to in Annex III point 5'), source('celex:32024R1689/oj#art_72/par_4/unp_1').
:- pred financial_institution/1, gloss('institution subject to Union financial services law'), source('celex:32024R1689/oj#art_72/par_4/unp_1').
:- pred subject_to_financial_services_requirements/1, gloss('subject to requirements under Union financial services law regarding internal governance'), source('celex:32024R1689/oj#art_72/par_4/unp_1').

% Provenance
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect_and_analyse_post_market_data/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(must_base_on_post_market_monitoring_plan/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_part_of_technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_existing_post_market_monitoring/2, 'celex:32024R1689/oj#art_72').
provenance(equivalent_protection_required/1, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_existing_post_market_monitoring_financial_institution/2, 'celex:32024R1689/oj#art_72').
provenance(provider_of_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(provided_by/2, 'celex:32024R1689/oj#art_72').
provenance(union_harmonisation_legislation_applies/1, 'celex:32024R1689/oj#art_72').
provenance(existing_post_market_monitoring_system/1, 'celex:32024R1689/oj#art_72').
provenance(referred_in_annex_3_point_5/1, 'celex:32024R1689/oj#art_72').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_72').
provenance(subject_to_financial_services_requirements/1, 'celex:32024R1689/oj#art_72').

% References
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
