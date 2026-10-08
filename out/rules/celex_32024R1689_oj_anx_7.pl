% unit       : celex:32024R1689/oj#anx_7
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : gpt-oss:120b-cloud
% prompt sha : 31645a7f1adfbc6f43534b9796a643bd7c67b4f5a7a6bc2ff67bcea052cfc540
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_application_includes_name_and_address/1, gloss('application must contain name and address of provider or authorised representative'), source('celex:32024R1689/oj#anx_7').
required_application_includes_name_and_address(X) :-
    (provider(X) ; authorised_representative(X)),
    (provider(X) ; authorised_representative(X)).

:- pred required_application_includes_list_of_ai_systems/1, gloss('application must contain list of AI systems covered by the same quality management system'), source('celex:32024R1689/oj#anx_7').
required_application_includes_list_of_ai_systems(P) :-
    provider(P),
    provider(P).

:- pred required_application_includes_technical_documentation_per_ai_system/1, gloss('application must contain technical documentation for each AI system covered by the same quality management system'), source('celex:32024R1689/oj#anx_7').
required_application_includes_technical_documentation_per_ai_system(P) :-
    provider(P),
    provider(P).

:- pred required_application_includes_qms_documentation_covers_art_17/1, gloss('application must contain quality‑management‑system documentation covering aspects listed in article 17'), source('celex:32024R1689/oj#anx_7').
required_application_includes_qms_documentation_covers_art_17(P) :-
    provider(P),
    provider(P).

:- pred required_application_includes_description_of_procedures/1, gloss('application must contain description of procedures ensuring the quality management system remains adequate and effective'), source('celex:32024R1689/oj#anx_7').
required_application_includes_description_of_procedures(P) :-
    provider(P),
    provider(P).

:- pred required_application_includes_written_declaration_no_other_notified_body/1, gloss('application must contain a written declaration that the same application has not been lodged with any other notified body'), source('celex:32024R1689/oj#anx_7').
required_application_includes_written_declaration_no_other_notified_body(P) :-
    provider(P),
    provider(P).

:- pred required_qms_assessed_by_notified_body/2, gloss('quality management system shall be assessed by the notified body'), source('celex:32024R1689/oj#anx_7').
required_qms_assessed_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred must_notify/2, gloss('the decision shall be notified to the provider or its authorised representative'), source('celex:32024R1689/oj#anx_7').
must_notify(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred required_maintain_qms/1, gloss('provider shall continue to implement and maintain the approved quality management system so that it remains adequate and efficient'), source('celex:32024R1689/oj#anx_7').
required_maintain_qms(P) :-
    provider(P),
    provider(P).

:- pred required_notify_change_to_qms/2, gloss('provider shall bring any intended change to the approved quality management system to the attention of the notified body'), source('celex:32024R1689/oj#anx_7').
required_notify_change_to_qms(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).

:- pred required_examine_change_by_notified_body/2, gloss('notified body shall examine proposed changes to the quality management system and decide on further assessment'), source('celex:32024R1689/oj#anx_7').
required_examine_change_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred required_application_for_technical_documentation/2, gloss('provider shall lodge an application with a notified body for assessment of the technical documentation of the AI system intended to be placed on the market or put into service'), source('celex:32024R1689/oj#anx_7').
required_application_for_technical_documentation(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).

:- pred required_technical_doc_application_includes_name_and_address/1, gloss('technical documentation application must include name and address of the provider'), source('celex:32024R1689/oj#anx_7').
required_technical_doc_application_includes_name_and_address(P) :-
    provider(P),
    provider(P).

:- pred required_technical_doc_application_includes_written_declaration/1, gloss('technical documentation application must contain a written declaration that the same application has not been lodged with any other notified body'), source('celex:32024R1689/oj#anx_7').
required_technical_doc_application_includes_written_declaration(P) :-
    provider(P),
    provider(P).

:- pred required_technical_doc_application_includes_technical_documentation/1, gloss('technical documentation application must include the technical documentation referred to in article 4'), source('celex:32024R1689/oj#anx_7').
required_technical_doc_application_includes_technical_documentation(P) :-
    provider(P),
    provider(P).

:- pred required_examine_technical_documentation_by_notified_body/2, gloss('technical documentation shall be examined by the notified body'), source('celex:32024R1689/oj#anx_7').
required_examine_technical_documentation_by_notified_body(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    ai_system(S),
    ai_system(S).

:- pred permitted_access_to_data_sets/2, gloss('notified body may be granted full access to training, validation and testing data sets, subject to security safeguards'), source('celex:32024R1689/oj#anx_7').
permitted_access_to_data_sets(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    ai_system(S),
    ai_system(S).

:- pred permitted_require_further_evidence/2, gloss('notified body may require the provider to supply further evidence or carry out further tests'), source('celex:32024R1689/oj#anx_7').
permitted_require_further_evidence(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred required_conduct_adequate_tests_by_notified_body/2, gloss('if not satisfied with provider tests, the notified body shall directly carry out adequate tests'), source('celex:32024R1689/oj#anx_7').
required_conduct_adequate_tests_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#anx_7').
% (definition may be provided elsewhere)

:- pred required_access_to_training_and_models/2, gloss('notified body shall be granted access to training and trained models of a high‑risk AI system when necessary'), source('celex:32024R1689/oj#anx_7').
required_access_to_training_and_models(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    high_risk_ai_system(S),
    high_risk_ai_system(S).

:- pred required_issue_certificate_if_conformant/3, gloss('notified body shall issue a Union technical documentation assessment certificate when the AI system is in conformity'), source('celex:32024R1689/oj#anx_7').
required_issue_certificate_if_conformant(NB, P, S) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P),
    ai_system(S),
    ai_system(S).

:- pred required_refuse_certificate_if_nonconformant/3, gloss('notified body shall refuse to issue a Union technical documentation assessment certificate when the AI system is not in conformity'), source('celex:32024R1689/oj#anx_7').
required_refuse_certificate_if_nonconformant(NB, P, S) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P),
    ai_system(S),
    ai_system(S).

:- pred required_retrain_if_data_noncompliant/1, gloss('provider shall retrain the AI system if the data used to train it does not meet the requirement'), source('celex:32024R1689/oj#anx_7').
required_retrain_if_data_noncompliant(S) :-
    ai_system(S),
    ai_system(S).

:- pred required_notify_change_to_ai_system/2, gloss('provider shall inform the notified body of any change to the AI system that could affect compliance or intended purpose'), source('celex:32024R1689/oj#anx_7').
required_notify_change_to_ai_system(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).

:- pred required_assess_change_by_notified_body/2, gloss('notified body shall assess the intended change to the AI system'), source('celex:32024R1689/oj#anx_7').
required_assess_change_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred required_decide_new_conformity_assessment_or_supplement/2, gloss('notified body shall decide whether a new conformity assessment is required or a supplement to the certificate can be issued'), source('celex:32024R1689/oj#anx_7').
required_decide_new_conformity_assessment_or_supplement(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred permitted_issue_supplement/2, gloss('notified body may issue a supplement to the Union technical documentation assessment certificate'), source('celex:32024R1689/oj#anx_7').
permitted_issue_supplement(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred objective_ensure_compliance/1, gloss('purpose of surveillance is to ensure the provider complies with the approved quality management system'), source('celex:32024R1689/oj#anx_7').
objective_ensure_compliance(P) :-
    provider(P),
    provider(P).

:- pred required_allow_access_to_premises/2, gloss('provider shall allow the notified body access to premises where design, development and testing of AI systems take place'), source('celex:32024R1689/oj#anx_7').
required_allow_access_to_premises(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).

:- pred required_share_information/2, gloss('provider shall share all necessary information with the notified body'), source('celex:32024R1689/oj#anx_7').
required_share_information(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).

:- pred required_conduct_periodic_audits/2, gloss('notified body shall carry out periodic audits to verify the provider maintains and applies the quality management system'), source('celex:32024R1689/oj#anx_7').
required_conduct_periodic_audits(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred required_provide_audit_report/2, gloss('notified body shall provide the provider with an audit report'), source('celex:32024R1689/oj#anx_7').
required_provide_audit_report(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).

:- pred permitted_additional_tests_during_audit/2, gloss('notified body may carry out additional tests of AI systems for which a Union technical documentation assessment certificate was issued'), source('celex:32024R1689/oj#anx_7').
permitted_additional_tests_during_audit(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    ai_system(S),
    ai_system(S).

% Provenance for each clause
provenance(required_application_includes_name_and_address/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_list_of_ai_systems/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_technical_documentation_per_ai_system/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_qms_documentation_covers_art_17/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_description_of_procedures/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_written_declaration_no_other_notified_body/1, 'celex:32024R1689/oj#anx_7').
provenance(required_qms_assessed_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(required_maintain_qms/1, 'celex:32024R1689/oj#anx_7').
provenance(required_notify_change_to_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(required_examine_change_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(required_application_for_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes_name_and_address/1, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes_written_declaration/1, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes_technical_documentation/1, 'celex:32024R1689/oj#anx_7').
provenance(required_examine_technical_documentation_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_access_to_data_sets/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(required_conduct_adequate_tests_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(required_access_to_training_and_models/2, 'celex:32024R1689/oj#anx_7').
provenance(required_issue_certificate_if_conformant/3, 'celex:32024R1689/oj#anx_7').
provenance(required_refuse_certificate_if_nonconformant/3, 'celex:32024R1689/oj#anx_7').
provenance(required_retrain_if_data_noncompliant/1, 'celex:32024R1689/oj#anx_7').
provenance(required_notify_change_to_ai_system/2, 'celex:32024R1689/oj#anx_7').
provenance(required_assess_change_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(required_decide_new_conformity_assessment_or_supplement/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_issue_supplement/2, 'celex:32024R1689/oj#anx_7').
provenance(objective_ensure_compliance/1, 'celex:32024R1689/oj#anx_7').
provenance(required_allow_access_to_premises/2, 'celex:32024R1689/oj#anx_7').
provenance(required_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(required_conduct_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(required_provide_audit_report/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_additional_tests_during_audit/2, 'celex:32024R1689/oj#anx_7').

% References
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
