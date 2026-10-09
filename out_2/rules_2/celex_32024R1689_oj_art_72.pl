% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6ee958a83fe06daeb82f7f95de29dcf1f46160cd1f830bfac9129c8c77c3fb92
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
:- pred must_establish/2, gloss('provider must establish a post-market monitoring system for a high‑risk AI system'), source('celex:32024R1689/oj#art_72').
:- pred must_document/2, gloss('provider must document a post-market monitoring system for a high‑risk AI system'), source('celex:32024R1689/oj#art_72').
:- pred must_collect/2, gloss('provider must collect relevant data via the post-market monitoring system'), source('celex:32024R1689/oj#art_72').
:- pred must_analyse/2, gloss('provider must analyse relevant data via the post-market monitoring system'), source('celex:32024R1689/oj#art_72').
:- pred prohibited_sensitive_operational_data/1, gloss('provider must not cover sensitive operational data of law‑enforcement deployers'), source('celex:32024R1689/oj#art_72').
:- pred must_establish/2, gloss('provider must establish a post‑market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred must_include_in_technical_documentation/2, gloss('provider must include the post‑market monitoring plan in the technical documentation'), source('celex:32024R1689/oj#art_72').
:- pred permitted_integration_of_post_market_monitoring_elements/1, gloss('provider may integrate post‑market monitoring elements into existing systems/plans'), source('celex:32024R1689/oj#art_72').

must_establish(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

must_document(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

must_collect(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

must_analyse(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

prohibited_sensitive_operational_data(Provider) :-
    provider(Provider),
    deployer(Deployer),
    law_enforcement_authority(Deployer).

must_establish(Provider, post_market_monitoring_plan) :-
    provider(Provider),
    high_risk_ai_system(_S).

must_include_in_technical_documentation(Provider, post_market_monitoring_plan) :-
    provider(Provider),
    high_risk_ai_system(_S).

must_adopt(commission, implementing_act_template(deadline(date(2026,2,2)))).

permitted_integration_of_post_market_monitoring_elements(Provider) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).

provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect/2, 'celex:32024R1689/oj#art_72').
provenance(must_analyse/2, 'celex:32024R1689/oj#art_72').
provenance(prohibited_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(must_include_in_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration_of_post_market_monitoring_elements/1, 'celex:32024R1689/oj#art_72').

references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').
