% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 587ab8bc745de4fe0536f37f33c846d4a73ed75b7fbb7e90195ac78a1810e63a
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred must_provide_testing_information/2, gloss('entity must provide specified information for registration of real-world testing'), source('celex:32024R1689/oj#anx_9').
:- pred must_keep_testing_information_up_to_date/2, gloss('entity must keep specified information up to date for registration of real-world testing'), source('celex:32024R1689/oj#anx_9').
:- pred testing_information/1, gloss('information required for registration of real-world testing'), source('celex:32024R1689/oj#anx_9').

testing_information(info(union_wide_unique_id(Id),
                          provider_details(Name, Contact),
                          deployer_details(Deployers),
                          system_description(Description, IntendedPurpose, IdentificationInfo),
                          plan_summary(Summary),
                          suspension_termination_info(Status))) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).

must_provide_testing_information(Provider, info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    testing_information(info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)).

must_keep_testing_information_up_to_date(Provider, info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    testing_information(info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)).

provenance(must_provide_testing_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_testing_information_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(testing_information/1, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
