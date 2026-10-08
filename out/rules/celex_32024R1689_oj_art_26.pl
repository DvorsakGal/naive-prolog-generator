% unit       : celex:32024R1689/oj#art_26
% title      : Obligations of deployers of high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : gpt-oss:120b-cloud
% prompt sha : 4a84a8ba0a8658d43b645c37003408cd8244bc6f8e996dea29c7c5efd58d788b
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_take_measures/2, gloss('deployer must take appropriate technical and organisational measures'), source('celex:32024R1689/oj#art_26').
:- pred must_ensure_use_in_accordance_with_instructions/2, gloss('deployer must ensure use in accordance with instructions for use'), source('celex:32024R1689/oj#art_26').
:- pred required_human_oversight_assignment/3, gloss('deployer must assign human oversight to competent natural persons'), source('celex:32024R1689/oj#art_26').
:- pred natural_person/1, gloss('natural person'), source('celex:32024R1689/oj#art_26').
:- pred input_data_control_applies/2, gloss('deployer exercises control over input data'), source('celex:32024R1689/oj#art_26').
:- pred required_input_data_representativeness/2, gloss('deployer must ensure input data is relevant and sufficiently representative'), source('celex:32024R1689/oj#art_26').
:- pred input_data_relevant_and_representative/1, gloss('input data is relevant and sufficiently representative'), source('celex:32024R1689/oj#art_26').
:- pred must_monitor_operation/2, gloss('deployer must monitor operation of the system'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_provider_if_risk/2, gloss('deployer must inform provider if risk is identified'), source('celex:32024R1689/oj#art_26').
:- pred must_suspend_use_if_risk/2, gloss('deployer must suspend use if risk is identified'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_authorities_of_serious_incident/2, gloss('deployer must inform authorities of a serious incident'), source('celex:32024R1689/oj#art_26').
:- pred must_keep_logs/2, gloss('deployer must keep logs for at least six months'), source('celex:32024R1689/oj#art_26').
:- pred employer/1, gloss('employer'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_workers/2, gloss('employer must inform workers and their representatives'), source('celex:32024R1689/oj#art_26').
:- pred public_authority/1, gloss('public authority, Union institution, body, office or agency'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_use_unregistered_system/2, gloss('public authority must not use an unregistered high‑risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_provider_unregistered/2, gloss('public authority must inform provider or distributor of unregistered system'), source('celex:32024R1689/oj#art_26').
:- pred required_data_protection_impact_assessment/2, gloss('deployer must carry out a data‑protection impact assessment'), source('celex:32024R1689/oj#art_26').
:- pred information_provided_under_art_13/1, gloss('information provided under article 13'), source('celex:32024R1689/oj#art_26').
:- pred required_authorisation_request/2, gloss('deployer must request authorisation for post‑remote biometric identification'), source('celex:32024R1689/oj#art_26').
:- pred authorisation_obtained/2, gloss('authorisation has been obtained'), source('celex:32024R1689/oj#art_26').
:- pred within_48_hours/2, gloss('authorisation request made within 48 hours'), source('celex:32024R1689/oj#art_26').
:- pred must_stop_use_if_authorisation_rejected/2, gloss('deployer must stop use if authorisation is rejected'), source('celex:32024R1689/oj#art_26').
:- pred authorisation_rejected/2, gloss('authorisation request was rejected'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_untargeted_law_enforcement_use/2, gloss('post‑remote biometric identification must not be used for untargeted law‑enforcement purposes'), source('celex:32024R1689/oj#art_26').
:- pred law_enforcement_use_untargeted/2, gloss('use is untargeted law‑enforcement'), source('celex:32024R1689/oj#art_26').
:- pred required_documentation/2, gloss('deployer must document each use'), source('celex:32024R1689/oj#art_26').
:- pred required_annual_report/2, gloss('deployer must submit annual reports'), source('celex:32024R1689/oj#art_26').
:- pred required_inform_natural_persons/2, gloss('deployer must inform natural persons that they are subject to the system'), source('celex:32024R1689/oj#art_26').
:- pred natural_person_affected/1, gloss('natural person affected by the system'), source('celex:32024R1689/oj#art_26').
:- pred must_cooperate_with_authorities/2, gloss('deployer must cooperate with competent authorities'), source('celex:32024R1689/oj#art_26').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred risk_of_system/1, gloss('risk associated with the system'), source('celex:32024R1689/oj#art_26').
:- pred registered_in_eu_database/1, gloss('system is registered in the EU database'), source('celex:32024R1689/oj#art_26').

must_take_measures(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_ensure_use_in_accordance_with_instructions(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    instructions_for_use(S).

required_human_oversight_assignment(Deployer, S, Person) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    natural_person(Person).

input_data_control_applies(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S).

required_input_data_representativeness(Deployer, S) :-
    input_data_control_applies(Deployer, S),
    input_data_relevant_and_representative(S).

must_monitor_operation(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_inform_provider_if_risk(Deployer, S) :-
    must_monitor_operation(Deployer, S),
    risk_of_system(S).

must_suspend_use_if_risk(Deployer, S) :-
    must_inform_provider_if_risk(Deployer, S).

must_inform_authorities_of_serious_incident(Deployer, S) :-
    serious_incident(S),
    deployer(Deployer).

must_keep_logs(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S).

must_inform_workers(Deployer, S) :-
    employer(Deployer),
    high_risk_ai_system(S).

prohibited_use_unregistered_system(Deployer, S) :-
    public_authority(Deployer),
    high_risk_ai_system(S),
    \+ registered_in_eu_database(S).

must_inform_provider_unregistered(Deployer, S) :-
    prohibited_use_unregistered_system(Deployer, S).

required_data_protection_impact_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    information_provided_under_art_13(S).

required_authorisation_request(Deployer, S) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(S),
    \+ authorisation_obtained(Deployer, S),
    within_48_hours(Deployer, S).

must_stop_use_if_authorisation_rejected(Deployer, S) :-
    required_authorisation_request(Deployer, S),
    authorisation_rejected(Deployer, S).

prohibited_untargeted_law_enforcement_use(Deployer, S) :-
    post_remote_biometric_identification_system(S),
    law_enforcement_use_untargeted(Deployer, S).

required_documentation(Deployer, S) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(S).

required_annual_report(Deployer, S) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(S).

required_inform_natural_persons(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    natural_person_affected(S).

must_cooperate_with_authorities(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S).

provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(required_human_oversight_assignment/3, 'celex:32024R1689/oj#art_26').
provenance(natural_person/1, 'celex:32024R1689/oj#art_26').
provenance(input_data_control_applies/2, 'celex:32024R1689/oj#art_26').
provenance(required_input_data_representativeness/2, 'celex:32024R1689/oj#art_26').
provenance(input_data_relevant_and_representative/1, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_if_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use_if_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_authorities_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(employer/1, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
provenance(public_authority/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_unregistered/2, 'celex:32024R1689/oj#art_26').
provenance(required_data_protection_impact_assessment/2, 'celex:32024R1689/oj#art_26').
provenance(information_provided_under_art_13/1, 'celex:32024R1689/oj#art_26').
provenance(required_authorisation_request/2, 'celex:32024R1689/oj#art_26').
provenance(authorisation_obtained/2, 'celex:32024R1689/oj#art_26').
provenance(within_48_hours/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_if_authorisation_rejected/2, 'celex:32024R1689/oj#art_26').
provenance(authorisation_rejected/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_law_enforcement_use/2, 'celex:32024R1689/oj#art_26').
provenance(law_enforcement_use_untargeted/2, 'celex:32024R1689/oj#art_26').
provenance(required_documentation/2, 'celex:32024R1689/oj#art_26').
provenance(required_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(required_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
provenance(natural_person_affected/1, 'celex:32024R1689/oj#art_26').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_26').
provenance(risk_of_system/1, 'celex:32024R1689/oj#art_26').
provenance(registered_in_eu_database/1, 'celex:32024R1689/oj#art_26').

references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_2').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_5/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').
