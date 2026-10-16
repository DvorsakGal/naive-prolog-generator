% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9b3dedfd2d911dbbd987b82264c9457aae198f78901a5f40ce5268b12fba3fd7
% cached     : False
% title      : Changes to notifications
:- pred must_notify_change/2, gloss('notifying authority shall notify relevant parties of changes'), source('celex:32024R1689/oj#art_36/par_1').
:- pred must_use_notification_tool/2, gloss('notification shall be made via electronic tool'), source('celex:32024R1689/oj#art_36/par_1').
:- pred extension_of_scope_procedure/1, gloss('procedures for extensions of notification scope apply'), source('celex:32024R1689/oj#art_36/par_2').
:- pred other_changes_procedure/1, gloss('procedures for non-extension changes apply'), source('celex:32024R1689/oj#art_36/par_2').
:- pred must_inform_cessation/3, gloss('notified body shall inform parties of cessation'), source('celex:32024R1689/oj#art_36/par_3').
:- pred planned_cessation/1, gloss('cessation is planned rather than immediate'), source('celex:32024R1689/oj#art_36/par_3').
:- pred certificate_validity_period/2, gloss('certificates remain valid for specified period after cessation'), source('celex:32024R1689/oj#art_36/par_3').
:- pred another_body_assumes_responsibility/2, gloss('another notified body confirms assumption of responsibilities'), source('celex:32024R1689/oj#art_36/par_3').
:- pred must_complete_full_assessment/2, gloss('assuming body must complete full assessment by deadline'), source('celex:32024R1689/oj#art_36/par_3').
:- pred must_withdraw_designation/2, gloss('notifying authority shall withdraw designation'), source('celex:32024R1689/oj#art_36/par_3').
:- pred must_investigate_failure/2, gloss('notifying authority shall investigate failure to meet requirements'), source('celex:32024R1689/oj#art_36/par_4').
:- pred sufficient_reason_for_concern/2, gloss('notifying authority has sufficient reason for concern'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_give_opportunity/2, gloss('notified body shall be given opportunity to make views known'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_restrict_suspend_withdraw/2, gloss('notifying authority shall restrict, suspend or withdraw designation'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_inform_commission_and_states/2, gloss('notifying authority shall inform Commission and Member States'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_inform_providers_designation_change/2, gloss('notified body shall inform providers of designation change'), source('celex:32024R1689/oj#art_36/par_5').
:- pred must_ensure_files_kept/2, gloss('notifying authority shall ensure files are kept and made available'), source('celex:32024R1689/oj#art_36/par_6').
:- pred must_assess_certificate_impact/2, gloss('notifying authority shall assess impact on certificates'), source('celex:32024R1689/oj#art_36/par_7').
:- pred must_submit_report_findings/2, gloss('notifying authority shall submit report on findings'), source('celex:32024R1689/oj#art_36/par_7').
:- pred must_require_suspend_withdraw_certificates/2, gloss('notifying authority shall require suspension or withdrawal of unduly issued certificates'), source('celex:32024R1689/oj#art_36/par_7').
:- pred must_inform_certificate_action/2, gloss('notifying authority shall inform about certificates requiring suspension or withdrawal'), source('celex:32024R1689/oj#art_36/par_7').
:- pred must_provide_certificate_information/2, gloss('notifying authority shall provide relevant certificate information'), source('celex:32024R1689/oj#art_36/par_7').
:- pred certificates_remain_valid/1, gloss('certificates remain valid under specified circumstances'), source('celex:32024R1689/oj#art_36/par_8').
:- pred no_risk_confirmed/2, gloss('notifying authority confirms no risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_36/par_8').
:- pred timeline_for_remedy_outlined/2, gloss('notifying authority outlines timeline for remedial actions'), source('celex:32024R1689/oj#art_36/par_8').
:- pred no_new_certificates_during_suspension/2, gloss('notifying authority confirms no relevant certificates will be issued during suspension'), source('celex:32024R1689/oj#art_36/par_8').
:- pred capability_to_continue_monitoring/2, gloss('notified body has capability to continue monitoring existing certificates'), source('celex:32024R1689/oj#art_36/par_8').
:- pred must_confirm_qualified_body_assumption/2, gloss('provider shall confirm another qualified body assumes functions'), source('celex:32024R1689/oj#art_36/par_8').
:- pred certificates_remain_valid_nine_months/1, gloss('certificates remain valid for nine months after withdrawal'), source('celex:32024R1689/oj#art_36/par_9').
:- pred national_authority_confirms_no_risk/2, gloss('national competent authority confirms no risk associated with systems'), source('celex:32024R1689/oj#art_36/par_9').
:- pred another_body_assumes_immediate_responsibility/2, gloss('another notified body confirms immediate responsibility assumption'), source('celex:32024R1689/oj#art_36/par_9').
:- pred must_complete_assessment_within_12_months/2, gloss('assuming body must complete assessment within 12 months'), source('celex:32024R1689/oj#art_36/par_9').
:- provisory_validity_extended/2, gloss('national authority may extend provisional validity'), source('celex:32024R1689/oj#art_36/par_9').
:- pred must_immediately_inform_parties/2, gloss('national authority or assuming body shall immediately inform relevant parties'), source('celex:32024R1689/oj#art_36/par_9').

must_notify_change(Authority, change(Notification)) :-
    notifying_authority(Authority),
    notified_body(Body),
    notified(Body),
    relevant_change(Notification, Body).

must_use_notification_tool(Authority, change(Notification)) :-
    must_notify_change(Authority, change(Notification)).

extension_of_scope_procedure(Change) :-
    change_to_notification(Change),
    extension_of_scope(Change).

other_changes_procedure(Change) :-
    change_to_notification(Change),
    \+ extension_of_scope(Change).

must_inform_cessation(Body, parties(Authority, Providers)) :-
    notified_body(Body),
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    providers_concerned(Providers, Body),
    decides_to_cease_activities(Body).

must_inform_cessation(Body, parties(Authority, Providers)) :-
    notified_body(Body),
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    providers_concerned(Providers, Body),
    planned_cessation(Body),
    \+ informs_within_one_year(Body, Authority).

planned_cessation(Body) :-
    notified_body(Body),
    planned_cessation_activity(Body).

certificate_validity_period(Certificate, months(9)) :-
    certificate_issued_by(Certificate, Body),
    ceased_activities(Body),
    another_body_assumes_responsibility(AnotherBody, Certificate),
    notified_body(AnotherBody),
    confirms_in_writing(AnotherBody, assumption(Certificate)).

must_complete_full_assessment(AnotherBody, affected_systems(Systems)) :-
    another_body_assumes_responsibility(AnotherBody, Certificate),
    certificate_covers(Certificate, Systems),
    high_risk_ai_system(Systems),
    end_of_nine_month_period(Deadline),
    before(assessment_completion(AnotherBody, Systems), Deadline).

must_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    conformity_assessment_body(Body),
    ceased_activities(Body).

sufficient_reason_for_concern(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    (no_longer_meets_requirements(Body, art_31) ; failing_to_fulfil_obligations(Body)).

must_investigate_failure(Authority, Body) :-
    sufficient_reason_for_concern(Authority, Body),
    \+ investigation_conducted(Authority, Body).

must_give_opportunity(Body, objections) :-
    notifying_authority(Authority),
    notified_body(Body),
    investigation_conducted(Authority, Body),
    objections_raised(Authority, Body).

must_restrict_suspend_withdraw(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    conclusion_reached(Authority, Body, no_longer_meets_requirements_or_failing_obligations),
    \+ designation_already_restricted(Body),
    \+ designation_already_suspended(Body),
    \+ designation_already_withdrawn(Body).

must_inform_commission_and_states(Authority, action(Body, Action)) :-
    must_restrict_suspend_withdraw(Authority, Body),
    action_taken(Authority, Body, Action).

must_inform_providers_designation_change(Body, Providers) :-
    notified_body(Body),
    designation_affected(Body, [suspended, restricted, withdrawn]),
    providers_concerned(Providers, Body),
    \+ informed_within_ten_days(Body, Providers).

must_ensure_files_kept(Authority, files(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body, [restricted, suspended, withdrawn]).

must_assess_certificate_impact(Authority, certificates(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body, [restricted, suspended, withdrawn]).

must_submit_report_findings(Authority, report(Impact)) :-
    must_assess_certificate_impact(Authority, certificates(Body)),
    impact_assessed(Authority, Body, Impact),
    within(months(3), notification_of_changes(Authority), submission(report(Authority, Impact))).

must_require_suspend_withdraw_certificates(Authority, unduly_issued(Certificates)) :-
    notifying_authority(Authority),
    notified_body(Body),
    unduly_issued_certificates(Certificates, Body),
    \+ certificates_suspended_or_withdrawn(Certificates).

must_inform_certificate_action(Authority, certificates(Certificates)) :-
    must_require_suspend_withdraw_certificates(Authority, unduly_issued(Certificates)).

must_provide_certificate_information(Authority, certificates(Certificates)) :-
    must_require_suspend_withdraw_certificates(Authority, unduly_issued(Certificates)),
    national_competent_authority(NationalAuthority, MemberState),
    registered_place_of_business(Provider, MemberState),
    provider(Provider),
    certificate_covers(Certificate, System),
    system_by_provider(System, Provider),
    member(Certificate, Certificates).

certificates_remain_valid(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_affected(Body, [suspended, restricted]),
    \+ unduly_issued(Certificate),
    no_risk_confirmed(Authority, Certificate),
    timeline_for_remedy_outlined(Authority, Body),
    within(months(1), suspension_or_restriction(Body), confirmation(Authority, no_risk(Certificate))).

certificates_remain_valid(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_affected(Body, [suspended, restricted]),
    \+ unduly_issued(Certificate),
    no_new_certificates_during_suspension(Authority, Body),
    capability_to_continue_monitoring(Body, existing_certificates),
    notified_body_has_capability(Body, monitoring).

certificates_remain_valid(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_affected(Body, [suspended, restricted]),
    \+ unduly_issued(Certificate),
    no_new_certificates_during_suspension(Authority, Body),
    \+ capability_to_continue_monitoring(Body, existing_certificates),
    must_confirm_qualified_body_assumption(Provider, temporary_assumption(AnotherBody, Certificates)),
    certificate_covers(Certificate, System),
    system_by_provider(System, Provider),
    member(Certificate, Certificates),
    within(months(3), suspension_or_restriction(Body), confirmation(Provider, AnotherBody)).

must_confirm_qualified_body_assumption(Provider, temporary_assumption(AnotherBody, Certificates)) :-
    provider(Provider),
    notified_body(AnotherBody),
    \+ designation_affected(AnotherBody, [suspended, restricted, withdrawn]),
    certificate_covers(Certificate, System),
    system_by_provider(System, Provider),
    member(Certificate, Certificates),
    national_competent_authority(NationalAuthority, MemberState),
    registered_place_of_business(Provider, MemberState).

certificates_remain_valid_nine_months(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_withdrawn(Body),
    \+ unduly_issued(Certificate),
    national_authority_confirms_no_risk(NationalAuthority, System),
    certificate_covers(Certificate, System),
    high_risk_ai_system(System),
    another_body_assumes_immediate_responsibility(AnotherBody, System),
    must_complete_assessment_within_12_months(AnotherBody, System).

national_authority_confirms_no_risk(NationalAuthority, System) :-
    national_competent_authority(NationalAuthority, MemberState),
    provider(Provider),
    registered_place_of_business(Provider, MemberState),
    system_by_provider(System, Provider),
    high_risk_ai_system(System),
    confirms_no_risk(NationalAuthority, health_safety_fundamental_rights, System).

another_body_assumes_immediate_responsibility(AnotherBody, System) :-
    notified_body(AnotherBody),
    \+ designation_affected(AnotherBody, [suspended, restricted, withdrawn]),
    confirms_in_writing(AnotherBody, immediate_responsibility(System)).

must_complete_assessment_within_12_months(AnotherBody, System) :-
    another_body_assumes_immediate_responsibility(AnotherBody, System),
    high_risk_ai_system(System),
    within(months(12), withdrawal_of_designation(Body), completion(assessment(AnotherBody, System))).

provisory_validity_extended(Certificate, additional_months(M)) :-
    certificates_remain_valid_nine_months(Certificate),
    national_competent_authority(NationalAuthority, MemberState),
    provider(Provider),
    registered_place_of_business(Provider, MemberState),
    system_by_provider(System, Provider),
    certificate_covers(Certificate, System),
    extends_validity(NationalAuthority, Certificate, additional_months(M)),
    M =< 12,
    total_extended_period(Certificate, Total),
    Total =< months(12).

must_immediately_inform_parties(AuthorityOrBody, change_of_designation(Body)) :-
    (national_competent_authority(AuthorityOrBody, _) ; notified_body(AuthorityOrBody)),
    assuming_functions(AuthorityOrBody, Body),
    designation_affected(Body, [withdrawn, suspended, restricted]).

% Provenance
provenance(must_notify_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_use_notification_tool/2, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_procedure/1, 'celex:32024R1689/oj#art_36').
provenance(other_changes_procedure/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_cessation/3, 'celex:32024R1689/oj#art_36').
provenance(planned_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_36').
provenance(another_body_assumes_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(must_complete_full_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(sufficient_reason_for_concern/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate_failure/2, 'celex:32024R1689/oj#art_36').
provenance(must_give_opportunity/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_commission_and_states/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_certificate_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_findings/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspend_withdraw_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_certificate_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_certificate_information/2, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid/1, 'celex:32024R1689/oj#art_36').
provenance(no_risk_confirmed/2, 'celex:32024R1689/oj#art_36').
provenance(timeline_for_remedy_outlined/2, 'celex:32024R1689/oj#art_36').
provenance(no_new_certificates_during_suspension/2, 'celex:32024R1689/oj#art_36').
provenance(capability_to_continue_monitoring/2, 'celex:32024R1689/oj#art_36').
provenance(must_confirm_qualified_body_assumption/2, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid_nine_months/1, 'celex:32024R1689/oj#art_36').
provenance(national_authority_confirms_no_risk/2, 'celex:32024R1689/oj#art_36').
provenance(another_body_assumes_immediate_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment_within_12_months/2, 'celex:32024R1689/oj#art_36').
provenance(provisory_validity_extended/2, 'celex:32024R1689/oj#art_36').
provenance(must_immediately_inform_parties/2, 'celex:32024R1689/oj#art_36').

% References
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
