% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 185f216a9db42a14b60b0e76707ed82fe717e77c70cb1477f3b8d5e3902aa906
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred must_register_information/2, gloss('provider or deployer must submit and keep up to date specified information upon registration'), source('celex:32024R1689/oj#anx_9').

must_register_information(Provider, testing_in_real_world_conditions(S)) :-
    prospective_provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).

must_register_information(Provider, testing_in_real_world_conditions(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).

must_register_information(Deployer, testing_in_real_world_conditions(S)) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).

must_keep_up_to_date(Provider, testing_in_real_world_conditions(S)) :-
    prospective_provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).

must_keep_up_to_date(Provider, testing_in_real_world_conditions(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).

must_keep_up_to_date(Deployer, testing_in_real_world_conditions(S)) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).

provenance(must_register_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
