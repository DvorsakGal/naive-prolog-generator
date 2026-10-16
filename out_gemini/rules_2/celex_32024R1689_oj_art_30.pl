% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 8e761829041c460adf748420806696e38450c229b6ec98fef6f594cc9ef98e57
% cached     : False
% title      : Notification procedure
:- pred satisfies_requirements_art_31/1, gloss('Conformity assessment body satisfies requirements laid down in Article 31'), source('celex:32024R1689/oj#art_30').
:- pred permitted_notification/2, gloss('Notifying authority may notify the conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred member_state/1, gloss('Entity is a Member State'), source('celex:32024R1689/oj#art_30').
:- pred notification_details/2, gloss('Notification includes specified full details'), source('celex:32024R1689/oj#art_30').
:- pred based_on_accreditation_certificate/1, gloss('Notification is based on an accreditation certificate'), source('celex:32024R1689/oj#art_30').
:- pred provides_documentary_evidence/3, gloss('Notifying authority provides documentary evidence attesting competence and regular monitoring arrangements'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/2, gloss('An objection is raised to the notification within the applicable period'), source('celex:32024R1689/oj#art_30').
:- pred permitted_activities_of_notified_body/1, gloss('Conformity assessment body may perform the activities of a notified body'), source('celex:32024R1689/oj#art_30').
:- pred notification/2, gloss('Notification of conformity assessment body by notifying authority'), source('celex:32024R1689/oj#art_30').
:- pred includes_accreditation_certificate/1, gloss('Notification includes an accreditation certificate'), source('celex:32024R1689/oj#art_30').
:- pred includes_documentary_evidence/1, gloss('Notification includes documentary evidence'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised_within/3, gloss('Objection raised to notification by entity within timeframe'), source('celex:32024R1689/oj#art_30').
:- pred must_consult/2, gloss('Actor must enter into consultations with parties'), source('celex:32024R1689/oj#art_30').
:- pred must_address_decision/2, gloss('Commission must address its decision to specified parties'), source('celex:32024R1689/oj#art_30').

% Paragraph 1: Notifying authorities may notify only conformity assessment bodies satisfying Article 31
permitted_notification(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfies_requirements_art_31(Body).

% Paragraph 2: Notifying authorities shall notify the Commission and the other Member States
must_notify(Authority, notification_to_commission(Body)) :-
    permitted_notification(Authority, Body).

must_notify(Authority, notification_to_member_state(MS, Body)) :-
    permitted_notification(Authority, Body),
    member_state(MS).

% Paragraph 3: Details required in the notification and evidence if not accredited
must_comply(Authority, notification_details(Body, details(activities, module, ai_system_types, attestation_of_competence))) :-
    permitted_notification(Authority, Body).

must_comply(Authority, provide_evidence(Body, commission)) :-
    permitted_notification(Authority, Body),
    \+ based_on_accreditation_certificate(Body),
    provides_documentary_evidence(Authority, Body, commission).

must_comply(Authority, provide_evidence(Body, ms(MS))) :-
    permitted_notification(Authority, Body),
    member_state(MS),
    \+ based_on_accreditation_certificate(Body),
    provides_documentary_evidence(Authority, Body, MS).

% Paragraph 4: May perform activities only where no objections raised within deadline
permitted_activities_of_notified_body(Body) :-
    conformity_assessment_body(Body),
    notification(Authority, Body),
    notifying_authority(Authority),
    \+ objection_raised(Authority, Body).

objection_raised(Authority, Body) :-
    notification(Authority, Body),
    includes_accreditation_certificate(notification(Authority, Body)),
    objection_raised_within(_Objector, notification(Authority, Body), weeks(2)).

objection_raised(Authority, Body) :-
    notification(Authority, Body),
    includes_documentary_evidence(notification(Authority, Body)),
    objection_raised_within(_Objector, notification(Authority, Body), months(2)).

% Paragraph 5: Consultations and decision when objections raised
must_consult(Commission, consultations(MS, Body)) :-
    commission(Commission),
    objection_raised(Authority, Body),
    notification(Authority, Body),
    member_state(MS).

must_decide(Commission, justification_of_authorisation(Body)) :-
    commission(Commission),
    objection_raised(_Authority, Body).

must_address_decision(Commission, decision(justification_of_authorisation(Body), addressees(MS, Body))) :-
    commission(Commission),
    objection_raised(_Authority, Body),
    member_state(MS).

% Provenance
provenance(permitted_notification/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_comply/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_activities_of_notified_body/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide/2, 'celex:32024R1689/oj#art_30').
provenance(must_address_decision/2, 'celex:32024R1689/oj#art_30').

% References
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
