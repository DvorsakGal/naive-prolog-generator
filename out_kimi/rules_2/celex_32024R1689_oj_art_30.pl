% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 40c068d1766501805230198848c14736524551aa24ec0d1e7af3cbfc8b662988
% cached     : False
% title      : Notification procedure
:- pred may_notify/2, gloss('notifying authority may notify conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_notify_commission_and_member_states/2, gloss('notifying authority shall notify Commission and other Member States of conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred notification_details/2, gloss('notification includes full details of conformity assessment activities'), source('celex:32024R1689/oj#art_30').
:- pred documentary_evidence_required/2, gloss('notifying authority shall provide documentary evidence of competence and monitoring arrangements'), source('celex:32024R1689/oj#art_30').
:- pred may_perform_notified_body_activities/1, gloss('conformity assessment body may perform activities of notified body'), source('celex:32024R1689/oj#art_30').
:- pred objection_period_short/1, gloss('two week objection period for accreditation certificate notifications'), source('celex:32024R1689/oj#art_30').
:- pred objection_period_long/1, gloss('two month objection period for documentary evidence notifications'), source('celex:32024R1689/oj#art_30').
:- pred commission_decides_authorisation_justified/2, gloss('Commission decides whether authorisation is justified after objections'), source('celex:32024R1689/oj#art_30').

may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements(Body, art_31).

must_notify_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    notification_details(Body, Details),
    Details = notification(activities(A), modules(M), types(T), attestation(C)).

notification_details(Body, notification(activities(A), modules(M), types(T), attestation(C))) :-
    conformity_assessment_body(Body),
    conformity_assessment_activity(A),
    conformity_assessment_procedure(M),
    ai_system(T),
    attestation_of_competence(C).

documentary_evidence_required(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    must_notify_commission_and_member_states(Authority, Body),
    \+ accreditation_certificate_notification(Body, art_29_par_2),
    attestation_of_competence(Body),
    monitoring_arrangements(Body).

accreditation_certificate_notification(Body, art_29_par_2) :-
    conformity_assessment_body(Body),
    issued_certificate(Body, art_29_par_2).

may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notified(Body),
    \+ commission_objection(Body),
    \+ other_member_state_objection(Body).

may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    accreditation_certificate_notification(Body, art_29_par_2),
    objection_period_short_expired(Body),
    \+ commission_objection(Body),
    \+ other_member_state_objection(Body).

may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    documentary_evidence_notification(Body),
    objection_period_long_expired(Body),
    \+ commission_objection(Body),
    \+ other_member_state_objection(Body).

documentary_evidence_notification(Body) :-
    conformity_assessment_body(Body),
    documentary_evidence_required(_Authority, Body).

commission_objection(Body) :-
    conformity_assessment_body(Body),
    commission_objection_period(Body).

other_member_state_objection(Body) :-
    conformity_assessment_body(Body),
    other_member_state_objection_period(Body).

commission_decides_authorisation_justified(Body, Decision) :-
    conformity_assessment_body(Body),
    (commission_objection(Body); other_member_state_objection(Body)),
    commission_decides(Body, Decision).

provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_30').
provenance(notification_details/2, 'celex:32024R1689/oj#art_30').
provenance(documentary_evidence_required/2, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(commission_decides_authorisation_justified/2, 'celex:32024R1689/oj#art_30').

references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
