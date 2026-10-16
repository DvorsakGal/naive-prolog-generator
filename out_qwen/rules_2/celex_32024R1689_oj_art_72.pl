% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 68b8abd4025a5b7a114e03676af5b3bc769b902887923052e9989d7c5305eeb3
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred must_establish_post_market_monitoring_system/2, gloss('provider must establish and document a post-market monitoring system proportionate to risks'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_system_covers_performance_data/1, gloss('system collects and analyses data on performance throughout lifetime'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan_required/1, gloss('post-market monitoring system must be based on a plan included in technical documentation'), source('celex:32024R1689/oj#art_72').
:- pred exempt_sensitive_operational_data/1, gloss('obligation does not cover sensitive operational data of law enforcement deployers'), source('celex:32024R1689/oj#art_72').
:- pred permitted_integration_of_monitoring_elements/1, gloss('provider may integrate AI act monitoring elements into existing union harmonisation systems'), source('celex:32024R1689/oj#art_72').

must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    proportionate_to_nature_and_risks(S).

post_market_monitoring_system_covers_performance_data(S) :-
    high_risk_ai_system(S),
    \+ exempt_sensitive_operational_data(S).

exempt_sensitive_operational_data(S) :-
    high_risk_ai_system(S),
    deployer(D),
    law_enforcement_authority(D),
    involves_sensitive_operational_data(S, D).

post_market_monitoring_plan_required(S) :-
    high_risk_ai_system(S),
    part_of_technical_documentation(S).

permitted_integration_of_monitoring_elements(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    existing_monitoring_system_under_union_legislation(S),
    equivalent_level_of_protection(S).

permitted_integration_of_monitoring_elements(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    financial_institution(P),
    placing_on_market(P, S),
    subject_to_union_financial_services_governance(P).

provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_covers_performance_data/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_required/1, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration_of_monitoring_elements/1, 'celex:32024R1689/oj#art_72').

references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
