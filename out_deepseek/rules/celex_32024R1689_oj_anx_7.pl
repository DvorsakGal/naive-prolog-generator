% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 73f33b84aa2dbdefc689d8181634606fe2b9f9b337177e5a0d805d6f6b1eb454
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred application_includes/2, gloss('application includes specified item'), source('celex:32024R1689/oj#anx_7').
:- pred quality_management_system_assessed/2, gloss('notified body assesses quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify/2, gloss('entity must notify another entity'), source('celex:32024R1689/oj#anx_7').
:- pred must_implement/2, gloss('entity must implement and maintain something'), source('celex:32024R1689/oj#anx_7').
:- pred must_inform/2, gloss('entity must inform another entity of something'), source('celex:32024R1689/oj#anx_7').
:- pred must_examine/2, gloss('entity must examine something'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_access/3, gloss('entity must grant access to something for purpose'), source('celex:32024R1689/oj#anx_7').
:- pred may_require/2, gloss('entity may require something'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out/2, gloss('entity must carry out tests'), source('celex:32024R1689/oj#anx_7').
:- pred must_issue/2, gloss('entity must issue certificate'), source('celex:32024R1689/oj#anx_7').
:- pred must_refuse/2, gloss('entity must refuse to issue certificate'), source('celex:32024R1689/oj#anx_7').
:- pred must_assess/2, gloss('entity must assess changes'), source('celex:32024R1689/oj#anx_7').
:- pred must_allow_access/2, gloss('entity must allow access to premises'), source('celex:32024R1689/oj#anx_7').
:- pred must_share/2, gloss('entity must share information'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out_audits/2, gloss('entity must carry out periodic audits'), source('celex:32024R1689/oj#anx_7').
:- pred must_provide/2, gloss('entity must provide audit report'), source('celex:32024R1689/oj#anx_7').

% 3.1 Application contents
application_includes(application(Provider), name_and_address(Provider)) :-
    provider(Provider).
application_includes(application(Provider), name_and_address(Representative)) :-
    authorised_representative(Representative),
    lodged_by(application(Provider), Representative).
application_includes(application(Provider), list_of_ai_systems(Systems)) :-
    provider(Provider),
    covered_by_same_qms(Systems).
application_includes(application(Provider), technical_documentation(System)) :-
    provider(Provider),
    covered_by_same_qms(System).
application_includes(application(Provider), qms_documentation(Doc)) :-
    provider(Provider),
    covers_all_aspects(Doc, 'celex:32024R1689/oj#art_17').
application_includes(application(Provider), procedures_ensuring_qms_adequacy(Procs)) :-
    provider(Provider).
application_includes(application(Provider), declaration_no_other_body) :-
    provider(Provider).

% 3.2 Assessment of QMS
quality_management_system_assessed(NotifiedBody, QMS) :-
    notified_body(NotifiedBody),
    satisfies_requirements(QMS, 'celex:32024R1689/oj#art_17').

must_notify(NotifiedBody, decision(assessment(QMS), Conclusions, ReasonedDecision)) :-
    notified_body(NotifiedBody),
    quality_management_system_assessed(NotifiedBody, QMS),
    provider_or_representative(Recipient),
    must_notify(NotifiedBody, Recipient).

% 3.3 Continued implementation
must_implement(Provider, quality_management_system(QMS)) :-
    provider(Provider),
    quality_management_system_assessed(_, QMS).

% 3.4 Changes to QMS
must_inform(Provider, intended_change(Change)) :-
    provider(Provider),
    intended_change_to_qms(Change).

must_examine(NotifiedBody, proposed_changes(Changes)) :-
    notified_body(NotifiedBody),
    proposed_changes(Changes).

must_notify(NotifiedBody, decision(changes(Changes), Conclusions, ReasonedDecision)) :-
    notified_body(NotifiedBody),
    must_examine(NotifiedBody, proposed_changes(Changes)).

% 4.1 Application for technical documentation assessment
must_lodge(Provider, application(technical_documentation(System))) :-
    provider(Provider),
    intends_to_place_or_put_into_service(Provider, System),
    covered_by_qms(System).

% 4.2 Application contents for technical documentation
application_includes(application(technical_documentation(System)), name_and_address(Provider)) :-
    provider(Provider).
application_includes(application(technical_documentation(System)), declaration_no_other_body) :-
    provider(Provider).
application_includes(application(technical_documentation(System)), technical_documentation_annex_iv(Doc)) :-
    provider(Provider),
    technical_documentation_referred_to(Doc, 'celex:32024R1689/oj#anx_4').

% 4.3 Examination of technical documentation
must_examine(NotifiedBody, technical_documentation(System)) :-
    notified_body(NotifiedBody),
    technical_documentation(System).

must_grant_access(Provider, NotifiedBody, training_validation_testing_data(System)) :-
    notified_body(NotifiedBody),
    must_examine(NotifiedBody, technical_documentation(System)),
    provider(Provider).

% 4.4 Further evidence and tests
may_require(NotifiedBody, further_evidence_or_tests(Provider)) :-
    notified_body(NotifiedBody),
    examining_technical_documentation(NotifiedBody, System).

must_carry_out(NotifiedBody, adequate_tests(System)) :-
    notified_body(NotifiedBody),
    not_satisfied_with_tests(NotifiedBody, Provider).

% 4.5 Access to training and trained models
must_grant_access(Provider, NotifiedBody, training_and_trained_models(System)) :-
    notified_body(NotifiedBody),
    necessary_to_assess_conformity(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    exhausted_other_means(System),
    reasoned_request(NotifiedBody).

% 4.6 Decision and certificate
must_notify(NotifiedBody, decision(technical_documentation(System), Conclusions, ReasonedDecision)) :-
    notified_body(NotifiedBody),
    must_examine(NotifiedBody, technical_documentation(System)).

must_issue(NotifiedBody, union_technical_documentation_assessment_certificate(System, Provider, Conclusions, Conditions, IdentificationData)) :-
    notified_body(NotifiedBody),
    in_conformity_with(System, 'celex:32024R1689/oj#chp_3/sec_2').

must_refuse(NotifiedBody, union_technical_documentation_assessment_certificate(System)) :-
    notified_body(NotifiedBody),
    \+ in_conformity_with(System, 'celex:32024R1689/oj#chp_3/sec_2').

must_inform(NotifiedBody, refusal_reasons(Applicant, detailed_reasons)) :-
    must_refuse(NotifiedBody, union_technical_documentation_assessment_certificate(System)).

% 4.7 Changes to AI system
must_inform(Provider, intended_change_to_ai_system(Change)) :-
    provider(Provider),
    change_affecting_compliance_or_purpose(Change).

must_assess(NotifiedBody, intended_changes(Changes)) :-
    notified_body(NotifiedBody),
    issued_certificate(NotifiedBody, System).

must_notify(NotifiedBody, decision(changes(Changes), require_new_assessment_or_supplement)) :-
    must_assess(NotifiedBody, intended_changes(Changes)).

must_issue(NotifiedBody, supplement_to_certificate(System, Changes)) :-
    notified_body(NotifiedBody),
    changes_approved(NotifiedBody, Changes).

% 5.1 Purpose of surveillance
surveillance_purpose(NotifiedBody, ensure_compliance(Provider, qms_terms_and_conditions)) :-
    notified_body(NotifiedBody),
    provider(Provider).

% 5.2 Access for assessment
must_allow_access(Provider, premises(design_development_testing)) :-
    provider(Provider),
    surveillance_purpose(NotifiedBody, _).

must_share(Provider, all_necessary_information) :-
    provider(Provider),
    surveillance_purpose(NotifiedBody, _).

% 5.3 Periodic audits
must_carry_out_audits(NotifiedBody, periodic_audits(Provider)) :-
    notified_body(NotifiedBody),
    provider(Provider).

must_provide(NotifiedBody, audit_report(Provider)) :-
    must_carry_out_audits(NotifiedBody, periodic_audits(Provider)).

% Provenance
provenance(application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(quality_management_system_assessed/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_implement/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access/3, 'celex:32024R1689/oj#anx_7').
provenance(may_require/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_7').

% References
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
