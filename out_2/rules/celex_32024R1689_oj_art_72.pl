% unit       : celex:32024R1689/oj#art_72
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 21d7bcb5339f2eb50a9da9458199517b64e1bdc8a2727443e0c339be5862ce89
% cached     : False
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
% Declarations for new predicates
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_72').
:- pred relevant_data/1, gloss('data relevant for post‑market monitoring'), source('celex:32024R1689/oj#art_72').
:- pred existing_system_and_plan/1, gloss('existing post‑market monitoring system and plan'), source('celex:32024R1689/oj#art_72').
:- pred equivalent_protection/1, gloss('equivalent level of protection'), source('celex:32024R1689/oj#art_72').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_72').

% Obligations for providers
must_establish(Provider, post_market_monitoring_system) :-
    provider(Provider),
    high_risk_ai_system(_).

must_document(Provider, post_market_monitoring_system) :-
    provider(Provider),
    high_risk_ai_system(_).

must_collect(Provider, Data) :-
    provider(Provider),
    high_risk_ai_system(_),
    relevant_data(Data),
    \+ prohibited_sensitive_operational_data(Data).

must_document(Provider, Data) :-
    provider(Provider),
    high_risk_ai_system(_),
    relevant_data(Data),
    \+ prohibited_sensitive_operational_data(Data).

must_analyse(Provider, Data) :-
    provider(Provider),
    high_risk_ai_system(_),
    relevant_data(Data),
    \+ prohibited_sensitive_operational_data(Data).

must_base_on(Provider, post_market_monitoring_plan) :-
    provider(Provider),
    high_risk_ai_system(_).

% Prohibition (exception to data collection)
prohibited_sensitive_operational_data(Data) :-
    sensitive_operational_data(Data),
    deployer(Deployer),
    law_enforcement_authority(Deployer).

% Commission obligation
must_adopt(Commission, implementing_act_template(deadline(date(2026,2,2)))) :-
    commission(Commission).

% Permission to integrate existing elements
permitted_integrate(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    existing_system_and_plan(System),
    equivalent_protection(System).

% Simple supporting facts (place‑holders)
high_risk_ai_system(_).
relevant_data(_).
existing_system_and_plan(_).
equivalent_protection(_).
commission(commission).

% Provenance
provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect/2, 'celex:32024R1689/oj#art_72').
provenance(must_analyse/2, 'celex:32024R1689/oj#art_72').
provenance(must_base_on/2, 'celex:32024R1689/oj#art_72').
provenance(prohibited_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integrate/2, 'celex:32024R1689/oj#art_72').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_72').
provenance(relevant_data/1, 'celex:32024R1689/oj#art_72').
provenance(existing_system_and_plan/1, 'celex:32024R1689/oj#art_72').
provenance(equivalent_protection/1, 'celex:32024R1689/oj#art_72').
provenance(commission/1, 'celex:32024R1689/oj#art_72').

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
