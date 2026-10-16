% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 010388468f2553347b1425636d407dcaa192740670a81e6a55cc6a3b24681e1b
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred required_registration_information/2, gloss('Information required to be submitted and kept up to date for real-world testing registration'), source('celex:32024R1689/oj#anx_9').

% 1. A Union-wide unique single identification number of the testing in real world conditions
required_registration_information(Testing, identification_number(Testing)) :-
    testing_in_real_world_conditions(Testing).

% 2. The name and contact details of the provider or prospective provider and of the deployers involved in the testing in real world conditions
required_registration_information(Testing, contact_details(Party)) :-
    testing_in_real_world_conditions(Testing),
    (   provider(Party)
    ;   deployer(Party)
    ).

% 3. A brief description of the AI system, its intended purpose, and other information necessary for the identification of the system
required_registration_information(Testing, system_description(System)) :-
    testing_in_real_world_conditions(Testing),
    ai_system(System).

required_registration_information(Testing, intended_purpose(System)) :-
    testing_in_real_world_conditions(Testing),
    ai_system(System).

% 4. A summary of the main characteristics of the plan for testing in real world conditions
required_registration_information(Testing, summary_characteristics(Plan)) :-
    testing_in_real_world_conditions(Testing),
    real_world_testing_plan(Plan).

% 5. Information on the suspension or termination of the testing in real world conditions
required_registration_information(Testing, status(suspension_or_termination)) :-
    testing_in_real_world_conditions(Testing).

provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
