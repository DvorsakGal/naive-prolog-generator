% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 6f459857af7b6c764992ed86c581619afb574108e16a37e469f41070fd49be26
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred required_registration_information/2, gloss('Information required to be provided and kept up to date for real-world testing registration'), source('celex:32024R1689/oj#anx_9').
:- pred annex_3_high_risk_ai_system/1, gloss('AI system listed as high-risk under Annex III'), source('celex:32024R1689/oj#anx_9').

provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(annex_3_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% 1. A Union-wide unique single identification number of the testing in real world conditions
required_registration_information(Testing, union_wide_unique_single_identification_number) :-
    testing_in_real_world_conditions(Testing).

% 2. The name and contact details of the provider or prospective provider and of the deployers involved in the testing in real world conditions
required_registration_information(Testing, contact_details(provider_or_prospective_provider)) :-
    testing_in_real_world_conditions(Testing).

required_registration_information(Testing, contact_details(involved_deployers)) :-
    testing_in_real_world_conditions(Testing).

% 3. A brief description of the AI system, its intended purpose, and other information necessary for the identification of the system
required_registration_information(Testing, description_and_identification(System)) :-
    testing_in_real_world_conditions(Testing),
    ai_system(System).

% 4. A summary of the main characteristics of the plan for testing in real world conditions
required_registration_information(Testing, summary_of_plan(Plan)) :-
    testing_in_real_world_conditions(Testing),
    real_world_testing_plan(Plan).

% 5. Information on the suspension or termination of the testing in real world conditions
required_registration_information(Testing, suspension_or_termination_info) :-
    testing_in_real_world_conditions(Testing).
