% unit       : celex:32024R1689/oj#art_36
% title      : Changes to notifications
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : gpt-oss:120b-cloud
% prompt sha : f25c2add2c91bc77f99def92eabf0fff3ce7362c582f3a9a7e50c32279106acb
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_notify/2, gloss('obligation of a notifying authority to inform about a change to the notification of a notified body'), source('celex:32024R1689/oj#art_36').
:- pred change_extension_of_scope/1, gloss('change that extends the scope of the notification of a notified body'), source('celex:32024R1689/oj#art_36').
:- pred change_other_than_extension/1, gloss('change to the notification of a notified body that is not an extension of its scope'), source('celex:32024R1689/oj#art_36').
:- pred required_procedure_applies/2, gloss('procedures that apply to a given change of notification'), source('celex:32024R1689/oj#art_36').
:- pred ceasing_conformity_assessment/1, gloss('condition that a notified body decides to cease its conformity assessment activities'), source('celex:32024R1689/oj#art_36').
:- pred must_inform/2, gloss('obligation of an actor to inform another party'), source('celex:32024R1689/oj#art_36').
:- pred planned_cessation/1, gloss('condition that a cessation of activities is planned'), source('celex:32024R1689/oj#art_36').
:- pred required_notice_before_cessation/2, gloss('required notice period before a planned cessation'), source('celex:32024R1689/oj#art_36').
:- pred ceased/1, gloss('condition that a notified body has ceased its conformity assessment activities'), source('celex:32024R1689/oj#art_36').
:- pred another_notified_body_assumed/2, gloss('another notified body has confirmed in writing that it will assume responsibilities for the high‑risk AI systems covered by the certificates'), source('celex:32024R1689/oj#art_36').
:- pred certificate/1, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_36').
:- pred covered_by_certificate/2, gloss('high‑risk AI system covered by a certificate'), source('celex:32024R1689/oj#art_36').
:- pred permitted_certificate_validity/1, gloss('permission for a certificate to remain valid under specific conditions'), source('celex:32024R1689/oj#art_36').
:- pred reason_to_consider/1, gloss('sufficient reason for a notifying authority to consider that a notified body no longer meets the requirements or fails its obligations'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate/2, gloss('obligation of a notifying authority to investigate a notified body'), source('celex:32024R1689/oj#art_36').
:- pred required_designation_action/2, gloss('designation action (restrict, suspend, withdraw) that a notifying authority must take'), source('celex:32024R1689/oj#art_36').
:- pred must_withdraw_designation/2, gloss('obligation of a notifying authority to withdraw the designation of a ceased notified body'), source('celex:32024R1689/oj#art_36').
:- pred designation_status/2, gloss('current status of a notified body designation'), source('celex:32024R1689/oj#art_36').
:- pred must_assess_impact/1, gloss('obligation of a notifying authority to assess the impact on certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_submit_report/2, gloss('obligation of a notifying authority to submit a report to the Commission and other Member States'), source('celex:32024R1689/oj#art_36').
:- pred must_require_certificate_action/3, gloss('obligation of a notifying authority to require a notified body to suspend or withdraw certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_provide_information/3, gloss('obligation of a notifying authority to provide relevant information to the national competent authority'), source('celex:32024R1689/oj#art_36').
:- pred must_ensure_files_kept/2, gloss('obligation of a notifying authority to keep the files of a notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_make_files_available/2, gloss('obligation of a notifying authority to make the files of a notified body available on request'), source('celex:32024R1689/oj#art_36').
:- pred permitted_extend_provisional_validity/2, gloss('permission to extend the provisional validity of certificates under specific circumstances'), source('celex:32024R1689/oj#art_36').

must_notify(Authority, notification_change_of_notified_body(NB)) :-
    notifying_authority(Authority),
    notified_body(NB).

required_procedure_applies(Change, procedure_art_29_30) :-
    change_extension_of_scope(Change).

required_procedure_applies(Change, procedure_art_36_par_3_9) :-
    change_other_than_extension(Change).

change_extension_of_scope(notification_extension_of_scope(NB)) :-
    notified_body(NB).

change_other_than_extension(notification_other_change(NB)) :-
    notified_body(NB).

must_inform(NB, notifying_authority) :-
    notified_body(NB),
    ceasing_conformity_assessment(NB).

must_inform(NB, Provider) :-
    notified_body(NB),
    ceasing_conformity_assessment(NB),
    provider(Provider).

required_notice_before_cessation(NB, one_year) :-
    notified_body(NB),
    planned_cessation(NB).

permitted_certificate_validity(Certificate) :-
    certificate(Certificate),
    notified_body(NB),
    ceased(NB),
    another_notified_body_assumed(OtherNB, NB),
    covered_by_certificate(System, Certificate),
    high_risk_ai_system(System).

must_withdraw_designation(Authority, NB) :-
    notifying_authority(Authority),
    ceased(NB).

must_investigate(Authority, NB) :-
    notifying_authority(Authority),
    reason_to_consider(NB).

must_inform(Authority, NB) :-
    notifying_authority(Authority),
    reason_to_consider(NB).

required_designation_action(NB, restrict) :-
    notifying_authority(Authority),
    reason_to_consider(NB),
    seriousness(high).

required_designation_action(NB, suspend) :-
    notifying_authority(Authority),
    reason_to_consider(NB),
    seriousness(medium).

required_designation_action(NB, withdraw) :-
    notifying_authority(Authority),
    reason_to_consider(NB),
    seriousness(critical).

must_assess_impact(Authority) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).

must_submit_report(Authority, report_designation_change(NB)) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).

must_require_certificate_action(Authority, NB, Action) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn),
    member(Action, [suspend, withdraw]).

must_provide_information(Authority, NationalCompetentAuthority, Info) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn),
    provider(Provider),
    Info = certificate_information(NB, Provider).

must_ensure_files_kept(Authority, NB) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).

must_make_files_available(Authority, NB) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).

permitted_extend_provisional_validity(Certificate, ExtensionPeriod) :-
    certificate(Certificate),
    designation_status(NB, withdrawn),
    ExtensionPeriod = three_months,
    total_extension_not_exceeding_twelve_months(NB).

provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(required_procedure_applies/2, 'celex:32024R1689/oj#art_36').
provenance(change_extension_of_scope/1, 'celex:32024R1689/oj#art_36').
provenance(change_other_than_extension/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(required_notice_before_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(permitted_certificate_validity/1, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(required_designation_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/1, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_certificate_action/3, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_make_files_available/2, 'celex:32024R1689/oj#art_36').
provenance(permitted_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').

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
