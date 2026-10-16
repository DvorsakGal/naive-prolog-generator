% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 2026f7db532e10177a9768149329a5cebb37474b6cfd1b09fbfc4608a7d588f1
% cached     : False
% title      : Notification procedure
:- pred may_notify_conformity_assessment_body/2, gloss('notifying authority may notify a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_notify_commission_and_member_states/2, gloss('notifying authority must notify Commission and Member States of a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred notification_includes_full_details/1, gloss('notification includes full details of activities, modules, AI system types and attestation'), source('celex:32024R1689/oj#art_30').
:- pred based_on_accreditation_certificate/1, gloss('notification is based on an accreditation certificate referred to in Article 29(2)'), source('celex:32024R1689/oj#art_30').
:- pred must_provide_documentary_evidence_of_competence/2, gloss('notifying authority must provide documentary evidence attesting competence and monitoring arrangements'), source('celex:32024R1689/oj#art_30').
:- pred permitted_to_perform_notified_body_activities/1, gloss('conformity assessment body is permitted to perform notified body activities'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised_within_period/1, gloss('objection raised by Commission or Member State within applicable period'), source('celex:32024R1689/oj#art_30').
:- pred must_consult_on_objection/2, gloss('Commission must enter into consultations regarding an objection'), source('celex:32024R1689/oj#art_30').
:- pred must_decide_authorisation_justification/2, gloss('Commission must decide whether authorisation is justified'), source('celex:32024R1689/oj#art_30').

may_notify_conformity_assessment_body(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_of_art_31(Body).

must_notify_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify_conformity_assessment_body(Authority, Body).

notification_includes_full_details(notification(Body)) :-
    conformity_assessment_body(Body).

must_provide_documentary_evidence_of_competence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ based_on_accreditation_certificate(notification(Body)).

permitted_to_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    \+ objection_raised_within_period(notification(Body)).

must_consult_on_objection(commission, Notification) :-
    objection_raised_within_period(Notification).

must_decide_authorisation_justification(commission, Notification) :-
    objection_raised_within_period(Notification).

provenance(may_notify_conformity_assessment_body/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes_full_details/1, 'celex:32024R1689/oj#art_30').
provenance(based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence_of_competence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_to_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised_within_period/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult_on_objection/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation_justification/2, 'celex:32024R1689/oj#art_30').

references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
