% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 79d099eb346c5de47c04293f2dcc800008c4b96ec10cb3cb4c8a8fe74d26414d
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate/2, gloss('who must investigate what'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information/3, gloss('who must provide what information to whom'), source('celex:32024R1689/oj#art_37').
:- pred must_treat_confidentially/2, gloss('who must treat what confidentially'), source('celex:32024R1689/oj#art_37').
:- pred must_inform_member_state/2, gloss('who must inform which member state of what'), source('celex:32024R1689/oj#art_37').
:- pred must_take_corrective_measures/2, gloss('who must take corrective measures regarding what'), source('celex:32024R1689/oj#art_37').
:- pred may_suspend_restrict_or_withdraw/2, gloss('who may suspend, restrict or withdraw what'), source('celex:32024R1689/oj#art_37').
:- pred reasons_to_doubt_competence/1, gloss('there are reasons to doubt the competence of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred reasons_to_doubt_continued_fulfilment/1, gloss('there are reasons to doubt continued fulfilment of requirements by a notified body'), source('celex:32024R1689/oj#art_37').
:- pred notified_body_does_not_meet_requirements/1, gloss('a notified body does not meet or no longer meets requirements for its notification'), source('celex:32024R1689/oj#art_37').
:- pred member_state_fails_to_take_corrective_measures/1, gloss('a member state fails to take necessary corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred sensitive_information/1, gloss('sensitive information obtained in the course of investigations'), source('celex:32024R1689/oj#art_37').
:- pred relevant_information/2, gloss('relevant information relating to a notification or maintenance of competence'), source('celex:32024R1689/oj#art_37').

must_investigate(commission, notified_body(B)) :-
    notified_body(B),
    reasons_to_doubt_competence(B).

must_investigate(commission, notified_body(B)) :-
    notified_body(B),
    reasons_to_doubt_continued_fulfilment(B).

must_provide_information(notifying_authority(A), commission, relevant_information(notification(B))) :-
    notifying_authority(A),
    notified_body(B),
    request(commission, A, relevant_information(notification(B))).

must_provide_information(notifying_authority(A), commission, relevant_information(maintenance_of_competence(B))) :-
    notifying_authority(A),
    notified_body(B),
    request(commission, A, relevant_information(maintenance_of_competence(B))).

must_treat_confidentially(commission, sensitive_information(I)) :-
    sensitive_information(I),
    obtained_in_course_of_investigation(I, art_37).

must_inform_member_state(commission, member_state(M, notified_body(B))) :-
    notified_body(B),
    notifying_authority(notifying_authority_for(B, M)),
    notified_body_does_not_meet_requirements(B).

must_take_corrective_measures(member_state(M), notified_body(B)) :-
    notified_body(B),
    notifying_authority(notifying_authority_for(B, M)),
    must_inform_member_state(commission, member_state(M, notified_body(B))),
    includes_suspension_or_withdrawal_if_necessary(corrective_measures).

may_suspend_restrict_or_withdraw(commission, designation(notified_body(B))) :-
    notified_body(B),
    notifying_authority(notifying_authority_for(B, M)),
    member_state_fails_to_take_corrective_measures(M),
    must_inform_member_state(commission, member_state(M, notified_body(B))),
    notified_body_does_not_meet_requirements(B).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(must_take_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_or_withdraw/2, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_continued_fulfilment/1, 'celex:32024R1689/oj#art_37').
provenance(notified_body_does_not_meet_requirements/1, 'celex:32024R1689/oj#art_37').
provenance(member_state_fails_to_take_corrective_measures/1, 'celex:32024R1689/oj#art_37').
provenance(sensitive_information/1, 'celex:32024R1689/oj#art_37').
provenance(relevant_information/2, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
