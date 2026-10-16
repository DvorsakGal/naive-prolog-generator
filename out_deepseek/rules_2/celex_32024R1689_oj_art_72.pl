% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4f70558cecfe35035dfa7a70578c3ad1b5642e31041eeae71018e8802feab7a5
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred must_establish_post_market_monitoring_system/2, gloss('provider must establish and document a post-market monitoring system'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_system_applies/1, gloss('post-market monitoring system is established and documented'), source('celex:32024R1689/oj#art_72').
:- pred must_collect_and_analyse_data/2, gloss('post-market monitoring system must actively collect, document and analyse relevant data'), source('celex:32024R1689/oj#art_72').
:- pred sensitive_operational_data_of_law_enforcement/1, gloss('sensitive operational data of deployers which are law-enforcement authorities'), source('celex:32024R1689/oj#art_72').
:- pred must_base_on_post_market_monitoring_plan/2, gloss('post-market monitoring system must be based on a post-market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan_in_technical_documentation/1, gloss('post-market monitoring plan is part of the technical documentation'), source('celex:32024R1689/oj#art_72').
:- pred commission_must_adopt_implementing_act/1, gloss('Commission must adopt an implementing act for the post-market monitoring plan template'), source('celex:32024R1689/oj#art_72').
:- pred covered_by_union_harmonisation_legislation/1, gloss('high-risk AI system covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_72').
:- pred existing_post_market_monitoring_system/1, gloss('post-market monitoring system and plan already established under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_72').
:- pred may_integrate_elements/2, gloss('provider may integrate necessary elements into existing systems and plans'), source('celex:32024R1689/oj#art_72').
:- pred achieves_equivalent_level_of_protection/1, gloss('integration achieves an equivalent level of protection'), source('celex:32024R1689/oj#art_72').
:- pred financial_institution_subject_to_union_financial_services_law/1, gloss('financial institution subject to requirements under Union financial services law'), source('celex:32024R1689/oj#art_72').

% Paragraph 1
must_establish_post_market_monitoring_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

post_market_monitoring_system_applies(System) :-
    high_risk_ai_system(System).

% Paragraph 2
must_collect_and_analyse_data(System, Data) :-
    post_market_monitoring_system_applies(System),
    relevant_performance_data(Data, System),
    \+ sensitive_operational_data_of_law_enforcement(Data).

relevant_performance_data(Data, System) :-
    high_risk_ai_system(System),
    (   provided_by_deployer(Data)
    ;   collected_from_other_sources(Data)
    ),
    allows_evaluation_of_continuous_compliance(Data, System).

provided_by_deployer(Data) :-
    deployer(_).

collected_from_other_sources(_Data).

allows_evaluation_of_continuous_compliance(Data, System) :-
    high_risk_ai_system(System).

sensitive_operational_data_of_law_enforcement(Data) :-
    sensitive_operational_data(Data),
    deployer(Deployer),
    law_enforcement_authority(Deployer).

% Paragraph 3
must_base_on_post_market_monitoring_plan(System, Plan) :-
    post_market_monitoring_system_applies(System),
    post_market_monitoring_plan(Plan).

post_market_monitoring_plan_in_technical_documentation(Plan) :-
    post_market_monitoring_plan(Plan).

commission_must_adopt_implementing_act(template(post_market_monitoring_plan)).

% Paragraph 4
may_integrate_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_by_union_harmonisation_legislation(System),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).

may_integrate_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    annex_3_point_5_system(System),
    placing_on_market(System),
    financial_institution_subject_to_union_financial_services_law(Provider),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).

may_integrate_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    annex_3_point_5_system(System),
    putting_into_service(System),
    financial_institution_subject_to_union_financial_services_law(Provider),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).

% Provenance
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_applies/1, 'celex:32024R1689/oj#art_72').
provenance(must_collect_and_analyse_data/2, 'celex:32024R1689/oj#art_72').
provenance(sensitive_operational_data_of_law_enforcement/1, 'celex:32024R1689/oj#art_72').
provenance(must_base_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_in_technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(commission_must_adopt_implementing_act/1, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_elements/2, 'celex:32024R1689/oj#art_72').

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
