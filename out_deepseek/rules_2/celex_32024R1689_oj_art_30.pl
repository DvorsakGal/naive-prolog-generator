% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e690a7b9cafd7b89864477f21f2392b0f624f81b46e09638bca159bf21222913
% cached     : False
% title      : Notification procedure
:- pred may_notify/2, gloss('notifying authority may notify conformity assessment body'), source('celex:32024R1689/oj#art_30/par_1').
:- pred must_notify_commission_and_member_states/2, gloss('notifying authority shall notify Commission and other Member States of conformity assessment body'), source('celex:32024R1689/oj#art_30/par_2').
:- pred notification_includes/2, gloss('notification includes details of conformity assessment activities'), source('celex:32024R1689/oj#art_30/par_3').
:- pred notification_based_on_accreditation/1, gloss('notification is based on an accreditation certificate'), source('celex:32024R1689/oj#art_30/par_3').
:- pred must_provide_documentary_evidence/2, gloss('notifying authority shall provide documentary evidence attesting competence'), source('celex:32024R1689/oj#art_30/par_3').
:- pred may_perform_notified_body_activities/2, gloss('conformity assessment body may perform notified body activities'), source('celex:32024R1689/oj#art_30/par_4').
:- pred objection_raised/2, gloss('objection raised by Commission or Member State'), source('celex:32024R1689/oj#art_30/par_4').
:- pred must_enter_consultations/2, gloss('Commission shall enter into consultations with Member States and conformity assessment body'), source('celex:32024R1689/oj#art_30/par_5').
:- pred must_decide_authorisation/2, gloss('Commission shall decide whether authorisation is justified'), source('celex:32024R1689/oj#art_30/par_5').

% Paragraph 1
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfied_requirements(Body, 'celex:32024R1689/oj#art_31').

satisfied_requirements(Body, Article) :-
    conformity_assessment_body(Body).

% Paragraph 2
must_notify_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body).

% Paragraph 3
notification_includes(Notification, details(Activities, Modules, Systems, Attestation)) :-
    conformity_assessment_body(Body),
    offers_conformity_assessment_activities(Body),
    notification_based_on_accreditation(Notification),
    notification_includes(Notification, details(Activities, Modules, Systems, Attestation)).

notification_based_on_accreditation(Notification) :-
    notification_includes(Notification, details(_, _, _, _)).

must_provide_documentary_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ notification_based_on_accreditation(_),
    must_notify_commission_and_member_states(Authority, Body).

% Paragraph 4
may_perform_notified_body_activities(Body, Activities) :-
    conformity_assessment_body(Body),
    offers_conformity_assessment_activities(Body),
    notification_based_on_accreditation(Notification),
    \+ objection_raised(_, _),
    within_period(Notification, weeks(2)).

may_perform_notified_body_activities(Body, Activities) :-
    conformity_assessment_body(Body),
    offers_conformity_assessment_activities(Body),
    \+ notification_based_on_accreditation(Notification),
    must_provide_documentary_evidence(_, Body),
    \+ objection_raised(_, _),
    within_period(Notification, months(2)).

objection_raised(Commission, Body) :-
    conformity_assessment_body(Body).

objection_raised(MemberState, Body) :-
    conformity_assessment_body(Body).

% Paragraph 5
must_enter_consultations(Commission, consultation(MemberStates, Body)) :-
    objection_raised(_, Body),
    conformity_assessment_body(Body).

must_decide_authorisation(Commission, decision(MemberState, Body)) :-
    must_enter_consultations(Commission, consultation(_, Body)),
    conformity_assessment_body(Body).

% Provenance
provenance(may_notify/2, 'celex:32024R1689/oj#art_30/par_1').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_30/par_2').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30/par_3').
provenance(notification_based_on_accreditation/1, 'celex:32024R1689/oj#art_30/par_3').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30/par_3').
provenance(may_perform_notified_body_activities/2, 'celex:32024R1689/oj#art_30/par_4').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30/par_4').
provenance(must_enter_consultations/2, 'celex:32024R1689/oj#art_30/par_5').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30/par_5').

% References
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
