% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 69f7813506a3701a7a25f7ebf73665f3b281e7855dc377d3e24e900ebf63e1d1
% cached     : False
% title      : Changes to notifications
:- pred must_notify_changes_to_notification/2, gloss('notifying authority must notify Commission and Member States of changes to notification'), source('celex:32024R1689/oj#art_36').
:- pred extension_of_scope_of_notification/1, gloss('change to notification that extends its scope'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_of_planned_cessation/2, gloss('notified body must inform notifying authority and providers of planned cessation'), source('celex:32024R1689/oj#art_36').
:- pred certificate_remains_valid_after_cessation/1, gloss('certificate remains valid for nine months after cessation subject to conditions'), source('celex:32024R1689/oj#art_36').
:- pred must_withdraw_designation_on_cessation/2, gloss('notifying authority must withdraw designation when notified body ceases activity'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate_non_compliance/2, gloss('notifying authority must investigate suspected non-compliance of notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_restrict_suspend_or_withdraw_designation/2, gloss('notifying authority must restrict suspend or withdraw designation for failure'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_providers_of_designation_change/2, gloss('notified body must inform providers within 10 days of designation change'), source('celex:32024R1689/oj#art_36').
:- pred must_keep_files_on_designation_change/2, gloss('notifying authority must keep files and make available on designation change'), source('celex:32024R1689/oj#art_36').
:- pred must_assess_impact_on_certificates/2, gloss('notifying authority must assess impact on certificates after designation change'), source('celex:32024R1689/oj#art_36').
:- pred must_submit_report_on_findings/2, gloss('notifying authority must submit report on findings within three months'), source('celex:32024R1689/oj#art_36').
:- pred must_require_suspension_or_withdrawal_of_certificate/2, gloss('notifying authority must require notified body to suspend or withdraw unduly issued certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_about_required_certificate_action/2, gloss('notifying authority must inform Commission and Member States about required certificate action'), source('celex:32024R1689/oj#art_36').
:- pred must_provide_certificate_information_to_competent_authority/2, gloss('notifying authority must provide certificate information to national competent authority'), source('celex:32024R1689/oj#art_36').
:- pred certificate_remains_valid_during_suspension_or_restriction/1, gloss('certificate remains valid during suspension or restriction under specified conditions'), source('celex:32024R1689/oj#art_36').
:- pred certificate_remains_valid_after_withdrawal/1, gloss('certificate remains valid for nine months after withdrawal under specified conditions'), source('celex:32024R1689/oj#art_36').
:- pred may_extend_provisional_validity/2, gloss('national competent authority may extend provisional validity of certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_of_assumption_of_functions/2, gloss('authority or notified body must inform of assumption of functions'), source('celex:32024R1689/oj#art_36').

must_notify_changes_to_notification(Authority, Change) :-
    notifying_authority(Authority),
    relevant_change_to_notification(Change).

relevant_change_to_notification(change(notification(Body))) :-
    notified_body(Body).

extension_of_scope_of_notification_applies(Change) :-
    relevant_change_to_notification(Change),
    extends_scope(Change).

must_inform_of_planned_cessation(Body, Recipient) :-
    notified_body(Body),
    plans_to_cease_conformity_assessment_activities(Body),
    cessation_recipient(Recipient).

cession_recipient(notifying_authority(_)).
cession_recipient(provider(_)).

certificate_remains_valid_after_cessation(Certificate) :-
    issued_by_notified_body(Certificate, Body),
    ceased_activities(Body),
    another_notified_body_confirmed_assumption(Certificate),
    within_months_after_cessation(Certificate, 9).

must_withdraw_designation_on_cessation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    ceased_activities(Body).

must_investigate_non_compliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider_non_compliant(Authority, Body).

must_restrict_suspend_or_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_non_compliance_or_failure(Authority, Body).

must_inform_providers_of_designation_change(Body, Provider) :-
    notified_body(Body),
    designation_changed(Body),
    provider_concerned(Provider, Body).

designation_changed(Body) :-
    designation_suspended_or_restricted(Body).
designation_changed(Body) :-
    designation_withdrawn(Body).

must_keep_files_on_designation_change(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_changed(Body).

must_assess_impact_on_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_changed(Body).

must_submit_report_on_findings(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_changed(Body),
    within_months_of_notification_change(Body, 3).

must_require_suspension_or_withdrawal_of_certificate(Authority, Certificate) :-
    notifying_authority(Authority),
    issued_by_notified_body(Certificate, Body),
    designation_changed(Body),
    unduly_issued(Certificate).

must_inform_about_required_certificate_action(Authority, Certificate) :-
    notifying_authority(Authority),
    required_suspension_or_withdrawal(Authority, Certificate).

must_provide_certificate_information_to_competent_authority(Authority, Certificate) :-
    notifying_authority(Authority),
    required_suspension_or_withdrawal(Authority, Certificate),
    provider_registered_in_member_state(Certificate, _State).

certificate_remains_valid_during_suspension_or_restriction(Certificate) :-
    issued_by_notified_body(Certificate, Body),
    designation_suspended_or_restricted(Body),
    \+ unduly_issued(Certificate),
    validity_condition_for_suspension_or_restriction_met(Certificate).

validity_condition_for_suspension_or_restriction_met(Certificate) :-
    no_risk_confirmed_within_one_month(Certificate).
validity_condition_for_suspension_or_restriction_met(Certificate) :-
    no_new_certificates_confirmed(Certificate),
    monitoring_capability_or_assumption_confirmed(Certificate).

certificate_remains_valid_after_withdrawal(Certificate) :-
    issued_by_notified_body(Certificate, Body),
    designation_withdrawn(Body),
    \+ unduly_issued(Certificate),
    no_risk_confirmed_by_competent_authority(Certificate),
    immediate_responsibility_assumed_and_assessment_planned(Certificate),
    within_months_after_withdrawal(Certificate, 9).

may_extend_provisional_validity(Authority, Certificate) :-
    national_competent_authority(Authority),
    certificate_remains_valid_after_withdrawal(Certificate),
    total_extension_does_not_exceed_months(12).

must_inform_of_assumption_of_functions(Entity, Certificate) :-
    assumes_functions_for_certificate(Entity, Certificate).

provenance(must_notify_changes_to_notification/2, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_of_notification/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_of_planned_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation_on_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate_non_compliance/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_of_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_keep_files_on_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_on_findings/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspension_or_withdrawal_of_certificate/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_required_certificate_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_certificate_information_to_competent_authority/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_during_suspension_or_restriction/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_of_assumption_of_functions/2, 'celex:32024R1689/oj#art_36').

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
