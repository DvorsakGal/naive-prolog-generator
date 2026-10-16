% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bfc9a4672fe31ce6ec5731d952368e21b1a90d3208d17dd4a78c5087bcdb1500
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred required_quality_management_system_assessment/1, gloss('conformity assessment procedure based on quality management system and technical documentation'), source('celex:32024R1689/oj#anx_7').

:- pred must_lodge_application/2, gloss('provider must lodge application with notified body'), source('celex:32024R1689/oj#anx_7').

:- pred must_include_in_application/2, gloss('application must include specified items'), source('celex:32024R1689/oj#anx_7').

:- pred must_assess_quality_management_system/2, gloss('notified body must assess quality management system'), source('celex:32024R1689/oj#anx_7').

:- pred must_notify_decision/2, gloss('notified body must notify decision to provider or authorised representative'), source('celex:32024R1689/oj#anx_7').

:- pred must_maintain_quality_management_system/2, gloss('provider must maintain approved quality management system'), source('celex:32024R1689/oj#anx_7').

:- pred must_notify_changes/2, gloss('provider must notify intended changes to notified body'), source('celex:32024R1689/oj#anx_7').

:- pred must_examine_changes/2, gloss('notified body must examine proposed changes'), source('celex:32024R1689/oj#anx_7').

:- pred must_lodge_technical_documentation_application/2, gloss('provider must lodge application for technical documentation assessment'), source('celex:32024R1689/oj#anx_7').

:- pred must_examine_technical_documentation/2, gloss('notified body must examine technical documentation'), source('celex:32024R1689/oj#anx_7').

:- pred may_require_further_evidence/2, gloss('notified body may require further evidence or tests'), source('celex:32024R1689/oj#anx_7').

:- pred must_carry_out_tests/2, gloss('notified body must carry out tests if not satisfied with provider tests'), source('celex:32024R1689/oj#anx_7').

:- pred must_grant_access_to_models/2, gloss('notified body must be granted access to training and trained models'), source('celex:32024R1689/oj#anx_7').

:- pred must_issue_certificate/2, gloss('notified body must issue Union technical documentation assessment certificate'), source('celex:32024R1689/oj#anx_7').

:- pred must_refuse_certificate/2, gloss('notified body must refuse certificate and inform applicant'), source('celex:32024R1689/oj#anx_7').

:- pred must_assess_substantial_change/2, gloss('notified body must assess change affecting compliance or intended purpose'), source('celex:32024R1689/oj#anx_7').

:- pred must_inform_of_intended_changes/2, gloss('provider must inform notified body of intended changes'), source('celex:32024R1689/oj#anx_7').

:- pred must_decide_on_changes/2, gloss('notified body must decide whether changes require new conformity assessment or supplement'), source('celex:32024R1689/oj#anx_7').

:- pred must_issue_supplement/2, gloss('notified body must issue supplement to certificate'), source('celex:32024R1689/oj#anx_7').

:- pred must_allow_access_for_surveillance/2, gloss('provider must allow notified body access to premises'), source('celex:32024R1689/oj#anx_7').

:- pred must_share_information_for_surveillance/2, gloss('provider must share necessary information with notified body'), source('celex:32024R1689/oj#anx_7').

:- pred must_carry_out_periodic_audits/2, gloss('notified body must carry out periodic audits'), source('celex:32024R1689/oj#anx_7').

:- pred may_carry_out_additional_tests/2, gloss('notified body may carry out additional tests during audits'), source('celex:32024R1689/oj#anx_7').

required_quality_management_system_assessment(S) :-
    ai_system(S),
    high_risk_ai_system(S).

must_lodge_application(Provider, quality_management_system_assessment(S)) :-
    provider(Provider),
    ai_system(S),
    intended_purpose(S).

must_include_in_application(Provider, name_and_address(Provider)) :-
    must_lodge_application(Provider, _).

must_include_in_application(Authorised_Rep, name_and_address(Authorised_Rep)) :-
    must_lodge_application(Provider, _),
    authorised_representative(Authorised_Rep).

must_include_in_application(Provider, list_of_ai_systems(Systems)) :-
    must_lodge_application(Provider, _),
    findall(S, (ai_system(S), provider_of(Provider, S)), Systems).

must_include_in_application(Provider, technical_documentation(S)) :-
    must_lodge_application(Provider, _),
    ai_system(S),
    provider_of(Provider, S).

must_include_in_application(Provider, quality_management_system_documentation) :-
    must_lodge_application(Provider, _).

must_include_in_application(Provider, procedures_for_adequacy_and_effectiveness) :-
    must_lodge_application(Provider, _).

must_include_in_application(Provider, declaration_no_other_application) :-
    must_lodge_application(Provider, _).

must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)) :-
    notified_body(NotifiedBody),
    must_lodge_application(Provider, quality_management_system_assessment(_)).

must_notify_decision(NotifiedBody, Provider) :-
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)).

must_notify_decision(NotifiedBody, Authorised_Rep) :-
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)),
    authorised_representative(Authorised_Rep).

must_maintain_quality_management_system(Provider, quality_management_system(Provider)) :-
    provider(Provider),
    must_assess_quality_management_system(_, quality_management_system(Provider)).

must_notify_changes(Provider, notified_body(NotifiedBody)) :-
    provider(Provider),
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)),
    intended_change(Provider, _).

must_examine_changes(NotifiedBody, proposed_changes(Provider)) :-
    must_notify_changes(Provider, notified_body(NotifiedBody)).

must_lodge_technical_documentation_application(Provider, technical_documentation_assessment(S)) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S).

must_lodge_technical_documentation_application(Provider, technical_documentation_assessment(S)) :-
    provider(Provider),
    ai_system(S),
    putting_into_service(S).

must_include_in_application(Provider, name_and_address(Provider)) :-
    must_lodge_technical_documentation_application(Provider, _).

must_include_in_application(Provider, declaration_no_other_application) :-
    must_lodge_technical_documentation_application(Provider, _).

must_include_in_application(Provider, technical_documentation_annex_4(S)) :-
    must_lodge_technical_documentation_application(Provider, technical_documentation_assessment(S)).

must_examine_technical_documentation(NotifiedBody, technical_documentation(S)) :-
    notified_body(NotifiedBody),
    must_lodge_technical_documentation_application(_, technical_documentation_assessment(S)).

may_require_further_evidence(NotifiedBody, provider(Provider)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    provider(Provider),
    provider_of(Provider, S).

may_require_further_evidence(NotifiedBody, further_tests(Provider)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    provider(Provider),
    provider_of(Provider, S).

must_carry_out_tests(NotifiedBody, ai_system(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    \+ satisfied_with_provider_tests(NotifiedBody, S).

must_grant_access_to_models(NotifiedBody, training_and_trained_models(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    high_risk_ai_system(S),
    \+ other_reasonable_means_sufficient(NotifiedBody, S),
    reasoned_request(NotifiedBody, S).

must_issue_certificate(NotifiedBody, certificate(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    conformity_with_requirements(S).

must_refuse_certificate(NotifiedBody, refusal(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    \+ conformity_with_requirements(S).

must_refuse_certificate(NotifiedBody, refusal(S, training_data_noncompliance)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    \+ data_training_requirement_met(S).

must_assess_substantial_change(NotifiedBody, change(S)) :-
    notified_body(NotifiedBody),
    issued_certificate(NotifiedBody, certificate(S)),
    affects_compliance_or_intended_purpose(S, Change).

must_inform_of_intended_changes(Provider, notified_body(NotifiedBody)) :-
    provider(Provider),
    issued_certificate(NotifiedBody, certificate(S)),
    provider_of(Provider, S),
    intended_change(Provider, S).

must_inform_of_intended_changes(Provider, notified_body(NotifiedBody)) :-
    provider(Provider),
    issued_certificate(NotifiedBody, certificate(S)),
    provider_of(Provider, S),
    aware_of_change(Provider, S).

must_decide_on_changes(NotifiedBody, changes(Provider, S)) :-
    must_inform_of_intended_changes(Provider, notified_body(NotifiedBody)),
    issued_certificate(NotifiedBody, certificate(S)).

must_issue_supplement(NotifiedBody, supplement(certificate(S), Changes)) :-
    must_decide_on_changes(NotifiedBody, changes(Provider, S)),
    changes_approved(NotifiedBody, Changes),
    \+ new_conformity_assessment_required(NotifiedBody, Changes).

must_allow_access_for_surveillance(Provider, premises(NotifiedBody)) :-
    provider(Provider),
    surveillance_notified_body(NotifiedBody, Provider).

must_share_information_for_surveillance(Provider, information(NotifiedBody)) :-
    provider(Provider),
    surveillance_notified_body(NotifiedBody, Provider).

must_carry_out_periodic_audits(NotifiedBody, quality_management_system(Provider)) :-
    surveillance_notified_body(NotifiedBody, Provider),
    approved_quality_management_system(Provider).

may_carry_out_additional_tests(NotifiedBody, ai_system(S)) :-
    must_carry_out_periodic_audits(NotifiedBody, _),
    issued_certificate(NotifiedBody, certificate(S)).

surveillance_notified_body(NotifiedBody, Provider) :-
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)).

affects_compliance_or_intended_purpose(S, Change) :-
    ai_system(S),
    change(Change, S),
    (affects_compliance(Change, S); affects_intended_purpose(Change, S)).

provider_of(Provider, S) :-
    provider(Provider),
    ai_system(S).

conformity_with_requirements(S) :-
    ai_system(S),
    high_risk_ai_system(S),
    requirements_chapter_3_section_2_met(S).

data_training_requirement_met(S) :-
    ai_system(S),
    training_data_requirement_met(S).

other_reasonable_means_sufficient(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    reasonable_means_exhausted(NotifiedBody, S),
    means_sufficient(NotifiedBody, S).

reasoned_request(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    requested(NotifiedBody, S).

issued_certificate(NotifiedBody, certificate(S)) :-
    must_issue_certificate(NotifiedBody, certificate(S)).

approved_quality_management_system(Provider) :-
    must_assess_quality_management_system(_, quality_management_system(Provider)),
    assessment_satisfies_requirements(Provider).

changes_approved(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    approved(NotifiedBody, Changes).

new_conformity_assessment_required(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    requires_new_assessment(NotifiedBody, Changes).

requirements_chapter_3_section_2_met(S) :-
    ai_system(S),
    high_risk_ai_system(S).

training_data_requirement_met(S) :-
    ai_system(S),
    quality_data_used_for_training(S).

satisfied_with_provider_tests(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    tests_satisfactory(NotifiedBody, S).

intended_change(Provider, Change) :-
    provider(Provider),
    change(Change, _),
    intended(Provider, Change).

aware_of_change(Provider, S) :-
    provider(Provider),
    provider_of(Provider, S),
    change_occurred(S, _).

change(Change, S) :-
    ai_system(S),
    modification(Change, S).

affects_compliance(Change, S) :-
    change(Change, S),
    affects(Change, compliance(S)).

affects_intended_purpose(Change, S) :-
    change(Change, S),
    affects(Change, intended_purpose(S)).

reasonable_means_exhausted(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    all_other_reasonable_means_exhausted(NotifiedBody, S).

means_sufficient(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    verification_sufficient(NotifiedBody, S).

requested(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    reasoned_request_made(NotifiedBody, S).

assessment_satisfies_requirements(Provider) :-
    provider(Provider),
    quality_management_system_satisfies_requirements(Provider).

approved(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    changes_approved_by_notified_body(NotifiedBody, Changes).

requires_new_assessment(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    new_conformity_assessment_needed(NotifiedBody, Changes).

tests_satisfactory(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    provider_tests_satisfactory(NotifiedBody, S).

intended(Provider, Change) :-
    provider(Provider),
    intends(Provider, Change).

change_occurred(S, Change) :-
    ai_system(S),
    occurred(Change, S).

modification(Change, S) :-
    ai_system(S),
    modification_to(Change, S).

affects(Change, Aspect) :-
    change(Change, _),
    affects_aspect(Change, Aspect).

all_other_reasonable_means_exhausted(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).

verification_sufficient(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).

reasoned_request_made(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).

quality_management_system_satisfies_requirements(Provider) :-
    provider(Provider),
    requirements_referred_to_in_art_17_met(Provider).

changes_approved_by_notified_body(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    approved_by(NotifiedBody, Changes).

new_conformity_assessment_needed(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    conformity_assessment_art_43_par_4_required(NotifiedBody, Changes).

provider_tests_satisfactory(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).

intends(Provider, Change) :-
    provider(Provider),
    intended_change(Provider, Change).

occurred(Change, S) :-
    ai_system(S),
    change_occurred(S, Change).

modification_to(Change, S) :-
    ai_system(S),
    change(Change, S).

affects_aspect(Change, Aspect) :-
    change(Change, _),
    aspect_affected(Change, Aspect).

requirements_referred_to_in_art_17_met(Provider) :-
    provider(Provider),
    quality_management_system(Provider),
    satisfies_art_17(Provider).

conformity_assessment_art_43_par_4_required(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    requires_art_43_par_4(NotifiedBody, Changes).

aspect_affected(Change, compliance(S)) :-
    change(Change, S),
    affects_compliance(Change, S).

aspect_affected(Change, intended_purpose(S)) :-
    change(Change, S),
    affects_intended_purpose(Change, S).

satisfies_art_17(Provider) :-
    provider(Provider),
    quality_management_system(Provider).

requires_art_43_par_4(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    substantial_modification_in_changes(Changes).

substantial_modification_in_changes(Changes) :-
    change(Change, _),
    member(Change, Changes),
    substantial_modification(Change).

provenance(required_quality_management_system_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_technical_documentation_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_substantial_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_intended_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_decide_on_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_supplement/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_additional_tests/2, 'celex:32024R1689/oj#anx_7').

references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
