% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 678d04a5e7adefb7168f867d78a69af5c7207f8a823c1fe3f47e49b2ac1fe7c8
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred required_registration_information/2, gloss('information that must be submitted for registration of testing in real world conditions'), source('celex:32024R1689/oj#anx_9').
:- pred must_register_with_information/2, gloss('obligation to provide specific information for registration'), source('celex:32024R1689/oj#anx_9').
:- pred must_keep_up_to_date/2, gloss('obligation to maintain current information after registration'), source('celex:32024R1689/oj#anx_9').
:- pred union_wide_unique_single_identification_number/1, gloss('unique identifier for testing in real world conditions across the Union'), source('celex:32024R1689/oj#anx_9').
:- pred contact_details_of_provider_and_deployers/1, gloss('name and contact details of provider or prospective provider and deployers'), source('celex:32024R1689/oj#anx_9').
:- pred description_of_ai_system_for_identification/1, gloss('brief description, intended purpose, and identification information of the AI system'), source('celex:32024R1689/oj#anx_9').
:- pred summary_of_testing_plan_characteristics/1, gloss('summary of main characteristics of the plan for testing in real world conditions'), source('celex:32024R1689/oj#anx_9').
:- pred information_on_suspension_or_termination/1, gloss('information regarding suspension or termination of testing'), source('celex:32024R1689/oj#anx_9').

required_registration_information(T, union_wide_unique_single_identification_number(T)) :-
    testing_in_real_world_conditions(T).

required_registration_information(T, contact_details_of_provider_and_deployers(T)) :-
    testing_in_real_world_conditions(T).

required_registration_information(T, description_of_ai_system_for_identification(T)) :-
    testing_in_real_world_conditions(T).

required_registration_information(T, summary_of_testing_plan_characteristics(T)) :-
    testing_in_real_world_conditions(T).

required_registration_information(T, information_on_suspension_or_termination(T)) :-
    testing_in_real_world_conditions(T).

must_register_with_information(_Provider, T) :-
    testing_in_real_world_conditions(T).

must_keep_up_to_date(_Provider, Information) :-
    testing_in_real_world_conditions(T),
    required_registration_information(T, Information).

provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_register_with_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(union_wide_unique_single_identification_number/1, 'celex:32024R1689/oj#anx_9').
provenance(contact_details_of_provider_and_deployers/1, 'celex:32024R1689/oj#anx_9').
provenance(description_of_ai_system_for_identification/1, 'celex:32024R1689/oj#anx_9').
provenance(summary_of_testing_plan_characteristics/1, 'celex:32024R1689/oj#anx_9').
provenance(information_on_suspension_or_termination/1, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
