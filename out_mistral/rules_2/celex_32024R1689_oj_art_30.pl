% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c1407a25d6f2daa7f1200eb72921863aac97ccfe0af1bee09e6b4356d91cceb1
% cached     : False
% title      : Notification procedure
:- pred notifying_authority/1, gloss('national authority for conformity assessment procedures'), source('19').
:- pred conformity_assessment_body/1, gloss('body performing third‑party conformity assessment'), source('21').
:- pred notified_body/1, gloss('conformity assessment body notified in accordance with the regulation'), source('22').
:- pred member_state/1, gloss('a Member State of the European Union'), source('reconciled').
:- pred meets_requirements_art_31/1, gloss('entity meets the requirements laid down in Article 31'), source('reconciled').
:- pred inform_commission/2, gloss('Member State informs Commission'), source('reconciled').
:- pred no_objection_within/2, gloss('no objection raised by Member State or Commission within 15 calendar days of receipt of information'), source('reconciled').

:- pred notification_includes_details/1, gloss('notification includes full details of conformity assessment activities, modules, types of AI systems, and attestation of competence'), source('celex:32024R1689/oj#art_30').
:- pred notification_based_on_accreditation_certificate/1, gloss('notification is based on an accreditation certificate'), source('celex:32024R1689/oj#art_30').
:- pred notification_includes_documentary_evidence/1, gloss('notification includes documentary evidence attesting to competence and monitoring arrangements'), source('celex:32024R1689/oj#art_30').
:- pred may_perform_notified_body_activities/1, gloss('conformity assessment body may perform activities of a notified body'), source('celex:32024R1689/oj#art_30').
:- pred commission_consultations_entered/1, gloss('Commission enters into consultations with Member States and conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred commission_decides_authorisation_justified/1, gloss('Commission decides whether authorisation is justified'), source('celex:32024R1689/oj#art_30').

must_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_art_31(Body).

must_notify_using_electronic_tool(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_art_31(Body).

must_inform_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_art_31(Body),
    member_state(_MS).

notification_includes_details(Notification) :-
    notification(Notification).

notification_based_on_accreditation_certificate(Notification) :-
    notification(Notification).

notification_includes_documentary_evidence(Notification) :-
    notification(Notification).

may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification(Notification),
    notification_of(Notification, Body),
    notification_includes_details(Notification),
    no_objection_within(weeks(2), Notification).

may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification(Notification),
    notification_of(Notification, Body),
    notification_includes_details(Notification),
    notification_includes_documentary_evidence(Notification),
    no_objection_within(months(2), Notification).

must_enter_consultations(Commission, Body) :-
    ai_office(Commission),
    conformity_assessment_body(Body),
    objection_raised(Body).

must_decide_authorisation(Commission, Body) :-
    ai_office(Commission),
    conformity_assessment_body(Body),
    objection_raised(Body).

must_address_decision(Commission, MemberState, Body) :-
    ai_office(Commission),
    member_state(MemberState),
    conformity_assessment_body(Body),
    objection_raised(Body).

:- pred notification/1, gloss('a notification of a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred notification_of/2, gloss('notification is of a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/1, gloss('objection raised by Commission or Member State to a notification'), source('celex:32024R1689/oj#art_30').
:- pred ai_office/1, gloss('Commission function for AI governance'), source('47').

provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_using_electronic_tool/2, 'celex:32024R1689/oj#art_30').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes_details/1, 'celex:32024R1689/oj#art_30').
provenance(notification_based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(notification_includes_documentary_evidence/1, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_enter_consultations/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').
provenance(must_address_decision/3, 'celex:32024R1689/oj#art_30').
provenance(notification/1, 'celex:32024R1689/oj#art_30').
provenance(notification_of/2, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_30').

references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
