% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2c66d91ba52f6e1bb1f9b6f64744e125e2c276a5421b8afcb6bcc6dd9e234e10
% cached     : False
% title      : Notification procedure
:- pred permitted_notification/2, gloss('A notifying authority may notify a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred satisfies_requirements/2, gloss('An entity satisfies specific legal requirements'), source('celex:32024R1689/oj#art_30').
:- pred must_notify/2, gloss('An actor is obliged to send a notification'), source('celex:32024R1689/oj#art_30').
:- pred electronic_notification_tool_used/1, gloss('The notification uses the electronic tool managed by the Commission'), source('celex:32024R1689/oj#art_30').
:- pred notification_details_included/1, gloss('The notification includes required full details and attestation'), source('celex:32024R1689/oj#art_30').
:- pred based_on_accreditation_certificate/1, gloss('A notification is based on an accreditation certificate'), source('celex:32024R1689/oj#art_30').
:- pred must_provide_documentary_evidence/2, gloss('A notifying authority must provide documentary evidence of competence and monitoring'), source('celex:32024R1689/oj#art_30').
:- pred permitted_perform_activities/2, gloss('A conformity assessment body is permitted to perform the activities of a notified body'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/2, gloss('An objection was raised against the notification within the specified deadline'), source('celex:32024R1689/oj#art_30').
:- pred period_elapsed/2, gloss('A period has elapsed since an event or notification'), source('celex:32024R1689/oj#art_30').
:- pred must_consult/2, gloss('The Commission must enter into consultations with relevant parties'), source('celex:32024R1689/oj#art_30').
:- pred must_decide/2, gloss('The Commission must decide on the justification of the authorisation'), source('celex:32024R1689/oj#art_30').

% Paragraph 1: Notifying authorities may notify only conformity assessment bodies
% which have satisfied the requirements laid down in Article 31.
permitted_notification(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfies_requirements(Body, requirements_article_31).

% Paragraph 2: Notifying authorities shall notify the Commission and the other Member States,
% using the electronic notification tool developed and managed by the Commission,
% of each conformity assessment body referred to in paragraph 1.
must_notify(Authority, notification_of(Body, recipients(commission, other_member_states))) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    permitted_notification(Authority, Body),
    electronic_notification_tool_used(notification_of(Body)).

% Paragraph 3: The notification shall include full details...
% Where not based on an accreditation certificate, the authority shall provide documentary evidence.
must_provide_documentary_evidence(Authority, evidence_for(Body, recipients(commission, other_member_states))) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    notification_details_included(notification_of(Body)),
    \+ based_on_accreditation_certificate(notification_of(Body)).

% Paragraph 4: May perform activities of a notified body only where no objections are raised
% within 2 weeks (accreditation certificate) or 2 months (documentary evidence).
permitted_perform_activities(Body, notified_body_activities) :-
    conformity_assessment_body(Body),
    based_on_accreditation_certificate(notification_of(Body)),
    period_elapsed(weeks(2), notification_of(Body)),
    \+ objection_raised(commission, notification_of(Body)),
    \+ objection_raised(other_member_states, notification_of(Body)).

permitted_perform_activities(Body, notified_body_activities) :-
    conformity_assessment_body(Body),
    \+ based_on_accreditation_certificate(notification_of(Body)),
    period_elapsed(months(2), notification_of(Body)),
    \+ objection_raised(commission, notification_of(Body)),
    \+ objection_raised(other_member_states, notification_of(Body)).

% Paragraph 5: Where objections are raised, the Commission shall enter into consultations
% and decide whether the authorisation is justified.
must_consult(commission, consultations_on(Body, MemberState)) :-
    objection_raised(_Objector, notification_of(Body)),
    notifying_authority(Authority),
    permitted_notification(Authority, Body),
    member_state_of(Authority, MemberState).

must_decide(commission, authorisation_justified(Body)) :-
    objection_raised(_Objector, notification_of(Body)),
    conformity_assessment_body(Body).

:- pred member_state_of/2, gloss('The Member State corresponding to a notifying authority'), source('celex:32024R1689/oj#art_30').

% References
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% Provenance
provenance(permitted_notification/2, 'celex:32024R1689/oj#art_30').
provenance(satisfies_requirements/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(electronic_notification_tool_used/1, 'celex:32024R1689/oj#art_30').
provenance(notification_details_included/1, 'celex:32024R1689/oj#art_30').
provenance(based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_perform_activities/2, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(period_elapsed/2, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide/2, 'celex:32024R1689/oj#art_30').
provenance(member_state_of/2, 'celex:32024R1689/oj#art_30').
