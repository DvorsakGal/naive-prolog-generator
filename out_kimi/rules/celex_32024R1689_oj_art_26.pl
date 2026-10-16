% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 909ecc3f5710133c50d9acbdae2610a0c0d5025fff1a2ab3b56ac7b53924f908
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_26').

:- pred must_ensure_compliance_with_instructions/2, gloss('deployer must use system per instructions'), source('celex:32024R1689/oj#art_26/par_1').
:- pred must_assign_human_oversight/2, gloss('deployer must assign qualified human oversight'), source('celex:32024R1689/oj#art_26/par_2').
:- pred must_ensure_input_data_quality/2, gloss('deployer must ensure relevant representative input data'), source('celex:32024R1689/oj#art_26/par_4').
:- pred must_monitor_operation/2, gloss('deployer must monitor system operation'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_inform_provider_distributor_and_authority/2, gloss('deployer must inform about risk'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_suspend_use/2, gloss('deployer must suspend use of risky system'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_inform_serious_incident/2, gloss('deployer must inform about serious incident'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_keep_logs/2, gloss('deployer must retain system logs'), source('celex:32024R1689/oj#art_26/par_6').
:- pred must_inform_workers/2, gloss('deployer must inform workers about AI use'), source('celex:32024R1689/oj#art_26/par_7').
:- pred must_comply_with_registration/2, gloss('deployer must comply with registration obligations'), source('celex:32024R1689/oj#art_26/par_8').
:- pred must_not_use_unregistered_system/2, gloss('deployer must not use unregistered system'), source('celex:32024R1689/oj#art_26/par_8').
:- pred must_use_art_13_information/2, gloss('deployer must use art 13 info for DPIA'), source('celex:32024R1689/oj#art_26/par_9').
:- pred must_request_authorisation_post_remote_biometric/2, gloss('deployer must request authorisation for post-remote biometric ID'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_stop_use_and_delete_data/2, gloss('deployer must stop use and delete data if auth rejected'), source('celex:32024R1689/oj#art_26/par_10').
:- pred prohibited_untargeted_law_enforcement_use/1, gloss('untargeted law enforcement use prohibited'), source('celex:32024R1689/oj#art_26/par_10').
:- pred prohibited_adverse_legal_effect_solely_on_output/1, gloss('adverse legal effect solely on system output prohibited'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_document_use/2, gloss('deployer must document each use'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_submit_annual_reports/2, gloss('deployer must submit annual reports on use'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_inform_natural_persons/2, gloss('deployer must inform natural persons of AI use'), source('celex:32024R1689/oj#art_26/par_11').
:- pred must_cooperate_with_authorities/2, gloss('deployer must cooperate with competent authorities'), source('celex:32024R1689/oj#art_26/par_12').

:- pred employer/1, gloss('entity employing workers'), source('celex:32024R1689/oj#art_26/par_7').
:- pred public_authority/1, gloss('public authority'), source('celex:32024R1689/oj#art_26/par_8').
:- pred union_institution/1, gloss('Union institution body office or agency'), source('celex:32024R1689/oj#art_26/par_8').
:- pred financial_institution/1, gloss('financial institution under Union financial services law'), source('celex:32024R1689/oj#art_26/par_5').
:- pred law_enforcement_deployer/1, gloss('deployer that is law enforcement authority'), source('celex:32024R1689/oj#art_26/par_5').
:- pred controls_input_data/2, gloss('deployer exercises control over input data'), source('celex:32024R1689/oj#art_26/par_4').
:- pred risk_presented/2, gloss('system presents a risk within meaning of art 79(1)'), source('celex:32024R1689/oj#art_26/par_5').
:- pred serious_incident_identified/2, gloss('deployer has identified a serious incident'), source('celex:32024R1689/oj#art_26/par_5').
:- pred authorisation_rejected/2, gloss('authorisation for post-remote biometric ID was rejected'), source('celex:32024R1689/oj#art_26/par_10').
:- pred untargeted_use/1, gloss('use without link to specific investigation'), source('celex:32024R1689/oj#art_26/par_10').
:- pred adverse_legal_effect_based_solely_on_output/2, gloss('adverse legal effect based solely on system output'), source('celex:32024R1689/oj#art_26/par_10').
:- pred initial_identification_potential_suspect/2, gloss('initial identification based on objective verifiable facts'), source('celex:32024R1689/oj#art_26/par_10').
:- pred registered_in_eu_database/1, gloss('system registered in EU database per art 71'), source('celex:32024R1689/oj#art_26/par_8').
:- pred makes_decisions_or_assists_decisions/1, gloss('system makes or assists decisions related to natural persons'), source('celex:32024R1689/oj#art_26/par_11').
:- pred referred_to_in_annex_3/1, gloss('system referred to in Annex 3'), source('celex:32024R1689/oj#art_26/par_11').
:- pred workers_representatives/1, gloss('representatives of workers'), source('celex:32024R1689/oj#art_26/par_7').
:- pred affected_workers/1, gloss('workers affected by AI system use'), source('celex:32024R1689/oj#art_26/par_7').
:- pred judicial_or_binding_administrative_authority/1, gloss('judicial or administrative authority with binding decision subject to judicial review'), source('celex:32024R1689/oj#art_26/par_10').
:- pred targeted_search/1, gloss('investigation for targeted search of person'), source('celex:32024R1689/oj#art_26/par_10').
:- pred suspected_or_convicted_person/1, gloss('person suspected or convicted of criminal offence'), source('celex:32024R1689/oj#art_26/par_10').
:- pred genuine_threat_criminal_offence/1, gloss('genuine and present or foreseeable threat of criminal offence'), source('celex:32024R1689/oj#art_26/par_10').
:- pred search_specific_missing_person/1, gloss('search for specific missing person'), source('celex:32024R1689/oj#art_26/par_10').
:- pred relevant_police_file/1, gloss('police file for documenting use'), source('celex:32024R1689/oj#art_26/par_10').
:- pred request_made/2, gloss('request made to authority'), source('celex:32024R1689/oj#art_26/par_10').

% Article 26(1) - Use in accordance with instructions
must_ensure_compliance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

% Article 26(2) - Human oversight assignment
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

% Article 26(4) - Input data quality (where deployer controls input data)
must_ensure_input_data_quality(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    controls_input_data(D, S),
    intended_purpose(S).

% Article 26(5) - Monitoring and risk reporting
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_inform_provider_distributor_and_authority(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_presented(D, S),
    \+ law_enforcement_deployer(D).

must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_presented(D, S),
    \+ law_enforcement_deployer(D).

must_inform_serious_incident(D, incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S),
    \+ law_enforcement_deployer(D).

% Article 26(5) second subparagraph - financial institutions monitoring deemed fulfilled
monitoring_deemed_fulfilled(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution(D).

% Article 26(6) - Log retention
must_keep_logs(D, logs(S, Period)) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_control(D, S),
    period_appropriate_to_purpose(Period, S),
    period_at_least_months(Period, 6).

% Article 26(6) second subparagraph - financial institutions log retention
logs_maintained_under_financial_law(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution(D).

% Article 26(7) - Worker information
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    putting_into_service(S).

% Article 26(8) - Registration obligations for public authorities
must_comply_with_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    (public_authority(D); union_institution(D)).

must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    (public_authority(D); union_institution(D)),
    \+ registered_in_eu_database(S).

% Article 26(9) - Data protection impact assessment
must_use_art_13_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

% Article 26(10) - Post-remote biometric identification authorisation
must_request_authorisation_post_remote_biometric(D, use(S, Target)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    targeted_search(Target),
    suspected_or_convicted_person(P),
    \+ initial_identification_potential_suspect(Target, P).

must_request_authorisation_post_remote_biometric(D, use(S, Target)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    targeted_search(Target),
    suspected_or_convicted_person(P),
    initial_identification_potential_suspect(Target, P),
    within_hours(48).

must_stop_use_and_delete_data(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D, use(S, _)).

prohibited_untargeted_law_enforcement_use(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    untargeted_use(S),
    law_enforcement(_D),
    \+ linked_to_criminal_offence(S),
    \+ linked_to_criminal_proceeding(S),
    \+ genuine_threat_criminal_offence(S),
    \+ search_specific_missing_person(S).

prohibited_adverse_legal_effect_solely_on_output(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    adverse_legal_effect_based_solely_on_output(_D, S).

must_document_use(D, use(S, File)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    relevant_police_file(File).

must_submit_annual_reports(D, reports(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S).

% Article 26(11) - Inform natural persons
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    makes_decisions_or_assists_decisions(S).

% Article 26(12) - Cooperation with authorities
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_compliance_with_instructions/2, 'celex:32024R1689/oj#art_26/par_1').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26/par_2').
provenance(must_ensure_input_data_quality/2, 'celex:32024R1689/oj#art_26/par_4').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_provider_distributor_and_authority/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_serious_incident/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(monitoring_deemed_fulfilled/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(logs_maintained_under_financial_law/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26/par_7').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_use_art_13_information/2, 'celex:32024R1689/oj#art_26/par_9').
provenance(must_request_authorisation_post_remote_biometric/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_stop_use_and_delete_data/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_adverse_legal_effect_solely_on_output/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26/par_11').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26/par_12').

% References
references('celex:32024R1689/oj#art_26/par_1', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26/par_1', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26/par_3', 'celex:32024R1689/oj#art_26/par_1').
references('celex:32024R1689/oj#art_26/par_3', 'celex:32024R1689/oj#art_26/par_2').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_26/par_5/unp_1').
references('celex:32024R1689/oj#art_26/par_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26/par_8', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26/par_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26/par_9', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26/par_9', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26/par_11', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26/par_11', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26/par_11', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26/par_12', 'celex:32024R1689/oj').
