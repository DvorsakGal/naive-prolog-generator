% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 579f5f49563dd906ef9d8be87ce18463d86f4ddcc7a6f2c0235f8a5832b3a2f1
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred conformity_assessment_procedure_annex_7/1, gloss('conformity assessment based on quality management system and technical documentation under Annex VII'), source('celex:32024R1689/oj#anx_7').

conformity_assessment_procedure_annex_7(S) :-
    quality_management_system_assessment(S),
    technical_documentation_assessment(S),
    surveillance_applies(S).

:- pred quality_management_system_assessment/1, gloss('assessment of approved quality management system under Annex VII point 3'), source('celex:32024R1689/oj#anx_7').

quality_management_system_assessment(S) :-
    approved_quality_management_system(Qms),
    covers_system(Qms, S),
    must_lodge_application(_Provider, application(Qms, S)),
    assessed_by_notified_body(Qms, _NotifiedBody),
    satisfies_requirements(Qms, art_17).

:- pred technical_documentation_assessment/1, gloss('assessment of technical documentation under Annex VII point 4'), source('celex:32024R1689/oj#anx_7').

technical_documentation_assessment(S) :-
    technical_documentation(S),
    must_lodge_application(_Provider, technical_documentation_application(S)),
    examined_by_notified_body(S, _NotifiedBody),
    conformity_verified(S, chapter_3_section_2).

:- pred surveillance_applies/1, gloss('surveillance of approved quality management system applies to system'), source('celex:32024R1689/oj#anx_7').

surveillance_applies(S) :-
    approved_quality_management_system(Qms),
    covers_system(Qms, S),
    periodic_audits_conducted(Qms, _NotifiedBody).

:- pred must_lodge_application/2, gloss('provider must lodge application with notified body'), source('celex:32024R1689/oj#anx_7').

must_lodge_application(Provider, application(Qms, S)) :-
    provider(Provider),
    quality_management_system(Qms),
    ai_system(S),
    covers_system(Qms, S),
    application_includes(Provider, name_address),
    application_includes(Provider, list_of_systems(Qms)),
    application_includes(Provider, technical_documentation_for_each(S)),
    application_includes(Provider, qms_documentation(art_17)),
    application_includes(Provider, procedures_adequate_effective),
    application_includes(Provider, declaration_not_lodged_elsewhere).

must_lodge_application(Provider, technical_documentation_application(S)) :-
    provider(Provider),
    ai_system(S),
    intended_for_placing_on_market_or_putting_into_service(S),
    covered_by_qms(S, _Qms),
    application_includes(Provider, name_address),
    application_includes(Provider, declaration_not_lodged_elsewhere),
    application_includes(Provider, technical_documentation(annex_4)).

:- pred application_includes/2, gloss('application includes specified element'), source('celex:32024R1689/oj#anx_7').

application_includes(_Provider, name_address).
application_includes(_Provider, list_of_systems(_Qms)).
application_includes(_Provider, technical_documentation_for_each(_S)).
application_includes(_Provider, qms_documentation(art_17)).
application_includes(_Provider, procedures_adequate_effective).
application_includes(_Provider, declaration_not_lodged_elsewhere).
application_includes(_Provider, technical_documentation(annex_4)).

:- pred assessed_by_notified_body/2, gloss('quality management system assessed by notified body'), source('celex:32024R1689/oj#anx_7').

assessed_by_notified_body(Qms, NotifiedBody) :-
    approved_quality_management_system(Qms),
    notified_body(NotifiedBody),
    determines_satisfaction(Qms, requirements(art_17), NotifiedBody),
    notified_decision(NotifiedBody, Provider, assessment_conclusions(Qms), reasoned_decision).

:- pred determines_satisfaction/3, gloss('notified body determines whether system satisfies requirements'), source('celex:32024R1689/oj#anx_7').

determines_satisfaction(Qms, requirements(art_17), NotifiedBody) :-
    approved_quality_management_system(Qms),
    notified_body(NotifiedBody).

:- pred notified_decision/4, gloss('notified body notifies decision to provider'), source('celex:32024R1689/oj#anx_7').

notified_decision(NotifiedBody, Provider, Conclusions, ReasonedDecision) :-
    notified_body(NotifiedBody),
    operator(Provider),
    assessment_conclusions(_Qms, Conclusions),
    reasoned_assessment_decision(_Qms, ReasonedDecision).

:- pred assessment_conclusions/2, gloss('conclusions of quality management system assessment'), source('celex:32024R1689/oj#anx_7').

assessment_conclusions(_Qms, conclusions).

:- pred reasoned_assessment_decision/2, gloss('reasoned assessment decision on quality management system'), source('celex:32024R1689/oj#anx_7').

reasoned_assessment_decision(_Qms, reasoned_decision).

:- pred satisfies_requirements/2, gloss('quality management system satisfies specified requirements'), source('celex:32024R1689/oj#anx_7').

satisfies_requirements(Qms, art_17) :-
    approved_quality_management_system(Qms).

:- pred covers_system/2, gloss('quality management system covers AI system'), source('celex:32024R1689/oj#anx_7').

covers_system(Qms, S) :-
    approved_quality_management_system(Qms),
    ai_system(S).

:- pred intended_for_placing_on_market_or_putting_into_service/1, gloss('AI system intended to be placed on market or put into service'), source('celex:32024R1689/oj#anx_7').

intended_for_placing_on_market_or_putting_into_service(S) :-
    ai_system(S),
    (placing_on_market(S); putting_into_service(S)).

:- pred covered_by_qms/2, gloss('AI system covered by quality management system'), source('celex:32024R1689/oj#anx_7').

covered_by_qms(S, Qms) :-
    ai_system(S),
    approved_quality_management_system(Qms),
    covers_system(Qms, S).

:- pred examined_by_notified_body/2, gloss('technical documentation examined by notified body'), source('celex:32024R1689/oj#anx_7').

examined_by_notified_body(S, NotifiedBody) :-
    technical_documentation(S),
    notified_body(NotifiedBody),
    granted_access(NotifiedBody, training_validation_testing_data(S)),
    may_require_further_evidence(NotifiedBody, Provider, S),
    may_require_further_tests(NotifiedBody, Provider, S),
    may_carry_out_tests_directly(NotifiedBody, S),
    may_request_model_access(NotifiedBody, S),
    issues_certificate_or_refusal(NotifiedBody, S).

:- pred granted_access/2, gloss('notified body granted access to data sets'), source('celex:32024R1689/oj#anx_7').

granted_access(NotifiedBody, training_validation_testing_data(S)) :-
    notified_body(NotifiedBody),
    ai_system(S),
    training_data(_),
    validation_data(_),
    testing_data(_),
    access_limited_necessary(NotifiedBody, S),
    security_safeguards_apply,
    remote_access_possible(api_or_other_means).

:- pred access_limited_necessary/2, gloss('access limited to what is necessary for notified body tasks'), source('celex:32024R1689/oj#anx_7').

access_limited_necessary(_NotifiedBody, _S).

:- pred security_safeguards_apply/0, gloss('security safeguards apply to notified body access'), source('celex:32024R1689/oj#anx_7').

security_safeguards_apply.

:- pred remote_access_possible/1, gloss('remote access possible through specified means'), source('celex:32024R1689/oj#anx_7').

remote_access_possible(api_or_other_means).

:- pred may_require_further_evidence/3, gloss('notified body may require provider to supply further evidence'), source('celex:32024R1689/oj#anx_7').

may_require_further_evidence(NotifiedBody, Provider, S) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(S).

:- pred may_require_further_tests/3, gloss('notified body may require provider to carry out further tests'), source('celex:32024R1689/oj#anx_7').

may_require_further_tests(NotifiedBody, Provider, S) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(S).

:- pred may_carry_out_tests_directly/2, gloss('notified body may itself carry out adequate tests'), source('celex:32024R1689/oj#anx_7').

may_carry_out_tests_directly(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    \+ tests_satisfactory(_Provider, S).

:- pred may_request_model_access/2, gloss('notified body may be granted access to trained models after reasonable means exhausted'), source('celex:32024R1689/oj#anx_7').

may_request_model_access(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    high_risk_ai_system(S),
    reasonable_means_exhausted(_Provider, S),
    reasoned_request(NotifiedBody, S),
    union_law_intellectual_property_protection_applies,
    trade_secrets_protection_applies.

:- pred union_law_intellectual_property_protection_applies/0, gloss('existing Union law on intellectual property protection applies'), source('celex:32024R1689/oj#anx_7').

union_law_intellectual_property_protection_applies.

:- pred trade_secrets_protection_applies/0, gloss('trade secrets protection applies to model access'), source('celex:32024R1689/oj#anx_7').

trade_secrets_protection_applies.

:- pred issues_certificate_or_refusal/2, gloss('notified body issues certificate or refusal'), source('celex:32024R1689/oj#anx_7').

issues_certificate_or_refusal(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    (conformity_verified(S, chapter_3_section_2) ->
        issues_union_technical_documentation_certificate(NotifiedBody, S)
    ;
        refuses_certificate(NotifiedBody, S, detailed_reasons)
    ).

:- pred conformity_verified/2, gloss('conformity of AI system verified against requirements'), source('celex:32024R1689/oj#anx_7').

conformity_verified(S, chapter_3_section_2) :-
    ai_system(S),
    requirements_in_chapter_3_section_2(S).

:- pred issues_union_technical_documentation_certificate/2, gloss('notified body issues Union technical documentation assessment certificate'), source('celex:32024R1689/oj#anx_7').

issues_union_technical_documentation_certificate(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    certificate_indicates(Provider, conclusions, conditions, identification_data),
    certificate_allows_conformity_evaluation(S),
    certificate_allows_control_in_use(S).

:- pred certificate_indicates/4, gloss('certificate indicates specified information'), source('celex:32024R1689/oj#anx_7').

certificate_indicates(_Provider, _Conclusions, _Conditions, _IdentificationData).

:- pred certificate_allows_conformity_evaluation/1, gloss('certificate allows conformity of AI system to be evaluated'), source('celex:32024R1689/oj#anx_7').

certificate_allows_conformity_evaluation(_S).

:- pred certificate_allows_control_in_use/1, gloss('certificate allows control of AI system while in use where applicable'), source('celex:32024R1689/oj#anx_7').

certificate_allows_control_in_use(_S).

:- pred refuses_certificate/3, gloss('notified body refuses certificate with detailed reasons'), source('celex:32024R1689/oj#anx_7').

refuses_certificate(NotifiedBody, S, detailed_reasons) :-
    notified_body(NotifiedBody),
    ai_system(S),
    \+ conformity_verified(S, chapter_3_section_2),
    informs_applicant(NotifiedBody, _Provider, refusal(S)),
    (data_training_requirement_not_met(S) ->
        re_training_needed(S),
        reasoned_decision_includes(NotifiedBody, S, quality_data_considerations, non_compliance_reasons)
    ;
        true
    ).

:- pred informs_applicant/3, gloss('notified body informs applicant of decision'), source('celex:32024R1689/oj#anx_7').

informs_applicant(NotifiedBody, Provider, Decision) :-
    notified_body(NotifiedBody),
    operator(Provider).

:- pred data_training_requirement_not_met/1, gloss('AI system does not meet requirement relating to training data'), source('celex:32024R1689/oj#anx_7').

data_training_requirement_not_met(S) :-
    ai_system(S),
    \+ data_training_requirement_met(S).

:- pred re_training_needed/1, gloss('re-training of AI system needed before new conformity assessment'), source('celex:32024R1689/oj#anx_7').

re_training_needed(S) :-
    ai_system(S),
    data_training_requirement_not_met(S).

:- pred reasoned_decision_includes/4, gloss('reasoned decision includes specific considerations on specified matters'), source('celex:32024R1689/oj#anx_7').

reasoned_decision_includes(_NotifiedBody, _S, quality_data_considerations, non_compliance_reasons).

:- pred change_assessment_required/2, gloss('change to AI system requires assessment by issuing notified body'), source('celex:32024R1689/oj#anx_7').

change_assessment_required(S, Change) :-
    ai_system(S),
    substantial_modification(Change),
    affects_compliance(Change, S),
    affects_intended_purpose(Change, S),
    notified_body_issued_certificate(NotifiedBody, S),
    provider_informs_notified_body(Provider, NotifiedBody, Change),
    assessed_by_notified_body(Change, NotifiedBody),
    (new_conformity_assessment_needed(Change, S) ->
        new_conformity_assessment_required(Change, S, art_43_par_4)
    ;
        supplement_to_certificate_issued(NotifiedBody, S, Change)
    ).

:- pred affects_compliance/2, gloss('change affects compliance of AI system with requirements'), source('celex:32024R1689/oj#anx_7').

affects_compliance(Change, S) :-
    substantial_modification(Change),
    ai_system(S).

:- pred affects_intended_purpose/2, gloss('change affects intended purpose of AI system'), source('celex:32024R1689/oj#anx_7').

affects_intended_purpose(Change, S) :-
    substantial_modification(Change),
    ai_system(S).

:- pred notified_body_issued_certificate/2, gloss('notified body issued Union technical documentation assessment certificate for system'), source('celex:32024R1689/oj#anx_7').

notified_body_issued_certificate(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    issues_union_technical_documentation_certificate(NotifiedBody, S).

:- pred provider_informs_notified_body/3, gloss('provider informs notified body of intended change'), source('celex:32024R1689/oj#anx_7').

provider_informs_notified_body(Provider, NotifiedBody, Change) :-
    provider(Provider),
    notified_body(NotifiedBody),
    substantial_modification(Change).

:- pred assessed_by_notified_body/2, gloss('change assessed by notified body'), source('celex:32024R1689/oj#anx_7').

assessed_by_notified_body(Change, NotifiedBody) :-
    substantial_modification(Change),
    notified_body(NotifiedBody),
    decides_change_assessment(NotifiedBody, Change, _Decision).

:- pred decides_change_assessment/3, gloss('notified body decides whether change requires new assessment or supplement'), source('celex:32024R1689/oj#anx_7').

decides_change_assessment(NotifiedBody, Change, new_conformity_assessment) :-
    notified_body(NotifiedBody),
    substantial_modification(Change),
    new_conformity_assessment_needed(Change, _S).

decides_change_assessment(NotifiedBody, Change, supplement) :-
    notified_body(NotifiedBody),
    substantial_modification(Change),
    \+ new_conformity_assessment_needed(Change, _S).

:- pred new_conformity_assessment_required/3, gloss('new conformity assessment required for change under specified article'), source('celex:32024R1689/oj#anx_7').

new_conformity_assessment_required(Change, S, art_43_par_4) :-
    substantial_modification(Change),
    ai_system(S),
    new_conformity_assessment_needed(Change, S).

:- pred supplement_to_certificate_issued/3, gloss('notified body issues supplement to certificate for approved changes'), source('celex:32024R1689/oj#anx_7').

supplement_to_certificate_issued(NotifiedBody, S, Change) :-
    notified_body(NotifiedBody),
    ai_system(S),
    substantial_modification(Change),
    changes_approved(NotifiedBody, Change),
    notifies_provider(NotifiedBody, _Provider, decision(Change, approved)),
    certificate_supplement(Supplement),
    issued_to_provider(NotifiedBody, _Provider, Supplement).

:- pred changes_approved/2, gloss('notified body approves changes to AI system'), source('celex:32024R1689/oj#anx_7').

changes_approved(_NotifiedBody, _Change).

:- pred notifies_provider/3, gloss('notified body notifies provider of decision'), source('celex:32024R1689/oj#anx_7').

notifies_provider(NotifiedBody, Provider, Decision) :-
    notified_body(NotifiedBody),
    operator(Provider).

:- pred issued_to_provider/3, gloss('certificate supplement issued to provider by notified body'), source('celex:32024R1689/oj#anx_7').

issued_to_provider(NotifiedBody, Provider, Supplement) :-
    notified_body(NotifiedBody),
    operator(Provider),
    certificate_supplement(Supplement).

:- pred periodic_audits_conducted/2, gloss('notified body carries out periodic audits of quality management system'), source('celex:32024R1689/oj#anx_7').

periodic_audits_conducted(Qms, NotifiedBody) :-
    approved_quality_management_system(Qms),
    notified_body(NotifiedBody),
    provider_allows_premises_access(_Provider, NotifiedBody),
    provider_shares_information(_Provider, NotifiedBody, necessary_information),
    provides_audit_report(NotifiedBody, _Provider, Qms),
    may_carry_out_additional_tests(NotifiedBody, S).

:- pred provider_allows_premises_access/2, gloss('provider allows notified body access to premises'), source('celex:32024R1689/oj#anx_7').

provider_allows_premises_access(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).

:- pred provider_shares_information/3, gloss('provider shares necessary information with notified body'), source('celex:32024R1689/oj#anx_7').

provider_shares_information(Provider, NotifiedBody, necessary_information) :-
    provider(Provider),
    notified_body(NotifiedBody).

:- pred provides_audit_report/3, gloss('notified body provides provider with audit report'), source('celex:32024R1689/oj#anx_7').

provides_audit_report(NotifiedBody, Provider, _Qms) :-
    notified_body(NotifiedBody),
    operator(Provider).

:- pred may_carry_out_additional_tests/2, gloss('notified body may carry out additional tests of certified AI systems during audits'), source('celex:32024R1689/oj#anx_7').

may_carry_out_additional_tests(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    issued_certificate(NotifiedBody, S).

:- pred issued_certificate/2, gloss('notified body issued certificate for AI system'), source('celex:32024R1689/oj#anx_7').

issued_certificate(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    issues_union_technical_documentation_certificate(NotifiedBody, S).

:- pred intended_change_to_qms/2, gloss('provider intends change to approved quality management system'), source('celex:32024R1689/oj#anx_7').

intended_change_to_qms(Provider, Qms) :-
    provider(Provider),
    approved_quality_management_system(Qms).

:- pred change_to_qms_list/2, gloss('change to list of AI systems covered by quality management system'), source('celex:32024R1689/oj#anx_7').

change_to_qms_list(Qms, S) :-
    approved_quality_management_system(Qms),
    ai_system(S),
    covers_system(Qms, S).

:- pred provider_notifies_change_to_notified_body/2, gloss('provider notifies notified body of intended change to qms or list'), source('celex:32024R1689/oj#anx_7').

provider_notifies_change_to_notified_body(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    (intended_change_to_qms(Provider, Qms); change_to_qms_list(Qms, _S)),
    proposed_changes_examined(NotifiedBody, Qms),
    notified_body_decides_continued_satisfaction(NotifiedBody, Qms),
    notifies_provider_of_decision(NotifiedBody, Provider, qms_change).

:- pred proposed_changes_examined/2, gloss('notified body examines proposed changes to quality management system'), source('celex:32024R1689/oj#anx_7').

proposed_changes_examined(NotifiedBody, Qms) :-
    notified_body(NotifiedBody),
    approved_quality_management_system(Qms).

:- pred notified_body_decides_continued_satisfaction/2, gloss('notified body decides whether modified qms continues to satisfy requirements'), source('celex:32024R1689/oj#anx_7').

notified_body_decides_continued_satisfaction(NotifiedBody, Qms) :-
    notified_body(NotifiedBody),
    approved_quality_management_system(Qms),
    (continues_to_satisfy(Qms) -> true; reassessment_necessary(Qms)).

:- pred continues_to_satisfy/1, gloss('modified quality management system continues to satisfy requirements'), source('celex:32024R1689/oj#anx_7').

continues_to_satisfy(Qms) :-
    approved_quality_management_system(Qms).

:- pred reassessment_necessary/1, gloss('reassessment of quality management system necessary'), source('celex:32024R1689/oj#anx_7').

reassessment_necessary(Qms) :-
    approved_quality_management_system(Qms),
    \+ continues_to_satisfy(Qms).

:- pred notifies_provider_of_decision/3, gloss('notified body notifies provider of decision on qms change'), source('celex:32024R1689/oj#anx_7').

notifies_provider_of_decision(NotifiedBody, Provider, qms_change) :-
    notified_body(NotifiedBody),
    operator(Provider),
    notification_contains(NotifiedBody, conclusions, reasoned_decision).

:- pred notification_contains/3, gloss('notification contains specified elements'), source('celex:32024R1689/oj#anx_7').

notification_contains(_NotifiedBody, _Element1, _Element2).

:- pred qms_implemented_and_maintained/2, gloss('provider implements and maintains approved quality management system'), source('celex:32024R1689/oj#anx_7').

qms_implemented_and_maintained(Provider, Qms) :-
    provider(Provider),
    approved_quality_management_system(Qms),
    implemented(Qms),
    maintained(Qms),
    adequate(Qms),
    efficient(Qms).

:- pred implemented/1, gloss('quality management system is implemented'), source('celex:32024R1689/oj#anx_7').

implemented(Qms) :-
    approved_quality_management_system(Qms).

:- pred maintained/1, gloss('quality management system is maintained'), source('celex:32024R1689/oj#anx_7').

maintained(Qms) :-
    approved_quality_management_system(Qms).

:- pred adequate/1, gloss('quality management system is adequate'), source('celex:32024R1689/oj#anx_7').

adequate(Qms) :-
    approved_quality_management_system(Qms).

:- pred efficient/1, gloss('quality management system is efficient'), source('celex:32024R1689/oj#anx_7').

efficient(Qms) :-
    approved_quality_management_system(Qms).

% Provenance facts
provenance(conformity_assessment_procedure_annex_7/1, 'celex:32024R1689/oj#anx_7').
provenance(quality_management_system_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(technical_documentation_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(surveillance_applies/1, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_application/2, 'celex:32024R1689/oj#anx_7').
provenance(application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(assessed_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(determines_satisfaction/3, 'celex:32024R1689/oj#anx_7').
provenance(notified_decision/4, 'celex:32024R1689/oj#anx_7').
provenance(assessment_conclusions/2, 'celex:32024R1689/oj#anx_7').
provenance(reasoned_assessment_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(satisfies_requirements/2, 'celex:32024R1689/oj#anx_7').
provenance(covers_system/2, 'celex:32024R1689/oj#anx_7').
provenance(intended_for_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#anx_7').
provenance(covered_by_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(examined_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(granted_access/2, 'celex:32024R1689/oj#anx_7').
provenance(access_limited_necessary/2, 'celex:32024R1689/oj#anx_7').
provenance(security_safeguards_apply/0, 'celex:32024R1689/oj#anx_7').
provenance(remote_access_possible/1, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence/3, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_tests/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_tests_directly/2, 'celex:32024R1689/oj#anx_7').
provenance(may_request_model_access/2, 'celex:32024R1689/oj#anx_7').
provenance(union_law_intellectual_property_protection_applies/0, 'celex:32024R1689/oj#anx_7').
provenance(trade_secrets_protection_applies/0, 'celex:32024R1689/oj#anx_7').
provenance(issues_certificate_or_refusal/2, 'celex:32024R1689/oj#anx_7').
provenance(conformity_verified/2, 'celex:32024R1689/oj#anx_7').
provenance(issues_union_technical_documentation_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(certificate_indicates/4, 'celex:32024R1689/oj#anx_7').
provenance(certificate_allows_conformity_evaluation/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_allows_control_in_use/1, 'celex:32024R1689/oj#anx_7').
provenance(refuses_certificate/3, 'celex:32024R1689/oj#anx_7').
provenance(informs_applicant/3, 'celex:32024R1689/oj#anx_7').
provenance(data_training_requirement_not_met/1, 'celex:32024R1689/oj#anx_7').
provenance(re_training_needed/1, 'celex:32024R1689/oj#anx_7').
provenance(reasoned_decision_includes/4, 'celex:32024R1689/oj#anx_7').
provenance(change_assessment_required/2, 'celex:32024R1689/oj#anx_7').
provenance(affects_compliance/2, 'celex:32024R1689/oj#anx_7').
provenance(affects_intended_purpose/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_issued_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_informs_notified_body/3, 'celex:32024R1689/oj#anx_7').
provenance(assessed_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(decides_change_assessment/3, 'celex:32024R1689/oj#anx_7').
provenance(new_conformity_assessment_required/3, 'celex:32024R1689/oj#anx_7').
provenance(supplement_to_certificate_issued/3, 'celex:32024R1689/oj#anx_7').
provenance(changes_approved/2, 'celex:32024R1689/oj#anx_7').
provenance(notifies_provider/3, 'celex:32024R1689/oj#anx_7').
provenance(issued_to_provider/3, 'celex:32024R1689/oj#anx_7').
provenance(periodic_audits_conducted/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_allows_premises_access/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_shares_information/3, 'celex:32024R1689/oj#anx_7').
provenance(provides_audit_report/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_additional_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(issued_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(intended_change_to_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(change_to_qms_list/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_notifies_change_to_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(proposed_changes_examined/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_decides_continued_satisfaction/2, 'celex:32024R1689/oj#anx_7').
provenance(continues_to_satisfy/1, 'celex:32024R1689/oj#anx_7').
provenance(reassessment_necessary/1, 'celex:32024R1689/oj#anx_7').
provenance(notifies_provider_of_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(notification_contains/3, 'celex:32024R1689/oj#anx_7').
provenance(qms_implemented_and_maintained/2, 'celex:32024R1689/oj#anx_7').
provenance(implemented/1, 'celex:32024R1689/oj#anx_7').
provenance(maintained/1, 'celex:32024R1689/oj#anx_7').
provenance(adequate/1, 'celex:32024R1689/oj#anx_7').
provenance(efficient/1, 'celex:32024R1689/oj#anx_7').

% Reference facts
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
