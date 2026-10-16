% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 69235653ef600112754f3bce532b894fa9d9ec764d85326812120b98fdbb1385
% cached     : False
% title      : Notification procedure
:- pred may_notify/2, gloss('notifying authority may notify a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_notify/2, gloss('notifying authority shall notify the Commission and other Member States'), source('celex:32024R1689/oj#art_30').
:- pred notification_includes/2, gloss('notification includes specified details'), source('celex:32024R1689/oj#art_30').
:- pred may_perform_activities/1, gloss('conformity assessment body may perform notified body activities'), source('celex:32024R1689/oj#art_30').
:- pred objections_raised/1, gloss('objections raised by Commission or other Member States'), source('celex:32024R1689/oj#art_30').
:- pred commission_decides_authorisation/2, gloss('Commission decides whether authorisation is justified'), source('celex:32024R1689/oj#art_30').

% Article 30(1): Notifying authorities may notify only conformity assessment bodies satisfying Article 31 requirements
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfies_requirements(Body, 'celex:32024R1689/oj#art_31').

% Article 30(2): Notifying authorities shall notify Commission and other Member States
must_notify(Authority, notification(Body, tool)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    electronic_notification_tool(tool),
    developed_and_managed(tool, commission).

% Article 30(3): Notification includes full details; non-accreditation cases require documentary evidence
notification_includes(Authority, details(Body, Activities, Modules, Types, Attestation)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    conformity_assessment_activities(Body, Activities),
    conformity_assessment_modules(Body, Modules),
    types_of_ai_systems_concerned(Body, Types),
    attestation_of_competence(Body, Attestation).

must_provide(Authority, documentary_evidence(Body, Competence, Arrangements)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    \+ accreditation_certificate_notification(Body, 'celex:32024R1689/oj#art_29/par_2'),
    competence_attested(Body, Competence),
    monitoring_arrangements(Body, Arrangements),
    ensures_continued_satisfaction(Body, 'celex:32024R1689/oj#art_31').

% Article 30(4): Conformity assessment body may perform activities only where no objections raised
may_perform_activities(Body) :-
    conformity_assessment_body(Body),
    notified_body(Body),
    \+ objections_raised(notification(Body)).

objections_raised(notification(Body)) :-
    conformity_assessment_body(Body),
    notification_sent(Authority, Body, Time),
    accreditation_certificate_notification(Body, 'celex:32024R1689/oj#art_29/par_2'),
    within_two_weeks(Time),
    objection(Commission, Body) ; objection(MemberState, Body).

objections_raised(notification(Body)) :-
    conformity_assessment_body(Body),
    notification_sent(Authority, Body, Time),
    documentary_evidence_notification(Body, 'celex:32024R1689/oj#art_29/par_3'),
    within_two_months(Time),
    objection(Commission, Body) ; objection(MemberState, Body).

% Article 30(5): Commission decides on objections
commission_decides_authorisation(Decision, Body) :-
    objections_raised(notification(Body)),
    commission_consults(MemberState, Body),
    commission_decides(Decision, authorisation_justified(Body)),
    addressed_to(Decision, MemberState),
    addressed_to(Decision, Body).

% Provenance
provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(must_provide/2, 'celex:32024R1689/oj#art_30').
provenance(may_perform_activities/1, 'celex:32024R1689/oj#art_30').
provenance(objections_raised/1, 'celex:32024R1689/oj#art_30').
provenance(commission_decides_authorisation/2, 'celex:32024R1689/oj#art_30').

% References
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
