% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 3d010a8a7c8f06123e85a13bb2c6e15c152a4c9d3bb98a8f0f327bc7a023b1f5
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred must_provide_registration_information/2, gloss('who must provide what information upon registration of real-world testing'), source('celex:32024R1689/oj#anx_9').
:- pred registration_information_kept_up_to_date/2, gloss('who must keep registration information up to date'), source('celex:32024R1689/oj#anx_9').
:- pred registration_information_item/1, gloss('an item of information required for registration of real-world testing'), source('celex:32024R1689/oj#anx_9').

registration_information_item(union_wide_unique_single_identification_number).
registration_information_item(name_and_contact_details).
registration_information_item(brief_description_of_ai_system).
registration_information_item(summary_of_main_characteristics_of_plan).
registration_information_item(information_on_suspension_or_termination).

must_provide_registration_information(Provider, union_wide_unique_single_identification_number) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

must_provide_registration_information(Provider, name_and_contact_details) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

must_provide_registration_information(Provider, brief_description_of_ai_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

must_provide_registration_information(Provider, summary_of_main_characteristics_of_plan) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

must_provide_registration_information(Provider, information_on_suspension_or_termination) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

must_provide_registration_information(Deployer, name_and_contact_details) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

registration_information_kept_up_to_date(Provider, union_wide_unique_single_identification_number) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

registration_information_kept_up_to_date(Provider, name_and_contact_details) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

registration_information_kept_up_to_date(Provider, brief_description_of_ai_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

registration_information_kept_up_to_date(Provider, summary_of_main_characteristics_of_plan) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

registration_information_kept_up_to_date(Provider, information_on_suspension_or_termination) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

registration_information_kept_up_to_date(Deployer, name_and_contact_details) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).

provenance(must_provide_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(registration_information_kept_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(registration_information_item/1, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
