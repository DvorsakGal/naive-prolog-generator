% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : ffdb8df6cc40ecac00395bd7fa4192b052f1e80368ee7d7a517ee593250b971b
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred must_take_measures/2, gloss('deployer must take appropriate technical and organisational measures to use the system in accordance with the instructions for use'), source('celex:32024R1689/oj#art_26').
:- pred must_assign_human_oversight/2, gloss('deployer must assign human oversight to a natural person with the necessary competence, training and authority'), source('celex:32024R1689/oj#art_26').
:- pred human_oversight_person/1, gloss('natural person competent to perform human oversight'), source('celex:32024R1689/oj#art_26').
:- pred must_ensure_input_data_relevant/2, gloss('deployer must ensure input data is relevant and sufficiently representative'), source('celex:32024R1689/oj#art_26').
:- pred must_monitor_operation/2, gloss('deployer must monitor the operation of the high‑risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_provider/2, gloss('deployer must inform the provider'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_distributor/2, gloss('deployer must inform the distributor'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_market_surveillance_authority/2, gloss('deployer must inform the relevant market surveillance authority'), source('celex:32024R1689/oj#art_26').
:- pred must_suspend_use/2, gloss('deployer must suspend the use of the system'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_first_provider/2, gloss('deployer must first inform the provider in case of a serious incident'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_importer_or_distributor/2, gloss('deployer must inform the importer or distributor after the provider'), source('celex:32024R1689/oj#art_26').
:- pred must_keep_logs/2, gloss('deployer must keep the automatically generated logs for at least six months'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_workers_representatives/2, gloss('deployer must inform workers’ representatives and affected workers before use'), source('celex:32024R1689/oj#art_26').
:- pred public_authority/1, gloss('entity that is a public authority, Union institution, body, office or agency'), source('celex:32024R1689/oj#art_26').
:- pred must_comply_registration/2, gloss('public‑authority deployer must comply with registration obligations'), source('celex:32024R1689/oj#art_26').
:- pred must_not_use_if_not_registered/2, gloss('public‑authority deployer must not use a system that is not registered'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_provider_or_distributor/2, gloss('public‑authority deployer must inform the provider or the distributor when the system is not registered'), source('celex:32024R1689/oj#art_26').
:- pred must_use_information_for_dpia/2, gloss('deployer must use the information provided to carry out a data‑protection impact assessment'), source('celex:32024R1689/oj#art_26').
:- pred must_request_authorisation/2, gloss('deployer of a post‑remote biometric identification system must request authorisation before use'), source('celex:32024R1689/oj#art_26').
:- pred must_limit_use_to_specific_offence/2, gloss('deployer must limit each use to what is strictly necessary for a specific criminal offence'), source('celex:32024R1689/oj#art_26').
:- pred must_stop_use_if_authorisation_rejected/2, gloss('deployer must stop use if the authorisation request is rejected'), source('celex:32024R1689/oj#art_26').
:- pred must_delete_personal_data_linked/2, gloss('deployer must delete personal data linked to the use when authorisation is rejected'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_untargeted_law_enforcement_use/1, gloss('post‑remote biometric identification systems must not be used for untargeted law‑enforcement purposes'), source('celex:32024R1689/oj#art_26').
:- pred must_ensure_no_adverse_legal_effect_based_on_output/2, gloss('deployer must ensure no adverse legal effect is based solely on the system’s output'), source('celex:32024R1689/oj#art_26').
:- pred must_document_use/2, gloss('deployer must document each use in the relevant police file'), source('celex:32024R1689/oj#art_26').
:- pred must_make_available_to_authorities/2, gloss('deployer must make the documentation available to market surveillance and data‑protection authorities'), source('celex:32024R1689/oj#art_26').
:- pred must_submit_annual_reports/2, gloss('deployer must submit annual reports on the use of post‑remote biometric identification systems'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_natural_persons/2, gloss('deployer must inform natural persons that they are subject to the use of the system'), source('celex:32024R1689/oj#art_26').
:- pred must_cooperate_with_competent_authorities/2, gloss('deployer must cooperate with the relevant competent authorities'), source('celex:32024R1689/oj#art_26').

must_take_measures(Deployer, use_in_accordance_with_instructions(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_assign_human_oversight(Deployer, Person) :-
    deployer(Deployer),
    high_risk_ai_system(_System),
    human_oversight_person(Person).

must_ensure_input_data_relevant(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_monitor_operation(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_inform_provider(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_inform_distributor(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_inform_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_suspend_use(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_inform_first_provider(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_inform_importer_or_distributor(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_keep_logs(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_inform_workers_representatives(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_comply_registration(Deployer, registration_obligation) :-
    deployer(Deployer),
    public_authority(Deployer).

must_not_use_if_not_registered(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    public_authority(Deployer).

must_inform_provider_or_distributor(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    public_authority(Deployer).

must_use_information_for_dpia(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_request_authorisation(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

must_limit_use_to_specific_offence(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

must_stop_use_if_authorisation_rejected(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

must_delete_personal_data_linked(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

prohibited_untargeted_law_enforcement_use(System) :-
    post_remote_biometric_identification_system(System).

must_ensure_no_adverse_legal_effect_based_on_output(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

must_document_use(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

must_make_available_to_authorities(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

must_submit_annual_reports(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

must_inform_natural_persons(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_cooperate_with_competent_authorities(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(human_oversight_person/1, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_input_data_relevant/2, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_first_provider/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_importer_or_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers_representatives/2, 'celex:32024R1689/oj#art_26').
provenance(public_authority/1, 'celex:32024R1689/oj#art_26').
provenance(must_comply_registration/2, 'celex:32024R1689/oj#art_26').
provenance(must_not_use_if_not_registered/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_or_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_use_information_for_dpia/2, 'celex:32024R1689/oj#art_26').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26').
provenance(must_limit_use_to_specific_offence/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_if_authorisation_rejected/2, 'celex:32024R1689/oj#art_26').
provenance(must_delete_personal_data_linked/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_no_adverse_legal_effect_based_on_output/2, 'celex:32024R1689/oj#art_26').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_make_available_to_authorities/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_26').

references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_2').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_5/unp_1').
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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').
