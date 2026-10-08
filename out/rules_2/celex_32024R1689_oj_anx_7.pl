% unit       : celex:32024R1689/oj#anx_7
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : gpt-oss:120b-cloud
% prompt sha : 9410b696e8177b9679fb814c53bf959847940d6730998ace56465cdf36054a71
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_application_includes/2, gloss('items that must be included in the provider''s conformity assessment application'), source('celex:32024R1689/oj#anx_7').
:- pred must_assess_quality_management_system/2, gloss('obligation of the notified body to assess the quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_assessment_conclusions/2, gloss('obligation of the notified body to notify the provider of the assessment conclusions'), source('celex:32024R1689/oj#anx_7').
:- pred must_maintain_quality_management_system/1, gloss('obligation of the provider to keep the approved quality management system in place'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_change_to_qms/2, gloss('obligation of the provider to inform the notified body of any intended change to the quality management system or covered AI‑system list'), source('celex:32024R1689/oj#anx_7').
:- pred must_examine_qms_change/2, gloss('obligation of the notified body to examine a change to the quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred must_lodge_technical_documentation_application/3, gloss('obligation of the provider to lodge an application for technical documentation assessment with a notified body'), source('celex:32024R1689/oj#anx_7').
:- pred required_technical_doc_application_includes/2, gloss('items that must be included in the technical documentation assessment application'), source('celex:32024R1689/oj#anx_7').
:- pred must_examine_technical_documentation/2, gloss('obligation of the notified body to examine the technical documentation'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_full_access_to_data/3, gloss('obligation of the notified body to be granted full access to data sets for assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_require_further_evidence/2, gloss('right of the notified body to require further evidence or tests from the provider'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out_adequate_tests/2, gloss('obligation of the notified body to carry out its own tests where the provider''s tests are insufficient'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_access_to_models/3, gloss('obligation of the notified body to be granted access to training data and trained models for high‑risk AI systems'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_decision/2, gloss('obligation of the notified body to notify the provider of its assessment decision'), source('celex:32024R1689/oj#anx_7').
:- pred must_issue_certificate_if_conform/2, gloss('obligation of the notified body to issue a Union technical documentation assessment certificate when the AI system conforms'), source('celex:32024R1689/oj#anx_7').
:- pred must_refuse_certificate_if_nonconform/2, gloss('obligation of the notified body to refuse the certificate when the AI system does not conform'), source('celex:32024R1689/oj#anx_7').
:- pred must_inform_change_to_ai_system/2, gloss('obligation of the provider to inform the notified body of any change to the AI system that may affect conformity'), source('celex:32024R1689/oj#anx_7').
:- pred must_assess_change/2, gloss('obligation of the notified body to assess a change to the AI system'), source('celex:32024R1689/oj#anx_7').
:- pred must_allow_access_to_premises/2, gloss('obligation of the provider to allow the notified body access to premises for assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_share_information/2, gloss('obligation of the provider to share all necessary information with the notified body'), source('celex:32024R1689/oj#anx_7').
:- pred must_conduct_periodic_audits/2, gloss('obligation of the notified body to carry out periodic audits of the provider''s quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred must_provide_audit_report/2, gloss('obligation of the notified body to provide the provider with an audit report'), source('celex:32024R1689/oj#anx_7').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#anx_7').

%--- Application content -------------------------------------------------
required_application_includes(Provider, name_and_address_of_provider) :-
    provider(Provider).

required_application_includes(Provider, name_and_address_of_authorised_representative) :-
    provider(Provider),
    authorised_representative(_).

required_application_includes(Provider, list_of_ai_systems_covered) :-
    provider(Provider).

required_application_includes(Provider, technical_documentation_for_each_ai_system) :-
    provider(Provider).

required_application_includes(Provider, documentation_concerning_qms) :-
    provider(Provider).

required_application_includes(Provider, description_of_qms_procedures) :-
    provider(Provider).

required_application_includes(Provider, written_declaration_no_other_notified_body_application) :-
    provider(Provider).

%--- Quality‑management‑system assessment -------------------------------
must_assess_quality_management_system(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

must_notify_assessment_conclusions(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

must_maintain_quality_management_system(Provider) :-
    provider(Provider).

must_notify_change_to_qms(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).

must_examine_qms_change(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

%--- Technical documentation application ---------------------------------
must_lodge_technical_documentation_application(Provider, NotifiedBody, AISystem) :-
    provider(Provider),
    notified_body(NotifiedBody),
    ai_system(AISystem).

required_technical_doc_application_includes(Provider, name_and_address_of_provider) :-
    provider(Provider).

required_technical_doc_application_includes(Provider, written_declaration_no_other_notified_body_application) :-
    provider(Provider).

required_technical_doc_application_includes(Provider, technical_documentation) :-
    provider(Provider).

%--- Examination of technical documentation ----------------------------
must_examine_technical_documentation(NotifiedBody, AISystem) :-
    notified_body(NotifiedBody),
    ai_system(AISystem).

must_grant_full_access_to_data(NotifiedBody, Provider, DataSet) :-
    notified_body(NotifiedBody),
    provider(Provider),
    training_data_set(DataSet).

must_grant_full_access_to_data(NotifiedBody, Provider, DataSet) :-
    notified_body(NotifiedBody),
    provider(Provider),
    validation_data_set(DataSet).

must_grant_full_access_to_data(NotifiedBody, Provider, DataSet) :-
    notified_body(NotifiedBody),
    provider(Provider),
    testing_data_set(DataSet).

must_require_further_evidence(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

must_carry_out_adequate_tests(NotifiedBody, AISystem) :-
    notified_body(NotifiedBody),
    ai_system(AISystem).

must_grant_access_to_models(NotifiedBody, Provider, AISystem) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(AISystem),
    high_risk_ai_system(AISystem).

%--- Decision and certification -----------------------------------------
must_notify_decision(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

must_issue_certificate_if_conform(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

must_refuse_certificate_if_nonconform(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

%--- Changes to AI system -----------------------------------------------
must_inform_change_to_ai_system(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).

must_assess_change(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

%--- Surveillance (periodic audits) --------------------------------------
must_allow_access_to_premises(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).

must_share_information(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).

must_conduct_periodic_audits(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

must_provide_audit_report(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).

%--- Provenance -----------------------------------------------------------
provenance(required_application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_assessment_conclusions/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_change_to_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_qms_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_technical_documentation_application/3, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_full_access_to_data/3, 'celex:32024R1689/oj#anx_7').
provenance(must_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_adequate_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models/3, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate_if_conform/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate_if_nonconform/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_change_to_ai_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_to_premises/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(must_conduct_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(must_provide_audit_report/2, 'celex:32024R1689/oj#anx_7').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_7').

%--- References -----------------------------------------------------------
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
