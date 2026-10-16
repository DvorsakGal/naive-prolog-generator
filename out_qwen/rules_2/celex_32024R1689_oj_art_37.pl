% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : bf5a3bd022bc2740cab6435ff600149627177918514657909cb6cc82396ef654
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate_competence_doubt/2, gloss('Commission obligation to investigate cases where there are reasons to doubt competence or continued fulfilment of requirements'), source('celex:32024R1689/oj#art_37').
:- pred reason_to_doubt_competence/2, gloss('reasons exist to doubt the competence of a notified body or its continued fulfilment of requirements'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_notification_information/2, gloss('notifying authority obligation to provide Commission with information relating to notification or maintenance of competence on request'), source('celex:32024R1689/oj#art_37').
:- pred ascertained_non_compliance_of_notified_body/1, gloss('Commission has ascertained that a notified body does not meet or no longer meets requirements for notification'), source('celex:32024R1689/oj#art_37').
:- pred must_request_corrective_measures/2, gloss('Commission obligation to inform Member State and request corrective measures including suspension or withdrawal of notification'), source('celex:32024R1689/oj#art_37').
:- pred member_state_failed_to_take_corrective_measures/1, gloss('Member State has failed to take necessary corrective measures regarding notified body non-compliance'), source('celex:32024R1689/oj#art_37').

must_investigate_competence_doubt(commission, B) :-
    notified_body(B),
    reason_to_doubt_competence(commission, B).

must_provide_notification_information(A, commission) :-
    notifying_authority(A),
    notified_body(B),
    reason_to_doubt_competence(commission, B).

must_treat_information_confidentially(commission, investigation_under_art_37) :-
    reason_to_doubt_competence(commission, _B).

must_request_corrective_measures(commission, MS) :-
    notified_body(B),
    ascertained_non_compliance_of_notified_body(B),
    notifying_authority_of(MS, B).

designation_suspended_or_restricted(B) :-
    notified_body(B),
    ascertained_non_compliance_of_notified_body(B),
    member_state_failed_to_take_corrective_measures(_MS).

provenance(must_investigate_competence_doubt/2, 'celex:32024R1689/oj#art_37').
provenance(reason_to_doubt_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_notification_information/2, 'celex:32024R1689/oj#art_37').
provenance(ascertained_non_compliance_of_notified_body/1, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(member_state_failed_to_take_corrective_measures/1, 'celex:32024R1689/oj#art_37').
provenance(designation_suspended_or_restricted/1, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
