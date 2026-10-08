% unit       : celex:32024R1689/oj#art_72
% title      : Post-market monitoring by providers and post-market monitoring plan for high-risk AI systems
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 1 Post-market monitoring
% slice sha  : 77632a86030d304329b178c109de0f67f54bead78756ca6c8546f023f0f62acd
% model      : gpt-oss:120b-cloud
% prompt sha : 4ebe19ebf69c079bd809d2421ef2ce9589e192d1bfcdc97aad3328bfb1fb7f4f
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_post_market_monitoring_system/2, gloss('provider must establish and document a post‑market monitoring system'), source('celex:32024R1689/oj#art_72').
:- pred proportionate_to_nature_and_risk/1, gloss('system is proportionate to the nature of the AI technologies and the risks of the high‑risk AI system'), source('celex:32024R1689/oj#art_72').
:- pred required_data_collection/2, gloss('provider must collect, document and analyse relevant data on the performance of high‑risk AI systems'), source('celex:32024R1689/oj#art_72').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('celex:32024R1689/oj#art_72').
:- pred collects_and_analyzes_relevant_data/2, gloss('post‑market monitoring system collects and analyses relevant data for a given AI system'), source('celex:32024R1689/oj#art_72').
:- pred exempt_sensitive_operational_data/2, gloss('obligation does not cover sensitive operational data of deployers that are law‑enforcement authorities'), source('celex:32024R1689/oj#art_72').
:- pred required_based_on_plan/2, gloss('post‑market monitoring system must be based on a post‑market monitoring plan'), source('celex:32024R1689/oj#art_72').
:- pred post_market_monitoring_plan/1, gloss('plan for post‑market monitoring'), source('celex:32024R1689/oj#art_72').
:- pred based_on/2, gloss('system is based on a given plan'), source('celex:32024R1689/oj#art_72').
:- pred part_of/2, gloss('plan is part of technical documentation'), source('celex:32024R1689/oj#art_72').
:- pred technical_documentation/1, gloss('technical documentation referred to in the Regulation'), source('celex:32024R1689/oj#art_72').
:- pred required_integration_option/2, gloss('provider may integrate existing monitoring elements using the template, provided equivalent protection'), source('celex:32024R1689/oj#art_72').
:- pred existing_harmonised_legislation/1, gloss('high‑risk AI system already covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_72').
:- pred integrates_elements_using_template/2, gloss('provider integrates necessary elements using the post‑market monitoring plan template'), source('celex:32024R1689/oj#art_72').

required_post_market_monitoring_system(P, S) :-
    provider(P),
    post_market_monitoring_system(S),
    proportionate_to_nature_and_risk(S).

provenance(required_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').

required_data_collection(P, S) :-
    provider(P),
    post_market_monitoring_system(S),
    high_risk_ai_system(AI),
    collects_and_analyzes_relevant_data(S, AI),
    \+ exempt_sensitive_operational_data(P, _).

provenance(required_data_collection/2, 'celex:32024R1689/oj#art_72').

exempt_sensitive_operational_data(P, D) :-
    provider(P),
    sensitive_operational_data(D),
    deployer(Deployer),
    law_enforcement_authority(Deployer).

provenance(exempt_sensitive_operational_data/2, 'celex:32024R1689/oj#art_72').

required_based_on_plan(S, P) :-
    post_market_monitoring_system(S),
    post_market_monitoring_plan(P),
    based_on(S, P),
    part_of(P, T),
    technical_documentation(T).

provenance(required_based_on_plan/2, 'celex:32024R1689/oj#art_72').

required_integration_option(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    existing_harmonised_legislation(S),
    integrates_elements_using_template(P, S).

provenance(required_integration_option/2, 'celex:32024R1689/oj#art_72').

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
