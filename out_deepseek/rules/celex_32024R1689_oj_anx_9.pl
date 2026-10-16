% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5254aeed4bd5101979310441d2e9795f5f4ee519cd904c83c70f6f38d36e8a24
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred must_provide_information/2, gloss('entity must provide specified information for registration'), source('celex:32024R1689/oj#anx_9').
:- pred must_keep_up_to_date/2, gloss('entity must keep specified information up to date'), source('celex:32024R1689/oj#anx_9').
:- pred testing_in_real_world_conditions_registration/1, gloss('information required for registration of testing in real world conditions'), source('celex:32024R1689/oj#anx_9').

must_provide_information(Provider, testing_in_real_world_conditions_registration(Info)) :-
    ( provider(Provider) ; prospective_provider(Provider) ),
    testing_in_real_world_conditions(Testing),
    involves_system(Testing, System),
    high_risk_ai_system_listed_in_annex_3(System),
    registration_info(Info, Testing, System).

must_keep_up_to_date(Provider, testing_in_real_world_conditions_registration(Info)) :-
    must_provide_information(Provider, testing_in_real_world_conditions_registration(Info)).

registration_info(info(Id, ProviderDetails, SystemDescription, PlanSummary, StatusInfo), Testing, System) :-
    union_wide_unique_single_identification_number(Id, Testing),
    provider_and_deployer_details(ProviderDetails, Testing),
    system_description(SystemDescription, System),
    plan_summary(PlanSummary, Testing),
    status_information(StatusInfo, Testing).

union_wide_unique_single_identification_number(Id, Testing) :-
    testing_in_real_world_conditions(Testing),
    identification_number(Id, Testing).

provider_and_deployer_details(details(ProviderName, ProviderContact, Deployers), Testing) :-
    testing_in_real_world_conditions(Testing),
    involved_provider(ProviderName, ProviderContact, Testing),
    involved_deployers(Deployers, Testing).

system_description(description(Purpose, IdentificationInfo), System) :-
    ai_system(System),
    intended_purpose(Purpose),
    identification_information(IdentificationInfo, System).

plan_summary(Summary, Testing) :-
    testing_in_real_world_conditions(Testing),
    real_world_testing_plan(Plan),
    main_characteristics(Summary, Plan).

status_information(Status, Testing) :-
    testing_in_real_world_conditions(Testing),
    suspension_or_termination(Status, Testing).

% Supporting predicates
:- pred prospective_provider/1, gloss('entity intending to become a provider'), source('celex:32024R1689/oj#anx_9').
:- pred involves_system/2, gloss('testing involves a specific AI system'), source('celex:32024R1689/oj#anx_9').
:- pred high_risk_ai_system_listed_in_annex_3/1, gloss('high-risk AI system listed in Annex III'), source('celex:32024R1689/oj#anx_9').
:- pred identification_number/2, gloss('unique identification number for testing'), source('celex:32024R1689/oj#anx_9').
:- pred involved_provider/3, gloss('provider involved in testing'), source('celex:32024R1689/oj#anx_9').
:- pred involved_deployers/2, gloss('deployers involved in testing'), source('celex:32024R1689/oj#anx_9').
:- pred identification_information/2, gloss('information necessary for system identification'), source('celex:32024R1689/oj#anx_9').
:- pred main_characteristics/2, gloss('summary of main characteristics of a plan'), source('celex:32024R1689/oj#anx_9').
:- pred suspension_or_termination/2, gloss('information on suspension or termination of testing'), source('celex:32024R1689/oj#anx_9').

% Provenance
provenance(must_provide_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(testing_in_real_world_conditions_registration/1, 'celex:32024R1689/oj#anx_9').
provenance(prospective_provider/1, 'celex:32024R1689/oj#anx_9').
provenance(involves_system/2, 'celex:32024R1689/oj#anx_9').
provenance(high_risk_ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#anx_9').
provenance(identification_number/2, 'celex:32024R1689/oj#anx_9').
provenance(involved_provider/3, 'celex:32024R1689/oj#anx_9').
provenance(involved_deployers/2, 'celex:32024R1689/oj#anx_9').
provenance(identification_information/2, 'celex:32024R1689/oj#anx_9').
provenance(main_characteristics/2, 'celex:32024R1689/oj#anx_9').
provenance(suspension_or_termination/2, 'celex:32024R1689/oj#anx_9').

% References
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
