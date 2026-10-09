% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 30cd3438b1e139512dbcc5a6d412501350ed110b39c1e5aa752c6c0181f64135
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred involved_in_testing/2, gloss('actor involved in testing in real world conditions'), source('derived').

must_provide(Actor, identification_number(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).

must_maintain(Actor, identification_number(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).

must_provide(Actor, contact_details(Actor)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).

must_maintain(Actor, contact_details(Actor)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).

must_provide(Actor, ai_system_description(System)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).

must_maintain(Actor, ai_system_description(System)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).

must_provide(Actor, testing_plan_summary(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).

must_maintain(Actor, testing_plan_summary(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).

must_provide(Actor, testing_suspension_info(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).

must_maintain(Actor, testing_suspension_info(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).

provenance(must_provide/2, 'celex:32024R1689/oj#anx_9').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
