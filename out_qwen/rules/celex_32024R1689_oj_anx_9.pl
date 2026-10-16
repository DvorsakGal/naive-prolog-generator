% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 50fb6988ab19c674bf5a1e3e905327ecf2bd5e289579d34cdcb86224a9129118
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred required_registration_information/1, gloss('information item required for registration of testing in real world conditions'), source('celex:32024R1689/oj#anx_9').
:- pred must_provide_registration_information(Actor, Info), gloss('actor must provide specific information for registration of testing in real world conditions'), source('celex:32024R1689/oj#anx_9').
:- pred must_keep_up_to_date_registration_information(Actor, Info), gloss('actor must keep registration information up to date'), source('celex:32024R1689/oj#anx_9').

required_registration_information(unique_identification_number).
required_registration_information(provider_and_deployer_details).
required_registration_information(ai_system_description).
required_registration_information(testing_plan_summary).
required_registration_information(suspension_or_termination_info).

must_provide_registration_information(Actor, Info) :-
    operator(Actor),
    testing_in_real_world_conditions(_T),
    required_registration_information(Info).

must_keep_up_to_date_registration_information(Actor, Info) :-
    operator(Actor),
    testing_in_real_world_conditions(_T),
    required_registration_information(Info).

provenance(required_registration_information/1, 'celex:32024R1689/oj#anx_9').
provenance(must_provide_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date_registration_information/2, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
