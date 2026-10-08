% unit       : celex:32024R1689/oj#anx_9
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : gpt-oss:120b-cloud
% prompt sha : dc6bf74e63b4ec20993d42595b70ea25fe6d1be8e0fb251037eaf8f099320d6c
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_unique_identification_number/1, gloss('unique identification number for testing in real world conditions'), source('celex:32024R1689/oj#anx_9').
:- pred required_provider_contact_details/1, gloss('name and contact details of the provider or prospective provider and of the deployers involved in the testing in real world conditions'), source('celex:32024R1689/oj#anx_9').
:- pred required_system_description/1, gloss('brief description of the AI system, its intended purpose and other information necessary for identification'), source('celex:32024R1689/oj#anx_9').
:- pred required_plan_summary/1, gloss('summary of the main characteristics of the plan for testing in real world conditions'), source('celex:32024R1689/oj#anx_9').
:- pred required_testing_termination_information/1, gloss('information on the suspension or termination of the testing in real world conditions'), source('celex:32024R1689/oj#anx_9').

required_unique_identification_number(T) :-
    testing_in_real_world_conditions(T).

required_provider_contact_details(T) :-
    testing_in_real_world_conditions(T).

required_system_description(T) :-
    testing_in_real_world_conditions(T).

required_plan_summary(T) :-
    testing_in_real_world_conditions(T).

required_testing_termination_information(T) :-
    testing_in_real_world_conditions(T).

provenance(required_unique_identification_number/1, 'celex:32024R1689/oj#anx_9').
provenance(required_provider_contact_details/1, 'celex:32024R1689/oj#anx_9').
provenance(required_system_description/1, 'celex:32024R1689/oj#anx_9').
provenance(required_plan_summary/1, 'celex:32024R1689/oj#anx_9').
provenance(required_testing_termination_information/1, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
