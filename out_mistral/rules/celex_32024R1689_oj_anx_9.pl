% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b0f68616c87ff4accc858c0cbffad000db10b28052cdbb30e12e60ba1406af4d
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred must_submit_registration_information/2, gloss('provider or prospective provider must submit and keep up to date the specified information for real-world testing registration'), source('celex:32024R1689/oj#anx_9').
:- pred registration_information_item/1, gloss('an item of information required for registration of real-world testing'), source('celex:32024R1689/oj#anx_9').
:- pred high_risk_ai_system_listed_in_annex_3/1, gloss('high-risk AI system listed in Annex III'), source('celex:32024R1689/oj#anx_9').
:- pred testing_in_real_world_conditions_registration/1, gloss('registration of testing in real world conditions under Article 60'), source('celex:32024R1689/oj#anx_9').

must_submit_registration_information(Provider, Testing) :-
    provider(Provider),
    high_risk_ai_system_listed_in_annex_3(System),
    testing_in_real_world_conditions(Testing),
    involves_system(Testing, System),
    testing_in_real_world_conditions_registration(Testing).

must_submit_registration_information(ProspectiveProvider, Testing) :-
    prospective_provider(ProspectiveProvider),
    high_risk_ai_system_listed_in_annex_3(System),
    testing_in_real_world_conditions(Testing),
    involves_system(Testing, System),
    testing_in_real_world_conditions_registration(Testing).

registration_information_item(unique_identification_number(Testing)) :-
    testing_in_real_world_conditions_registration(Testing).

registration_information_item(name_and_contact_details(Provider)) :-
    provider(Provider),
    testing_in_real_world_conditions_registration(Testing),
    involves_provider(Testing, Provider).

registration_information_item(name_and_contact_details(Deployer)) :-
    deployer(Deployer),
    testing_in_real_world_conditions_registration(Testing),
    involves_deployer(Testing, Deployer).

registration_information_item(brief_description(System)) :-
    ai_system(System),
    intended_purpose(System),
    testing_in_real_world_conditions_registration(Testing),
    involves_system(Testing, System).

registration_information_item(summary_of_main_characteristics(Plan)) :-
    real_world_testing_plan(Plan),
    testing_in_real_world_conditions_registration(Testing),
    has_plan(Testing, Plan).

registration_information_item(suspension_or_termination_info(Testing)) :-
    testing_in_real_world_conditions_registration(Testing).

high_risk_ai_system_listed_in_annex_3(S) :-
    ai_system(S).

testing_in_real_world_conditions_registration(T) :-
    testing_in_real_world_conditions(T).

:- pred prospective_provider/1, gloss('entity that intends to become a provider'), source('celex:32024R1689/oj#anx_9').
:- pred involves_system/2, gloss('testing involves an AI system'), source('celex:32024R1689/oj#anx_9').
:- pred involves_provider/2, gloss('testing involves a provider'), source('celex:32024R1689/oj#anx_9').
:- pred involves_deployer/2, gloss('testing involves a deployer'), source('celex:32024R1689/oj#anx_9').
:- pred has_plan/2, gloss('testing has a real-world testing plan'), source('celex:32024R1689/oj#anx_9').

provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(registration_information_item/1, 'celex:32024R1689/oj#anx_9').
provenance(high_risk_ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#anx_9').
provenance(testing_in_real_world_conditions_registration/1, 'celex:32024R1689/oj#anx_9').
provenance(prospective_provider/1, 'celex:32024R1689/oj#anx_9').
provenance(involves_system/2, 'celex:32024R1689/oj#anx_9').
provenance(involves_provider/2, 'celex:32024R1689/oj#anx_9').
provenance(involves_deployer/2, 'celex:32024R1689/oj#anx_9').
provenance(has_plan/2, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
