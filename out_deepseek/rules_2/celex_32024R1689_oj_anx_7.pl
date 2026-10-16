% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 8153503b78a65444a1cb863d299de6ffd4a31b7755dc8a4db98583ce613c58a5
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred must_lodge_application/2, gloss('provider must lodge application with notified body'), source('celex:32024R1689/oj#anx_7').
- pred must_include_in_application/2, gloss('application must include specified documentation'), source('celex:32024R1689/oj#anx_7').
- pred must_assess_quality_management_system/2, gloss('notified body must assess quality management system'), source('celex:32024R1689/oj#anx_7').
- pred must_notify_decision/3, gloss('notified body must notify decision to provider or authorised representative'), source('celex:32024R1689/oj#anx_7').
- pred must_maintain_quality_management_system/1, gloss('provider must maintain approved quality management system'), source('celex:32024R1689/oj#anx_7').
- pred must_notify_intended_change/2, gloss('provider must notify notified body of intended change'), source('celex:32024R1689/oj#anx_7').
- pred must_examine_proposed_changes/2, gloss('notified body must examine proposed changes'), source('celex:32024R1689/oj#anx_7').
- pred must_lodge_technical_documentation_application/2, gloss('provider must lodge application for technical documentation assessment'), source('celex:32024R1689/oj#anx_7').
- pred must_examine_technical_documentation/2, gloss('notified body must examine technical documentation'), source('celex:32024R1689/oj#anx_7').
- pred must_grant_access_to_data/2, gloss('notified body must be granted access to training, validation and testing data'), source('celex:32024R1689/oj#anx_7').
- pred may_require_further_evidence/2, gloss('notified body may require further evidence or tests'), source('celex:32024R1689/oj#anx_7').
- pred must_carry_out_adequate_tests/2, gloss('notified body must carry out adequate tests if not satisfied'), source('celex:32024R1689/oj#anx_7').
- pred must_grant_access_to_models/2, gloss('notified body must be granted access to training and trained models'), source('celex:32024R1689/oj#anx_7').
- pred must_issue_union_technical_documentation_assessment_certificate/2, gloss('notified body must issue certificate if system conforms'), source('celex:32024R1689/oj#anx_7').
- pred must_refuse_certificate/2, gloss('notified body must refuse certificate if system does not conform'), source('celex:32024R1689/oj#anx_7').
- pred must_inform_applicant_of_refusal/3, gloss('notified body must inform applicant of refusal with reasons'), source('celex:32024R1689/oj#anx_7').
- pred must_assess_change_to_ai_system/2, gloss('notified body must assess change to AI system'), source('celex:32024R1689/oj#anx_7').
- pred must_inform_notified_body_of_change/2, gloss('provider must inform notified body of change'), source('celex:32024R1689/oj#anx_7').
- pred must_issue_supplement_to_certificate/2, gloss('notified body must issue supplement to certificate if changes approved'), source('celex:32024R1689/oj#anx_7').
- pred must_carry_out_surveillance/2, gloss('notified body must carry out surveillance of quality management system'), source('celex:32024R1689/oj#anx_7').
- pred must_allow_access_to_premises/2, gloss('provider must allow notified body access to premises'), source('celex:32024R1689/oj#anx_7').
- pred must_share_information/2, gloss('provider must share necessary information with notified body'), source('celex:32024R1689/oj#anx_7').
- pred must_carry_out_periodic_audits/2, gloss('notified body must carry out periodic audits'), source('celex:32024R1689/oj#anx_7').
- pred must_provide_audit_report/2, gloss('notified body must provide audit report to provider'), source('celex:32024R1689/oj#anx_7').
- pred may_carry_out_additional_tests/2, gloss('notified body may carry out additional tests during audits'), source('celex:32024R1689/oj#anx_7').

% 3.1 Application content
must_include_in_application(Provider, application(quality_management_system, NotifiedBody)) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_lodge_application(Provider, NotifiedBody).

must_include_in_application(Provider, name_and_address(Provider)) :-
    provider(Provider).
must_include_in_application(Provider, name_and_address(Representative)) :-
    authorised_representative(Representative),
    must_lodge_application(Representative, _NotifiedBody).
must_include_in_application(Provider, list_of_ai_systems(Systems)) :-
    provider(Provider),
    Systems = [_|_]. % non-empty list
must_include_in_application(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System).
must_include_in_application(Provider, quality_management_system_documentation) :-
    provider(Provider).
must_include_in_application(Provider, description_of_procedures) :-
    provider(Provider).
must_include_in_application(Provider, written_declaration_no_other_application) :-
    provider(Provider).

% 3.2 Assessment of QMS
must_assess_quality_management_system(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_lodge_application(Provider, NotifiedBody).

must_notify_decision(NotifiedBody, Provider, assessment(quality_management_system, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_quality_management_system(NotifiedBody, Provider).

must_notify_decision(NotifiedBody, Representative, assessment(quality_management_system, Decision)) :-
    notified_body(NotifiedBody),
    authorised_representative(Representative),
    must_lodge_application(Representative, NotifiedBody).

% 3.3 Maintenance
must_maintain_quality_management_system(Provider) :-
    provider(Provider),
    must_assess_quality_management_system(_NotifiedBody, Provider).

% 3.4 Changes to QMS
must_notify_intended_change(Provider, change(quality_management_system)) :-
    provider(Provider),
    must_maintain_quality_management_system(Provider).

must_notify_intended_change(Provider, change(list_of_ai_systems)) :-
    provider(Provider),
    must_maintain_quality_management_system(Provider).

must_examine_proposed_changes(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_notify_intended_change(Provider, _Change).

must_notify_decision(NotifiedBody, Provider, assessment(proposed_changes, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_proposed_changes(NotifiedBody, Provider).

% 4.1 Application for technical documentation assessment
must_lodge_technical_documentation_application(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_lodge_application(Provider, NotifiedBody),
    placing_on_market(System),
    ai_system(System).

must_lodge_technical_documentation_application(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_lodge_application(Provider, NotifiedBody),
    putting_into_service(System),
    ai_system(System).

% 4.2 Content of technical documentation application
must_include_in_application(Provider, name_and_address(Provider)) :-
    must_lodge_technical_documentation_application(Provider, _NotifiedBody).

must_include_in_application(Provider, written_declaration_no_other_application) :-
    must_lodge_technical_documentation_application(Provider, _NotifiedBody).

must_include_in_application(Provider, technical_documentation_annex_4) :-
    must_lodge_technical_documentation_application(Provider, _NotifiedBody).

% 4.3 Examination of technical documentation
must_examine_technical_documentation(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_lodge_technical_documentation_application(Provider, NotifiedBody).

must_grant_access_to_data(NotifiedBody, data(training, validation, testing)) :-
    notified_body(NotifiedBody),
    must_examine_technical_documentation(NotifiedBody, _Provider).

% 4.4 Further evidence and tests
may_require_further_evidence(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider).

must_carry_out_adequate_tests(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    may_require_further_evidence(NotifiedBody, Provider),
    \+ satisfied_with_tests(NotifiedBody, Provider).

% 4.5 Access to models
must_grant_access_to_models(NotifiedBody, models(training, trained)) :-
    notified_body(NotifiedBody),
    must_examine_technical_documentation(NotifiedBody, _Provider),
    high_risk_ai_system(_System),
    \+ other_reasonable_means_sufficient(NotifiedBody).

% 4.6 Decision on technical documentation
must_notify_decision(NotifiedBody, Provider, assessment(technical_documentation, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider).

must_notify_decision(NotifiedBody, Representative, assessment(technical_documentation, Decision)) :-
    notified_body(NotifiedBody),
    authorised_representative(Representative),
    must_examine_technical_documentation(NotifiedBody, _Provider).

must_issue_union_technical_documentation_assessment_certificate(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider),
    conformity_assessment(System),
    ai_system(System).

must_refuse_certificate(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider),
    \+ conformity_assessment(_System).

must_inform_applicant_of_refusal(NotifiedBody, Provider, reasons(RefusalReasons)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_refuse_certificate(NotifiedBody, Provider).

must_inform_applicant_of_refusal(NotifiedBody, Provider, reasons(data_quality, NonComplianceReasons)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_refuse_certificate(NotifiedBody, Provider),
    \+ meets_data_requirement(System).

% 4.7 Changes to AI system
must_inform_notified_body_of_change(Provider, change(ai_system, System)) :-
    provider(Provider),
    ai_system(System),
    must_issue_union_technical_documentation_assessment_certificate(NotifiedBody, Provider),
    change_affects_compliance(System).

must_assess_change_to_ai_system(NotifiedBody, change(ai_system, System)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_inform_notified_body_of_change(Provider, change(ai_system, System)).

must_issue_supplement_to_certificate(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_change_to_ai_system(NotifiedBody, change(ai_system, _System)),
    \+ requires_new_conformity_assessment(_System).

must_notify_decision(NotifiedBody, Provider, assessment(change, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_change_to_ai_system(NotifiedBody, change(ai_system, _System)).

% 5.1 Surveillance purpose
must_carry_out_surveillance(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_quality_management_system(NotifiedBody, Provider).

% 5.2 Access for surveillance
must_allow_access_to_premises(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_carry_out_surveillance(NotifiedBody, Provider).

must_share_information(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_carry_out_surveillance(NotifiedBody, Provider).

% 5.3 Periodic audits
must_carry_out_periodic_audits(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_carry_out_surveillance(NotifiedBody, Provider).

must_provide_audit_report(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_carry_out_periodic_audits(NotifiedBody, Provider).

may_carry_out_additional_tests(NotifiedBody, System) :-
    notified_body(NotifiedBody),
    ai_system(System),
    must_carry_out_periodic_audits(NotifiedBody, _Provider),
    must_issue_union_technical_documentation_assessment_certificate(NotifiedBody, _Provider).

% Provenance
provenance(must_lodge_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_intended_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_proposed_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_technical_documentation_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data/2, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_adequate_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_union_technical_documentation_assessment_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_applicant_of_refusal/3, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_change_to_ai_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_notified_body_of_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_supplement_to_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_to_premises/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(must_provide_audit_report/2, 'celex:32024R1689/oj#anx_7').
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
