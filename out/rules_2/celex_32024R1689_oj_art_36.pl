% unit       : celex:32024R1689/oj#art_36
% title      : Changes to notifications
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : gpt-oss:120b-cloud
% prompt sha : 7a3ae10deb350d7ff5b48225c66e3958a01fd3c99a8c120dd549f45973025fc4
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_36').
:- pred other_notifying_authority/1, gloss('other notifying authority'), source('celex:32024R1689/oj#art_36').

%--- Duties of the notifying authority -------------------------------------------------
must_notify(notifying_authority, commission) :-
    relevant_change_of_notification(NB),
    notified_body(NB).

must_notify(notifying_authority, member_state) :-
    relevant_change_of_notification(NB),
    notified_body(NB).

%--- Conditions for changes ----------------------------------------------------------------
relevant_change_of_notification(NB) :-
    notified_body(NB).

extension_of_scope_applies(NB) :-
    notified_body(NB).

non_extension_change_applies(NB) :-
    notified_body(NB),
    \+ extension_of_scope_applies(NB).

%--- Duties of a notified body that ceases activity ---------------------------------------
ceasing_conformity_assessment(NB) :-
    notified_body(NB).

must_inform(notified_body, notifying_authority) :-
    ceasing_conformity_assessment(NB),
    notified_body(NB).

must_inform(notified_body, Provider) :-
    ceasing_conformity_assessment(NB),
    notified_body(NB),
    provider(Provider),
    provider(Provider).

another_notified_body_confirmed(AnotherNB) :-
    notified_body(AnotherNB).

related_nb(NB, NB) :-
    notified_body(NB).

certificate_validity_extended(NB) :-
    ceasing_conformity_assessment(NB),
    another_notified_body_confirmed(AnotherNB),
    related_nb(NB, AnotherNB).

must_complete_assessment(AnotherNB, HR) :-
    another_notified_body_confirmed(AnotherNB),
    high_risk_ai_system(HR),
    high_risk_ai_system(HR).

must_withdraw_designation(notifying_authority, NB) :-
    ceased_activity(NB),
    notified_body(NB).

ceased_activity(NB) :-
    notified_body(NB).

%--- Investigation duties of the notifying authority ---------------------------------------
sufficient_reason(NB) :-
    notified_body(NB).

must_investigate(notifying_authority, NB) :-
    sufficient_reason(NB),
    notified_body(NB).

must_inform(notifying_authority, NB) :-
    sufficient_reason(NB),
    notified_body(NB).

must_allow_views(notifying_authority, NB) :-
    sufficient_reason(NB),
    notified_body(NB).

conclusion_not_meet_requirements(NB) :-
    notified_body(NB).

must_restrict(notifying_authority, NB) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).

must_suspend(notifying_authority, NB) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).

must_withdraw_designation(notifying_authority, NB) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).

must_inform(notifying_authority, commission) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).

must_inform(notifying_authority, member_state) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).

%--- Status of a notified body ------------------------------------------------------------
designation_status(NB, Status) :-
    notified_body(NB),
    status(Status).

status(suspended).
status(restricted).
status(withdrawn).

member_status(Status) :-
    status(Status).

%--- Duties after restriction, suspension or withdrawal ------------------------------------
must_ensure_files_kept(notifying_authority, NB) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).

must_make_available(notifying_authority, NB, ONA) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB),
    other_notifying_authority(ONA),
    ONA = ONA.

other_notifying_authority(ona).

must_make_available(notifying_authority, NB, MSA) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB),
    market_surveillance_authority(MSA),
    MSA = MSA.

%--- Required actions within three months --------------------------------------------------
required_assess_impact_on_certificates(notifying_authority, NB) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).

required_submit_report(notifying_authority, commission) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).

required_require_nb_suspend_or_withdraw(notifying_authority, NB) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).

required_inform(notifying_authority, commission) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).

required_provide_info_to_nca(notifying_authority, Provider) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB),
    provider(Provider),
    provider(Provider).

%--- Validity of certificates after suspension/restriction -------------------------------
certificates_remain_valid(NB) :-
    designation_status(NB, suspended),
    notifying_authority_confirms_no_risk(NB),
    within_one_month(NB).

certificates_remain_valid(NB) :-
    designation_status(NB, restricted),
    notifying_authority_confirms_no_risk(NB),
    within_one_month(NB).

notifying_authority_confirms_no_risk(NB) :-
    notifying_authority(A),
    notified_body(NB),
    A = A.

within_one_month(NB) :-
    notified_body(NB).

%--- Validity of certificates after withdrawal ---------------------------------------------
certificates_remain_valid_after_withdrawal(NB) :-
    designation_status(NB, withdrawn),
    national_competent_authority(NCA),
    national_competent_authority(NCA),
    no_risk_to_health_safety(NB),
    another_notified_body_confirmed(AnotherNB),
    assessment_completed_within(AnotherNB, 12).

no_risk_to_health_safety(NB) :-
    notified_body(NB).

assessment_completed_within(AnotherNB, 12) :-
    another_notified_body_confirmed(AnotherNB).

%--- Provenance -----------------------------------------------------------------------------
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(relevant_change_of_notification/1, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_applies/1, 'celex:32024R1689/oj#art_36').
provenance(non_extension_change_applies/1, 'celex:32024R1689/oj#art_36').
provenance(ceasing_conformity_assessment/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(another_notified_body_confirmed/1, 'celex:32024R1689/oj#art_36').
provenance(related_nb/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_validity_extended/1, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(ceased_activity/1, 'celex:32024R1689/oj#art_36').
provenance(sufficient_reason/1, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_allow_views/2, 'celex:32024R1689/oj#art_36').
provenance(conclusion_not_meet_requirements/1, 'celex:32024R1689/oj#art_36').
provenance(must_restrict/2, 'celex:32024R1689/oj#art_36').
provenance(must_suspend/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(designation_status/2, 'celex:32024R1689/oj#art_36').
provenance(status/1, 'celex:32024R1689/oj#art_36').
provenance(member_status/1, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_make_available/3, 'celex:32024R1689/oj#art_36').
provenance(other_notifying_authority/1, 'celex:32024R1689/oj#art_36').
provenance(required_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(required_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(required_require_nb_suspend_or_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(required_inform/2, 'celex:32024R1689/oj#art_36').
provenance(required_provide_info_to_nca/2, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid/1, 'celex:32024R1689/oj#art_36').
provenance(notifying_authority_confirms_no_risk/1, 'celex:32024R1689/oj#art_36').
provenance(within_one_month/1, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(no_risk_to_health_safety/1, 'celex:32024R1689/oj#art_36').
provenance(assessment_completed_within/2, 'celex:32024R1689/oj#art_36').

%--- References -----------------------------------------------------------------------------
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
