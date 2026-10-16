% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 0b09cea332e06357ffa5db065bb6ba21a032e3cc10c304b060d4e3158fcc6c3d
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred annex_vii_conformity_assessment_procedure/1, gloss('conformity assessment procedure based on quality management system and technical documentation assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_apply_for_qms_assessment/2, gloss('provider must apply to notified body for quality management system assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_include_provider_details_in_qms_application/2, gloss('qms application must include name and address of provider and representative if applicable'), source('celex:32024R1689/oj#anx_7').
:- pred must_include_ai_system_list_in_qms_application/2, gloss('qms application must include list of AI systems covered under the same quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred must_include_technical_documentation_in_qms_application/2, gloss('qms application must include technical documentation for each covered AI system'), source('celex:32024R1689/oj#anx_7').
:- pred must_include_qms_documentation_in_application/2, gloss('qms application must include documentation concerning the quality management system covering Article 17 aspects'), source('celex:32024R1689/oj#anx_7').
:- pred must_include_adequacy_procedures_in_qms_application/2, gloss('qms application must include description of procedures ensuring QMS remains adequate and effective'), source('celex:32024R1689/oj#anx_7').
:- pred must_declare_no_duplicate_qms_application/2, gloss('provider must declare same QMS application not lodged with other notified body'), source('celex:32024R1689/oj#anx_7').
:- pred must_assess_qms_compliance/2, gloss('notified body must assess whether QMS satisfies Article 17 requirements'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_qms_decision/2, gloss('notified body must notify provider or representative of QMS assessment decision with conclusions'), source('celex:32024R1689/oj#anx_7').
:- pred must_maintain_approved_qms/2, gloss('provider must implement and maintain approved QMS so it remains adequate and efficient'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_intended_qms_changes/2, gloss('provider must bring intended changes to approved QMS or AI system list to notified body attention'), source('celex:32024R1689/oj#anx_7').
:- pred must_examine_qms_changes/2, gloss('notified body must examine proposed QMS changes and decide on continued compliance or reassessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_apply_for_technical_documentation_assessment/2, gloss('provider must lodge application with notified body for technical documentation assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_include_provider_details_in_td_application/2, gloss('technical documentation application must include name and address of provider'), source('celex:32024R1689/oj#anx_7').
:- pred must_declare_no_duplicate_td_application/2, gloss('provider must declare same technical documentation application not lodged with other notified body'), source('celex:32024R1689/oj#anx_7').
:- pred must_include_technical_documentation_in_td_application/2, gloss('technical documentation application must include technical documentation referred to in Annex IV'), source('celex:32024R1689/oj#anx_7').
:- pred must_examine_technical_documentation/2, gloss('notified body must examine technical documentation of AI system'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_access_to_data_sets/2, gloss('provider must grant notified body full access to training validation and testing data sets where relevant'), source('celex:32024R1689/oj#anx_7').
:- pred may_require_further_evidence_or_tests/2, gloss('notified body may require provider to supply further evidence or carry out further tests'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out_tests_if_unsatisfied/2, gloss('notified body must directly carry out adequate tests if not satisfied with provider tests'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_access_to_models_on_reasoned_request/2, gloss('provider must grant access to training and trained models upon reasoned request after other means exhausted'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_td_assessment_decision/2, gloss('notified body must notify provider or representative of technical documentation assessment decision'), source('celex:32024R1689/oj#anx_7').
:- pred must_issue_certificate_if_conformity/2, gloss('notified body must issue Union technical documentation assessment certificate if AI system conforms'), source('celex:32024R1689/oj#anx_7').
:- pred must_refuse_certificate_if_non_conformity/2, gloss('notified body must refuse certificate and give detailed reasons if AI system does not conform'), source('celex:32024R1689/oj#anx_7').
:- pred must_assess_changes_affecting_compliance/2, gloss('notified body must assess changes to AI system that could affect compliance or intended purpose'), source('celex:32024R1689/oj#anx_7').
:- pred must_inform_of_intended_changes/2, gloss('provider must inform notified body of intention to introduce changes affecting compliance'), source('celex:32024R1689/oj#anx_7').
:- pred must_surveil_approved_qms/2, gloss('notified body must carry out surveillance to ensure provider complies with approved QMS terms'), source('celex:32024R1689/oj#anx_7').
:- pred must_allow_premises_access_for_surveillance/2, gloss('provider must allow notified body access to design development and testing premises for assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_share_information_for_surveillance/2, gloss('provider must share all necessary information with notified body for assessment purposes'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out_periodic_audits/2, gloss('notified body must carry out periodic audits to ensure provider maintains and applies QMS'), source('celex:32024R1689/oj#anx_7').

annex_vii_conformity_assessment_procedure(S) :-
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).

must_apply_for_qms_assessment(P, B) :-
    provider(P),
    notified_body(B),
    annex_vii_conformity_assessment_procedure(_S).

must_include_provider_details_in_qms_application(P, application(qms)) :-
    provider(P).

must_include_ai_system_list_in_qms_application(P, application(qms)) :-
    provider(P).

must_include_technical_documentation_in_qms_application(P, application(qms)) :-
    provider(P).

must_include_qms_documentation_in_application(P, application(qms)) :-
    provider(P).

must_include_adequacy_procedures_in_qms_application(P, application(qms)) :-
    provider(P).

must_declare_no_duplicate_qms_application(P, application(qms)) :-
    provider(P).

must_assess_qms_compliance(B, qms) :-
    notified_body(B).

must_notify_qms_decision(B, P) :-
    notified_body(B),
    provider(P).

must_maintain_approved_qms(P, qms) :-
    provider(P).

must_notify_intended_qms_changes(P, B) :-
    provider(P),
    notified_body(B).

must_examine_qms_changes(B, changes(qms)) :-
    notified_body(B).

must_apply_for_technical_documentation_assessment(P, B) :-
    provider(P),
    notified_body(B),
    annex_vii_conformity_assessment_procedure(_S).

must_include_provider_details_in_td_application(P, application(technical_documentation)) :-
    provider(P).

must_declare_no_duplicate_td_application(P, application(technical_documentation)) :-
    provider(P).

must_include_technical_documentation_in_td_application(P, application(technical_documentation)) :-
    provider(P).

must_examine_technical_documentation(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S).

must_grant_access_to_data_sets(P, B) :-
    provider(P),
    notified_body(B).

may_require_further_evidence_or_tests(B, P) :-
    notified_body(B),
    provider(P).

must_carry_out_tests_if_unsatisfied(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S).

must_grant_access_to_models_on_reasoned_request(P, B) :-
    provider(P),
    notified_body(B),
    reasoned_request(B, access(models)).

must_notify_td_assessment_decision(B, P) :-
    notified_body(B),
    provider(P).

must_issue_certificate_if_conformity(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S),
    requirements_of_chapter_3_section_2(S).

must_refuse_certificate_if_non_conformity(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S),
    \+ requirements_of_chapter_3_section_2(S).

must_assess_changes_affecting_compliance(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S).

must_inform_of_intended_changes(P, B) :-
    provider(P),
    notified_body(B).

must_surveil_approved_qms(B, P) :-
    notified_body(B),
    provider(P).

must_allow_premises_access_for_surveillance(P, B) :-
    provider(P),
    notified_body(B).

must_share_information_for_surveillance(P, B) :-
    provider(P),
    notified_body(B).

must_carry_out_periodic_audits(B, P) :-
    notified_body(B),
    provider(P).

provenance(annex_vii_conformity_assessment_procedure/1, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_qms_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_provider_details_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_ai_system_list_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_technical_documentation_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_qms_documentation_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_adequacy_procedures_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_declare_no_duplicate_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_qms_compliance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_qms_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_approved_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_intended_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_technical_documentation_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_provider_details_in_td_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_declare_no_duplicate_td_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_technical_documentation_in_td_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data_sets/2, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence_or_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_tests_if_unsatisfied/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models_on_reasoned_request/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_td_assessment_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate_if_conformity/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate_if_non_conformity/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_changes_affecting_compliance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_intended_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_surveil_approved_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_premises_access_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/2, 'celex:32024R1689/oj#anx_7').

references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
