% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : b5159d4b31f57c8fc4bc1640de9bb60392165e3ec53571bd66cfda2011ae8c42
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred required_registration_information_for_real_world_testing/1, gloss('information item required for registration of testing in real world conditions under Annex IX'), source('celex:32024R1689/oj#anx_9').
:- pred must_provide_and_update_registration_information/2, gloss('obligation to provide and keep up to date information for testing in real world conditions registration'), source('celex:32024R1689/oj#anx_9').

required_registration_information_for_real_world_testing(unique_identification_number).
required_registration_information_for_real_world_testing(provider_and_deployer_contact_details).
required_registration_information_for_real_world_testing(ai_system_description_and_purpose).
required_registration_information_for_real_world_testing(testing_plan_summary).
required_registration_information_for_real_world_testing(suspension_or_termination_information).

must_provide_and_update_registration_information(Provider, Testing) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    high_risk_ai_system_annex_iii(S),
    intended_purpose_of_testing(Testing, S).

provenance(required_registration_information_for_real_world_testing/1, 'celex:32024R1689/oj#anx_9').
provenance(must_provide_and_update_registration_information/2, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
