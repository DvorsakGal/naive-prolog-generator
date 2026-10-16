% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 587249d1cd69bc8557d01f3298293909c26cbe36373620ff5b72e89b6ae95200
% cached     : False
% title      : Notification procedure
:- pred must_notify/2, gloss('notifying authority must notify Commission and Member States of conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred notification_includes/2, gloss('notification includes specified details'), source('celex:32024R1689/oj#art_30').
:- pred may_perform_notified_body_activities/1, gloss('conformity assessment body may perform notified body activities'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/1, gloss('objection raised by Commission or Member State'), source('celex:32024R1689/oj#art_30').
:- pred must_consult/2, gloss('Commission must consult Member States and body when objections raised'), source('celex:32024R1689/oj#art_30').
:- pred must_decide_authorisation/2, gloss('Commission must decide whether authorisation is justified'), source('celex:32024R1689/oj#art_30').

% Paragraph 1
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfied_requirements(Body, 'celex:32024R1689/oj#art_31').

% Paragraph 2
must_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body).

% Paragraph 3
notification_includes(notification(Body), details(Activities, Modules, Types, Attestation)) :-
    conformity_assessment_body(Body),
    conformity_assessment(Activities),
    conformity_assessment_module(Modules),
    ai_system_type(Types),
    attestation_of_competence(Attestation).

must_provide_documentary_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ notification_based_on_accreditation(Authority, Body).

% Paragraph 4
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification_includes_accreditation(Body),
    \+ objection_raised_within(Body, weeks(2)).

may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification_includes_documentary_evidence(Body),
    \+ objection_raised_within(Body, months(2)).

% Paragraph 5
must_consult(Commission, consultation(MemberStates, Body)) :-
    objection_raised(Body),
    conformity_assessment_body(Body).

must_decide_authorisation(Commission, decision(MemberState, Body)) :-
    must_consult(Commission, consultation(_, Body)),
    conformity_assessment_body(Body).

% Provenance
provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').

% References
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
