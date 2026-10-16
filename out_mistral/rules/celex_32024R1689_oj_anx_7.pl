% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 40023e0ab395be090c24584cd4c80afbab92ce6f01ceb3e337be91339980db89
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred quality_management_system/1, gloss('system for design, development and testing of AI systems'), source('celex:32024R1689/oj#anx_7').
:- pred approved_quality_management_system/1, gloss('quality management system approved by a notified body'), source('celex:32024R1689/oj#anx_7').
:- pred union_technical_documentation_assessment_certificate/1, gloss('certificate issued by notified body for technical documentation assessment'), source('celex:32024R1689/oj#anx_7').
:- pred conformity_assessment_procedure/1, gloss('procedure for demonstrating conformity of AI system'), source('celex:32024R1689/oj#anx_7').
:- pred application_for_quality_management_system_assessment/1, gloss('application lodged by provider for QMS assessment'), source('celex:32024R1689/oj#anx_7').
:- pred application_for_technical_documentation_assessment/1, gloss('application lodged by provider for technical documentation assessment'), source('celex:32024R1689/oj#anx_7').
:- pred surveillance_of_quality_management_system/1, gloss('ongoing surveillance of approved QMS by notified body'), source('celex:32024R1689/oj#anx_7').
:- pred periodic_audit/1, gloss('audit carried out by notified body to verify QMS maintenance'), source('celex:32024R1689/oj#anx_7').
:- pred change_to_approved_quality_management_system/1, gloss('intended change to approved QMS or covered AI systems list'), source('celex:32024R1689/oj#anx_7').
:- pred change_to_ai_system_affecting_compliance/1, gloss('change to AI system that could affect compliance or intended purpose'), source('celex:32024R1689/oj#anx_7').
:- pred supplement_to_certificate/1, gloss('supplement to Union technical documentation assessment certificate'), source('celex:32024R1689/oj#anx_7').

% Annex VII as a conformity assessment procedure
conformity_assessment_procedure(annex_vii_quality_management_and_technical_documentation).

% Point 2: Overview - QMS examined per point 3, surveillance per point 5, technical documentation per point 4
must_examine_quality_management_system(notified_body(B), quality_management_system(QMS)) :-
    approved_quality_management_system(QMS),
    notified_body(B).

must_subject_to_surveillance(notified_body(B), quality_management_system(QMS)) :-
    approved_quality_management_system(QMS),
    notified_body(B).

must_examine_technical_documentation(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S).

% Point 3.1: Application for QMS assessment must include specific elements
must_include_in_application(application_for_quality_management_system_assessment(A), provider_name_and_address(P)) :-
    provider(P).

must_include_in_application(application_for_quality_management_system_assessment(A), authorised_representative_name_and_address(AR)) :-
    authorised_representative(AR).

must_include_in_application(application_for_quality_management_system_assessment(A), list_of_ai_systems_covered(QMS)) :-
    quality_management_system(QMS).

must_include_in_application(application_for_quality_management_system_assessment(A), technical_documentation_for_each_ai_system(S)) :-
    ai_system(S).

must_include_in_application(application_for_quality_management_system_assessment(A), quality_management_system_documentation) :-
    application_for_quality_management_system_assessment(A).

must_include_in_application(application_for_quality_management_system_assessment(A), description_of_adequacy_and_effectiveness_procedures) :-
    application_for_quality_management_system_assessment(A).

must_include_in_application(application_for_quality_management_system_assessment(A), written_declaration_no_other_application_lodged).

% Point 3.2: QMS assessed by notified body, decision notified to provider or authorised representative
must_assess_quality_management_system(notified_body(B), quality_management_system(QMS)) :-
    notified_body(B),
    quality_management_system(QMS).

must_notify_assessment_decision(notified_body(B), provider(P), assessment_decision(QMS, conclusions, reasoned)) :-
    notified_body(B),
    provider(P),
    quality_management_system(QMS).

must_notify_assessment_decision(notified_body(B), authorised_representative(AR), assessment_decision(QMS, conclusions, reasoned)) :-
    notified_body(B),
    authorised_representative(AR),
    quality_management_system(QMS).

% Point 3.3: Approved QMS must continue to be implemented and maintained
must_implement_and_maintain(provider(P), quality_management_system(QMS)) :-
    provider(P),
    approved_quality_management_system(QMS).

% Point 3.4: Changes to approved QMS must be brought to notified body's attention
must_inform_of_change(provider(P), notified_body(B), change_to_approved_quality_management_system(Change)) :-
    provider(P),
    notified_body(B),
    approved_quality_management_system(QMS),
    change_to_approved_quality_management_system(Change),
    relates_to(Change, QMS).

must_examine_change(notified_body(B), change_to_approved_quality_management_system(Change)) :-
    notified_body(B),
    change_to_approved_quality_management_system(Change).

must_notify_change_decision(notified_body(B), provider(P), change_decision(Change, conclusions, reasoned)) :-
    notified_body(B),
    provider(P),
    change_to_approved_quality_management_system(Change).

% Point 4.1: Application for technical documentation assessment
must_lodge_application_for_technical_documentation(provider(P), notified_body(B), ai_system(S)) :-
    provider(P),
    notified_body(B),
    ai_system(S),
    intends_to_place_on_market_or_put_into_service(P, S),
    covered_by_quality_management_system(S, QMS),
    approved_quality_management_system(QMS).

% Point 4.2: Application for technical documentation must include specific elements
must_include_in_application(application_for_technical_documentation_assessment(A), provider_name_and_address(P)) :-
    provider(P).

must_include_in_application(application_for_technical_documentation_assessment(A), written_declaration_no_other_application_lodged).

must_include_in_application(application_for_technical_documentation_assessment(A), technical_documentation(S)) :-
    ai_system(S).

% Point 4.3: Notified body examined technical documentation, granted access to data sets
must_examine_technical_documentation(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S).

must_grant_access_to_data_sets(notified_body(B), ai_system(S), training_validation_testing_data_sets) :-
    notified_body(B),
    ai_system(S).

% Point 4.4: Notified body may require further evidence or tests
may_require_further_evidence_or_tests(notified_body(B), provider(P), ai_system(S)) :-
    notified_body(B),
    provider(P),
    ai_system(S).

may_carry_out_adequate_tests(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S),
    \+ satisfied_with_provider_tests(B, S).

% Point 4.5: Access to training and trained models under specific conditions
must_grant_access_to_training_and_models(notified_body(B), ai_system(S), training_and_trained_models) :-
    notified_body(B),
    ai_system(S),
    high_risk_ai_system(S),
    all_other_means_exhausted(S),
    reasoned_request(B, S),
    subject_to_ip_and_trade_secret_protection(S).

% Point 4.6: Decision on technical documentation assessment
must_notify_assessment_decision(notified_body(B), provider(P), technical_documentation_decision(S, conclusions, reasoned)) :-
    notified_body(B),
    provider(P),
    ai_system(S).

must_notify_assessment_decision(notified_body(B), authorised_representative(AR), technical_documentation_decision(S, conclusions, reasoned)) :-
    notified_body(B),
    authorised_representative(AR),
    ai_system(S).

must_issue_certificate(notified_body(B), union_technical_documentation_assessment_certificate(Cert)) :-
    notified_body(B),
    ai_system(S),
    in_conformity_with_requirements(S, chapter_3_section_2),
    union_technical_documentation_assessment_certificate(Cert),
    indicates(Cert, provider_name_and_address(P)),
    indicates(Cert, conclusions_of_examination),
    indicates(Cert, conditions_for_validity),
    indicates(Cert, data_for_identification(S)).

must_refuse_to_issue_certificate(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S),
    \+ in_conformity_with_requirements(S, chapter_3_section_2).

must_inform_of_refusal_with_reasons(notified_body(B), provider(P), detailed_reasons_for_refusal) :-
    notified_body(B),
    provider(P),
    ai_system(S),
    \+ in_conformity_with_requirements(S, chapter_3_section_2).

must_include_specific_considerations_on_training_data(notified_body(B), reasoned_assessment_decision, training_data_quality_considerations) :-
    notified_body(B),
    ai_system(S),
    does_not_meet_training_data_requirement(S).

must_require_retraining(provider(P), ai_system(S)) :-
    provider(P),
    ai_system(S),
    does_not_meet_training_data_requirement(S).

% Point 4.7: Changes to AI system affecting compliance
must_inform_of_change(provider(P), notified_body(B), change_to_ai_system_affecting_compliance(Change)) :-
    provider(P),
    notified_body(B),
    ai_system(S),
    union_technical_documentation_assessment_certificate(Cert),
    issued_by(Cert, B),
    change_to_ai_system_affecting_compliance(Change),
    relates_to(Change, S).

must_assess_change(notified_body(B), change_to_ai_system_affecting_compliance(Change)) :-
    notified_body(B),
    change_to_ai_system_affecting_compliance(Change).

must_decide_on_change(notified_body(B), provider(P), change_decision(Change, new_conformity_assessment_required)) :-
    notified_body(B),
    provider(P),
    change_to_ai_system_affecting_compliance(Change),
    requires_new_conformity_assessment(Change).

must_decide_on_change(notified_body(B), provider(P), change_decision(Change, supplement_to_certificate)) :-
    notified_body(B),
    provider(P),
    change_to_ai_system_affecting_compliance(Change),
    \+ requires_new_conformity_assessment(Change).

must_issue_supplement(notified_body(B), provider(P), supplement_to_certificate(Supplement)) :-
    notified_body(B),
    provider(P),
    change_to_ai_system_affecting_compliance(Change),
    \+ requires_new_conformity_assessment(Change),
    approved(Change),
    supplement_to_certificate(Supplement).

% Point 5.1: Purpose of surveillance
objective_of_surveillance(surveillance_of_quality_management_system(QMS), ensure_compliance_with_approved_qms_terms) :-
    approved_quality_management_system(QMS).

% Point 5.2: Provider must allow access to premises and share information
must_allow_access_to_premises(provider(P), notified_body(B), premises_for_design_development_testing) :-
    provider(P),
    notified_body(B),
    approved_quality_management_system(QMS),
    relates_to(QMS, P).

must_share_information(provider(P), notified_body(B), necessary_information) :-
    provider(P),
    notified_body(B),
    approved_quality_management_system(QMS),
    relates_to(QMS, P).

% Point 5.3: Periodic audits
must_carry_out_periodic_audits(notified_body(B), provider(P), periodic_audit(Audit)) :-
    notified_body(B),
    provider(P),
    approved_quality_management_system(QMS),
    relates_to(QMS, P),
    periodic_audit(Audit).

must_provide_audit_report(notified_body(B), provider(P), audit_report) :-
    notified_body(B),
    provider(P),
    periodic_audit(Audit).

may_carry_out_additional_tests(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S),
    union_technical_documentation_assessment_certificate(Cert),
    issued_for(Cert, S).

% Helper predicates
high_risk_ai_system(S) :-
    ai_system(S).

intends_to_place_on_market_or_put_into_service(P, S) :-
    provider(P),
    ai_system(S).

covered_by_quality_management_system(S, QMS) :-
    ai_system(S),
    quality_management_system(QMS).

relates_to(QMS, P) :-
    quality_management_system(QMS),
    provider(P).

relates_to(Change, QMS) :-
    change_to_approved_quality_management_system(Change),
    quality_management_system(QMS).

relates_to(Change, S) :-
    change_to_ai_system_affecting_compliance(Change),
    ai_system(S).

issued_by(Cert, B) :-
    union_technical_documentation_assessment_certificate(Cert),
    notified_body(B).

issued_for(Cert, S) :-
    union_technical_documentation_assessment_certificate(Cert),
    ai_system(S).

indicates(Cert, provider_name_and_address(P)) :-
    union_technical_documentation_assessment_certificate(Cert),
    provider(P).

indicates(Cert, conclusions_of_examination).
indicates(Cert, conditions_for_validity).
indicates(Cert, data_for_identification(S)) :-
    union_technical_documentation_assessment_certificate(Cert),
    ai_system(S).

in_conformity_with_requirements(S, chapter_3_section_2) :-
    ai_system(S).

satisfied_with_provider_tests(B, S) :-
    notified_body(B),
    ai_system(S).

all_other_means_exhausted(S) :-
    ai_system(S).

reasoned_request(B, S) :-
    notified_body(B),
    ai_system(S).

subject_to_ip_and_trade_secret_protection(S) :-
    ai_system(S).

does_not_meet_training_data_requirement(S) :-
    ai_system(S).

requires_new_conformity_assessment(Change) :-
    change_to_ai_system_affecting_compliance(Change).

approved(Change) :-
    change_to_ai_system_affecting_compliance(Change).

% Provenance
provenance(quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(approved_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(union_technical_documentation_assessment_certificate/1, 'celex:32024R1689/oj#anx_7').
provenance(conformity_assessment_procedure/1, 'celex:32024R1689/oj#anx_7').
provenance(application_for_quality_management_system_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(application_for_technical_documentation_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(surveillance_of_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(periodic_audit/1, 'celex:32024R1689/oj#anx_7').
provenance(change_to_approved_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(change_to_ai_system_affecting_compliance/1, 'celex:32024R1689/oj#anx_7').
provenance(supplement_to_certificate/1, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_subject_to_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_assessment_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(must_implement_and_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_change/3, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_change_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_application_for_technical_documentation/3, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data_sets/3, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence_or_tests/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_adequate_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_training_and_models/3, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_to_issue_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_refusal_with_reasons/3, 'celex:32024R1689/oj#anx_7').
provenance(must_include_specific_considerations_on_training_data/3, 'celex:32024R1689/oj#anx_7').
provenance(must_require_retraining/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_decide_on_change/3, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_supplement/3, 'celex:32024R1689/oj#anx_7').
provenance(objective_of_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_to_premises/3, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/3, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/3, 'celex:32024R1689/oj#anx_7').
provenance(must_provide_audit_report/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_additional_tests/2, 'celex:32024R1689/oj#anx_7').

% References
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
