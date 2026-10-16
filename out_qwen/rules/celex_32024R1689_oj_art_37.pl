% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e8e44c6ad2cb427abfb3b2e9b806e2ca18259e761562eb44676ccde859be9d63
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate_competence(Actor, Object), gloss('investigate cases where there are reasons to doubt competence or continued fulfilment of requirements'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information(Actor, Object), gloss('provide relevant information relating to notification or maintenance of competence on request'), source('celex:32024R1689/oj#art_37').
:- pred must_treat_confidentially(Actor, Object), gloss('ensure sensitive information obtained during investigations is treated confidentially'), source('celex:32024R1689/oj#art_37').
:- pred must_request_corrective_measures(Actor, Object), gloss('inform Member State and request corrective measures including suspension or withdrawal'), source('celex:32024R1689/oj#art_37').
:- pred may_suspend_designation(Actor, Object), gloss('suspend, restrict or withdraw designation by implementing act if Member State fails to act'), source('celex:32024R1689/oj#art_37').
:- pred reason_to_doubt_competence/1, gloss('reasons exist to doubt the competence of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred failure_to_meet_requirements/1, gloss('notified body does not meet or no longer meets requirements for notification'), source('celex:32024R1689/oj#art_37').

must_investigate_competence(commission, notified_body(B)) :-
    notified_body(B),
    reason_to_doubt_competence(B).

must_provide_information(Authority, information(notification_or_competence(B))) :-
    notifying_authority(Authority),
    notified_body(B),
    requested_by(commission, Authority, information(notification_or_competence(B))).

must_treat_confidentially(commission, sensitive_information(investigation(art_37))) :-
    obtained_during_investigation(commission, art_37).

must_request_corrective_measures(commission, member_state(MS)) :-
    notified_body(B),
    failure_to_meet_requirements(B),
    notifying_member_state(MS, B).

may_suspend_designation(commission, designation(B)) :-
    notified_body(B),
    failure_to_meet_requirements(B),
    \+ corrective_measures_taken(member_state(_MS), B).

provenance(must_investigate_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_designation/2, 'celex:32024R1689/oj#art_37').
provenance(reason_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(failure_to_meet_requirements/1, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
