% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : efcde26420067b8c80c51fe3c0f3f3124af8997d3ce50ff0444704c1e02147a2
% cached     : False
% title      : Changes to notifications
:- pred must_notify_changes_to_notification(NotifyingAuthority, Changes), gloss('notifying authority shall notify Commission and Member States of changes to notified body notification'), source('celex:32024R1689/oj#art_36').
:- pred extension_of_scope_applies(Change), gloss('change is an extension of the scope of notification'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_cessation(NotifiedBody, Recipient), gloss('notified body ceasing activities shall inform recipient'), source('celex:32024R1689/oj#art_36').
:- pred planned_cessation(Cessation), gloss('cessation of activities is planned'), source('celex:32024R1689/oj#art_36').
:- pred certificate_remains_valid_after_cessation(Certificate), gloss('certificate remains valid for nine months after cessation subject to assumption of responsibility'), source('celex:32024R1689/oj#art_36').
:- pred must_complete_assessment_before_new_certificate(NotifiedBody, System), gloss('assuming notified body must complete assessment before issuing new certificate'), source('celex:32024R1689/oj#art_36').
:- pred must_withdraw_designation_on_cessation(NotifyingAuthority, NotifiedBody), gloss('notifying authority shall withdraw designation when notified body has ceased activity'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate_non_compliance(NotifyingAuthority, NotifiedBody), gloss('notifying authority shall investigate suspected non-compliance of notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_restrict_suspend_or_withdraw_designation(NotifyingAuthority, NotifiedBody), gloss('notifying authority shall restrict suspend or withdraw designation upon confirmed non-compliance'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_providers_of_designation_change(NotifiedBody, Providers), gloss('notified body shall inform providers within 10 days of designation change'), source('celex:32024R1689/oj#art_36').
:- pred must_keep_files_on_designation_change(NotifyingAuthority, NotifiedBody), gloss('notifying authority shall ensure files are kept and made available on designation change'), source('celex:32024R1689/oj#art_36').
:- pred must_assess_impact_on_certificates(NotifyingAuthority, NotifiedBody), gloss('notifying authority shall assess impact on certificates issued by notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_submit_report_on_findings(NotifyingAuthority, Findings), gloss('notifying authority shall submit report on findings within three months'), source('celex:32024R1689/oj#art_36').
:- pred must_require_suspension_or_withdrawal_of_undue_certificates(NotifyingAuthority, NotifiedBody), gloss('notifying authority shall require notified body to suspend or withdraw unduly issued certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_about_required_certificate_actions(NotifyingAuthority, Certificates), gloss('notifying authority shall inform Commission and Member States about required certificate actions'), source('celex:32024R1689/oj#art_36').
:- pred must_provide_information_to_national_authority(NotifyingAuthority, Information), gloss('notifying authority shall provide relevant information to national competent authority of provider'), source('celex:32024R1689/oj#art_36').
:- pred certificate_remains_valid_during_suspension_or_restriction(Certificate), gloss('certificate remains valid during suspension or restriction under specified conditions'), source('celex:32024R1689/oj#art_36').
:- pred certificate_remains_valid_after_withdrawal(Certificate), gloss('certificate remains valid for nine months after withdrawal under specified conditions'), source('celex:32024R1689/oj#art_36').
:- pred may_extend_provisional_validity(NationalCompetentAuthority, Certificate), gloss('national competent authority may extend provisional validity of certificate'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_about_assumption_of_functions(AssumingEntity, Change), gloss('entity assuming functions shall immediately inform Commission Member States and notified bodies'), source('celex:32024R1689/oj#art_36').

must_notify_changes_to_notification(A, C) :-
    notifying_authority(A),
    relevant_change_to_notification(C).

extension_of_scope_applies(C) :-
    relevant_change_to_notification(C),
    extends_scope(C).

must_inform_cessation(B, R) :-
    notified_body(B),
    decides_to_cease_conformity_assessment_activities(B),
    (   notifying_authority(R)
    ;   provider(R)
    ).

planned_cessation(C) :-
    decides_to_cease_conformity_assessment_activities(_B),
    planned(C).

certificate_remains_valid_after_cessation(Cert) :-
    issued_by_notified_body(Cert, B),
    ceased_activities(B),
    another_notified_body_confirmed_assumption(Cert),
    within_months_after_cessation(Cert, 9).

must_complete_assessment_before_new_certificate(B, S) :-
    notified_body(B),
    assumes_responsibility_for_system(S),
    high_risk_ai_system(S),
    before_issuing_new_certificate(B, S).

must_withdraw_designation_on_cessation(A, B) :-
    notifying_authority(A),
    notified_body(B),
    ceased_activities(B).

must_investigate_non_compliance(A, B) :-
    notifying_authority(A),
    notified_body(B),
    sufficient_reason_to_consider_non_compliance(A, B).

must_restrict_suspend_or_withdraw_designation(A, B) :-
    notifying_authority(A),
    notified_body(B),
    concludes_non_compliance(A, B).

must_inform_providers_of_designation_change(B, P) :-
    notified_body(B),
    designation_changed(B),
    provider(P),
    concerned_provider(P, B).

must_keep_files_on_designation_change(A, B) :-
    notifying_authority(A),
    notified_body(B),
    designation_restricted_suspended_or_withdrawn(B).

must_assess_impact_on_certificates(A, B) :-
    notifying_authority(A),
    notified_body(B),
    designation_restricted_suspended_or_withdrawn(B).

must_submit_report_on_findings(A, F) :-
    notifying_authority(A),
    findings_on_designation_change(F),
    within_months_of_notification(F, 3).

must_require_suspension_or_withdrawal_of_undue_certificates(A, B) :-
    notifying_authority(A),
    notified_body(B),
    unduly_issued_certificate_exists(B).

must_inform_about_required_certificate_actions(A, C) :-
    notifying_authority(A),
    required_suspension_or_withdrawal(C).

must_provide_information_to_national_authority(A, I) :-
    notifying_authority(A),
    relevant_certificate_information(I),
    required_suspension_or_withdrawal(_C).

certificate_remains_valid_during_suspension_or_restriction(Cert) :-
    issued_by_notified_body(Cert, _B),
    designation_suspended_or_restricted(_B),
    \+ unduly_issued(Cert),
    (   no_risk_confirmed_within_one_month(Cert)
    ;   no_new_certificates_and_capability_confirmed(Cert)
    ;   no_new_certificates_and_provider_confirmation_obtained(Cert)
    ).

certificate_remains_valid_after_withdrawal(Cert) :-
    issued_by_notified_body(Cert, _B),
    designation_withdrawn(_B),
    \+ unduly_issued(Cert),
    no_risk_confirmed_by_national_authority(Cert),
    another_notified_body_assumes_immediate_responsibility(Cert),
    assessment_completed_within_months(Cert, 12).

may_extend_provisional_validity(NCA, Cert) :-
    national_competent_authority(NCA),
    certificate_remains_valid_after_withdrawal(Cert),
    total_extension_does_not_exceed_months(Cert, 12).

must_inform_about_assumption_of_functions(E, Chg) :-
    assumes_functions_of_notified_body(E, _B),
    designation_change(Chg).

provenance(must_notify_changes_to_notification/2, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_applies/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(planned_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment_before_new_certificate/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation_on_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate_non_compliance/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_of_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_keep_files_on_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_on_findings/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspension_or_withdrawal_of_undue_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_required_certificate_actions/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information_to_national_authority/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_during_suspension_or_restriction/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_assumption_of_functions/2, 'celex:32024R1689/oj#art_36').

references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_3').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_4').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_5').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_6').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_7').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_8').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9/unp_1').
