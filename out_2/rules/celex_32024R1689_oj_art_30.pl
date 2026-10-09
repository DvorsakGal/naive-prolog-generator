% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 866287df24cad535de59a6f109cc6e774d3fd94b9867270e98333ba89b4d81bb
% cached     : False
% title      : Notification procedure
:- pred notify_body/2, gloss('permission for a notifying authority to notify a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_notify/2, gloss('obligation for a notifying authority to notify the Commission and other Member States'), source('celex:32024R1689/oj#art_30').
:- pred must_include/2, gloss('obligation for a notifying authority to include full details in a notification'), source('celex:32024R1689/oj#art_30').
:- pred must_provide/2, gloss('obligation for a notifying authority to provide documentary evidence when no accreditation certificate is used'), source('celex:32024R1689/oj#art_30').
:- pred permitted_perform_activities_of_notified_body/1, gloss('permission for a conformity assessment body to perform activities of a notified body under conditions'), source('celex:32024R1689/oj#art_30').
:- pred no_objection_within/3, gloss('no objection raised by the Commission or Member States within a given time limit'), source('celex:32024R1689/oj#art_30').
:- pred must_consult/2, gloss('obligation for the Commission to consult Member States and the conformity assessment body when objections are raised'), source('celex:32024R1689/oj#art_30').
:- pred must_decide/2, gloss('obligation for the Commission to decide on the authorisation after consultations'), source('celex:32024R1689/oj#art_30').
:- pred accreditation_certificate_included/1, gloss('the notification includes an accreditation certificate'), source('celex:32024R1689/oj#art_30').
:- pred documentary_evidence_included/1, gloss('the notification includes documentary evidence of competence'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/2, gloss('an objection has been raised by a Commission or Member State concerning a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_30').
:- pred other_member_state/1, gloss('a Member State other than the notifying authority'), source('celex:32024R1689/oj#art_30').

% Permission to notify only bodies that satisfy the requirements laid down in art 31
notify_body(NA, B) :-
    notifying_authority(NA),
    conformity_assessment_body(B),
    satisfies_requirements_in_art_31(B).

% Obligation to notify the Commission and other Member States
must_notify(NA, notification(commission, other_member_states, B)) :-
    notifying_authority(NA),
    conformity_assessment_body(B).

% Obligation to include full details in the notification
must_include(NA, full_details(B)) :-
    notifying_authority(NA),
    conformity_assessment_body(B).

% Obligation to provide documentary evidence when no accreditation certificate is used
must_provide(NA, documentary_evidence(competence, B)) :-
    notifying_authority(NA),
    conformity_assessment_body(B),
    \+ accreditation_certificate_included(B).

% Permission for a conformity assessment body to perform activities of a notified body
% (a) when the notification includes an accreditation certificate and no objection within two weeks
permitted_perform_activities_of_notified_body(B) :-
    conformity_assessment_body(B),
    accreditation_certificate_included(B),
    no_objection_within(commission, weeks(2), B).

% (b) when the notification includes documentary evidence and no objection within two months
permitted_perform_activities_of_notified_body(B) :-
    conformity_assessment_body(B),
    documentary_evidence_included(B),
    no_objection_within(commission, months(2), B).

% Obligation for the Commission to consult when objections are raised
must_consult(Commission, consultation(objections_raised, MemberStates, B)) :-
    commission(Commission),
    objection_raised(MemberStates, B).

% Obligation for the Commission to decide on the authorisation after consultation
must_decide(Commission, decision(authorisation, B)) :-
    commission(Commission),
    objection_raised(_, B).

% Helper predicate: no objection raised within a given time limit
no_objection_within(Actor, Period, B) :-
    \+ objection_raised(Actor, B, Period).

% Placeholder for the condition that a body satisfies the requirements of art 31
satisfies_requirements_in_art_31(_).

% Provenance
provenance(notify_body/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_include/2, 'celex:32024R1689/oj#art_30').
provenance(must_provide/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_perform_activities_of_notified_body/1, 'celex:32024R1689/oj#art_30').
provenance(no_objection_within/3, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide/2, 'celex:32024R1689/oj#art_30').
provenance(accreditation_certificate_included/1, 'celex:32024R1689/oj#art_30').
provenance(documentary_evidence_included/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(commission/1, 'celex:32024R1689/oj#art_30').
provenance(other_member_state/1, 'celex:32024R1689/oj#art_30').

% References
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
