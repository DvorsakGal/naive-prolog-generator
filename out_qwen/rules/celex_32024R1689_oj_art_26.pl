% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 319949dc8508f9c194b43e35162e54ad84441d97396c6f7b6946ebb394bdb86a
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_26').
:- pred must_use_in_accordance_with_instructions(Deployer, System), gloss('deployer must use system per instructions for use'), source('celex:32024R1689/oj#art_26').
:- pred must_assign_human_oversight(Deployer, System), gloss('deployer must assign competent human oversight'), source('celex:32024R1689/oj#art_26').
:- pred must_ensure_input_data_relevance(Deployer, System), gloss('deployer controlling input data must ensure relevance and representativeness'), source('celex:32024R1689/oj#art_26').
:- pred must_monitor_operation(Deployer, System), gloss('deployer must monitor system operation based on instructions'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_of_risk(Deployer, Recipient), gloss('deployer must inform provider/distributor/authority of risk and suspend use'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_of_serious_incident(Deployer, Recipient), gloss('deployer must immediately inform relevant parties of serious incident'), source('celex:32024R1689/oj#art_26').
:- pred must_keep_logs(Deployer, System), gloss('deployer must keep automatically generated logs for at least six months'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_workers(Deployer, System), gloss('employer deployer must inform workers representatives and affected workers'), source('celex:32024R1689/oj#art_26').
:- pred must_register_system(Deployer, System), gloss('public authority deployer must comply with registration obligations'), source('celex:32024R1689/oj#art_26').
:- pred must_not_use_unregistered_system(Deployer, System), gloss('public authority deployer must not use unregistered high-risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred must_use_info_for_dpi_a(Deployer, System), gloss('deployer must use article 13 info for data protection impact assessment'), source('celex:32024R1689/oj#art_26').
:- pred must_request_authorisation_for_post_rbi(Deployer, System), gloss('deployer must request judicial/admin authorisation for post-remote biometric ID in criminal investigation'), source('celex:32024R1689/oj#art_26').
:- pred must_stop_use_on_authorisation_rejection(Deployer, System), gloss('deployer must stop use and delete data if authorisation rejected'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_untargeted_post_rbi_use(System), gloss('post-remote biometric ID system used in untargeted way without link to offence'), source('celex:32024R1689/oj#art_26').
:- pred must_document_post_rbi_use(Deployer, System), gloss('deployer must document each post-RBI use in police file'), source('celex:32024R1689/oj#art_26').
:- pred must_submit_annual_report_on_post_rbi(Deployer, Authority), gloss('deployer must submit annual reports on post-RBI use to authorities'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_natural_persons(Deployer, System), gloss('deployer of Annex III system making decisions about persons must inform them'), source('celex:32024R1689/oj#art_26').
:- pred must_cooperate_with_competent_authorities(Deployer, System), gloss('deployer must cooperate with competent authorities implementing this regulation'), source('celex:32024R1689/oj#art_26').
:- pred controls_input_data/1, gloss('deployer exercises control over input data'), source('celex:32024R1689/oj#art_26').
:- pred employer/1, gloss('deployer who is an employer'), source('celex:32024R1689/oj#art_26').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority or EU institution/body'), source('celex:32024R1689/oj#art_26').
:- pred financial_institution_deployer/1, gloss('deployer that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_26').
:- pred annex_iii_system/1, gloss('high-risk AI system referred to in Annex III'), source('celex:32024R1689/oj#art_26').
:- pred makes_decisions_about_natural_persons/1, gloss('system makes or assists in decisions related to natural persons'), source('celex:32024R1689/oj#art_26').
:- pred registered_in_eu_database/1, gloss('system is registered in the EU database referred to in Article 71'), source('celex:32024R1689/oj#art_26').
:- pred reason_to_consider_risk/1, gloss('deployer has reason to consider use may result in risk under Article 79(1)'), source('celex:32024R1689/oj#art_26').
:- pred serious_incident_identified/1, gloss('deployer has identified a serious incident'), source('celex:32024R1689/oj#art_26').
:- pred targeted_search_of_suspect/1, gloss('use is for targeted search of person suspected or convicted of criminal offence'), source('celex:32024R1689/oj#art_26').
:- pred initial_identification_exemption_applies/1, gloss('use is for initial identification based on objective verifiable facts directly linked to offence'), source('celex:32024R1689/oj#art_26').
:- pred authorisation_rejected/1, gloss('requested authorisation for post-RBI use was rejected'), source('celex:32024R1689/oj#art_26').
:- pred linked_to_criminal_offence_or_threat/1, gloss('use is linked to criminal offence, proceeding, genuine threat, or missing person search'), source('celex:32024R1689/oj#art_26').

must_use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

must_ensure_input_data_relevance(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    controls_input_data(D),
    intended_purpose(S).

must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S),
    \+ financial_institution_deployer(D).

must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution_deployer(D).

must_inform_of_risk(D, recipient(provider_or_distributor_and_msa)) :-
    deployer(D),
    high_risk_ai_system(_S),
    reason_to_consider_risk(D).

must_inform_of_serious_incident(D, recipient(provider_then_importer_or_distributor_and_msa)) :-
    deployer(D),
    high_risk_ai_system(_S),
    serious_incident_identified(D).

must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ financial_institution_deployer(D).

must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution_deployer(D).

must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    putting_into_service(S).

must_register_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D).

must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D),
    \+ registered_in_eu_database(S).

must_use_info_for_dpi_a(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

must_request_authorisation_for_post_rbi(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    targeted_search_of_suspect(D),
    \+ initial_identification_exemption_applies(D).

must_stop_use_on_authorisation_rejection(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D).

prohibited_untargeted_post_rbi_use(S) :-
    post_remote_biometric_identification_system(S),
    \+ linked_to_criminal_offence_or_threat(S).

must_document_post_rbi_use(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

must_submit_annual_report_on_post_rbi(D, market_surveillance_authority) :-
    deployer(D),
    post_remote_biometric_identification_system(_S).

must_submit_annual_report_on_post_rbi(D, national_data_protection_authority) :-
    deployer(D),
    post_remote_biometric_identification_system(_S).

must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    annex_iii_system(S),
    makes_decisions_about_natural_persons(S),
    \+ law_enforcement_purpose(S).

must_cooperate_with_competent_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_input_data_relevance/2, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
provenance(must_register_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_use_info_for_dpi_a/2, 'celex:32024R1689/oj#art_26').
provenance(must_request_authorisation_for_post_rbi/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_on_authorisation_rejection/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_post_rbi_use/1, 'celex:32024R1689/oj#art_26').
provenance(must_document_post_rbi_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report_on_post_rbi/2, 'celex:32024R1689/oj#art_26').
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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
