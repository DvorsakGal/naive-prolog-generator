% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0bd0ee969fc53d092b4ac876074bd743add03417b02a32e8ac230909053a681e
% cached     : False
% title      : Notification procedure
:- pred may_notify/2, gloss('notifying authority may notify a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_notify/2, gloss('notifying authority must notify the Commission and other Member States about a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred notification_includes/2, gloss('notification includes specified details'), source('celex:32024R1689/oj#art_30').
:- pred notification_based_on_accreditation_certificate/1, gloss('notification is based on an accreditation certificate'), source('celex:32024R1689/oj#art_30').
:- pred notification_based_on_documentary_evidence/1, gloss('notification is based on documentary evidence'), source('celex:32024R1689/oj#art_30').
:- pred may_perform_notified_body_activities/2, gloss('conformity assessment body may perform activities of a notified body'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/2, gloss('objection raised by Commission or Member State'), source('celex:32024R1689/oj#art_30').
:- pred must_consult/2, gloss('Commission must enter into consultations'), source('celex:32024R1689/oj#art_30').
:- pred must_decide_authorisation_justified/1, gloss('Commission must decide whether authorisation is justified'), source('celex:32024R1689/oj#art_30').
:- pred satisfied_requirements_art_31/1, gloss('conformity assessment body has satisfied requirements of Article 31'), source('celex:32024R1689/oj#art_30').

may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfied_requirements_art_31(Body).

must_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body).

notification_includes(notification(Body), Details) :-
    conformity_assessment_body(Body),
    Details = details(conformity_assessment_activities(Body), modules(Body), ai_systems_concerned(Body), attestation_of_competence(Body)).

notification_based_on_accreditation_certificate(notification(Body)) :-
    conformity_assessment_body(Body).

notification_based_on_documentary_evidence(notification(Body)) :-
    conformity_assessment_body(Body),
    \+ notification_based_on_accreditation_certificate(notification(Body)).

may_perform_notified_body_activities(Body, Time) :-
    conformity_assessment_body(Body),
    must_notify(_, Body),
    \+ objection_raised(_, Body),
    notification_based_on_accreditation_certificate(notification(Body)),
    Time = weeks(2).

may_perform_notified_body_activities(Body, Time) :-
    conformity_assessment_body(Body),
    must_notify(_, Body),
    \+ objection_raised(_, Body),
    notification_based_on_documentary_evidence(notification(Body)),
    Time = months(2).

must_consult(commission, parties(MemberStates, Body)) :-
    objection_raised(_, Body),
    conformity_assessment_body(Body),
    MemberStates = member_states.

must_decide_authorisation_justified(commission) :-
    must_consult(commission, _).

satisfied_requirements_art_31(Body) :-
    conformity_assessment_body(Body).

provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(notification_based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(notification_based_on_documentary_evidence/1, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/2, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation_justified/1, 'celex:32024R1689/oj#art_30').
provenance(satisfied_requirements_art_31/1, 'celex:32024R1689/oj#art_30').

references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
