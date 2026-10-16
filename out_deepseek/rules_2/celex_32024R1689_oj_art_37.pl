% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 304f7cc3a6b226a749d9d470623d9e8e7a7f1e11fb674b2a8f394abedcf4528c
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate_competence_doubts/2, gloss('Commission must investigate cases where there are reasons to doubt competence of notified body'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information_on_request/2, gloss('notifying authority must provide Commission with relevant information on request'), source('celex:32024R1689/oj#art_37').
:- pred must_treat_information_confidentially/2, gloss('Commission must ensure sensitive information obtained in investigations is treated confidentially'), source('celex:32024R1689/oj#art_37').
:- pred must_inform_and_request_corrective_measures/3, gloss('Commission must inform notifying Member State and request corrective measures when notified body fails requirements'), source('celex:32024R1689/oj#art_37').
:- pred may_suspend_restrict_withdraw_designation/2, gloss('Commission may suspend, restrict or withdraw designation by implementing act'), source('celex:32024R1689/oj#art_37').

must_investigate_competence_doubts(Commission, Body) :-
    notified_body(Body),
    reasons_to_doubt_competence_or_fulfilment(Body).

must_provide_information_on_request(Authority, Commission) :-
    notifying_authority(Authority),
    request_from_commission(Commission, information(notification_or_maintenance_of_competence)).

must_treat_information_confidentially(Commission, Information) :-
    sensitive_information(Information),
    obtained_in_investigation(Information, celex:32024R1689/oj#art_37).

must_inform_and_request_corrective_measures(Commission, MemberState, Body) :-
    notified_body(Body),
    \+ meets_notification_requirements(Body),
    inform_member_state(Commission, MemberState, non_compliance(Body)),
    request_corrective_measures(Commission, MemberState, corrective_measures(Body)).

may_suspend_restrict_withdraw_designation(Commission, Body) :-
    notified_body(Body),
    member_state_fails_corrective_measures(Body),
    implementing_act(Commission, suspend_restrict_withdraw(Body)).

% Supporting predicates
:- pred reasons_to_doubt_competence_or_fulfilment/1, gloss('there are reasons to doubt competence or continued fulfilment of requirements'), source('celex:32024R1689/oj#art_37').
:- pred request_from_commission/2, gloss('Commission requests information'), source('celex:32024R1689/oj#art_37').
:- pred sensitive_information/1, gloss('information is sensitive'), source('celex:32024R1689/oj#art_37').
:- pred obtained_in_investigation/2, gloss('information obtained in course of investigation'), source('celex:32024R1689/oj#art_37').
:- pred meets_notification_requirements/1, gloss('notified body meets requirements for its notification'), source('celex:32024R1689/oj#art_37').
:- pred inform_member_state/3, gloss('Commission informs Member State'), source('celex:32024R1689/oj#art_37').
:- pred request_corrective_measures/3, gloss('Commission requests corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred member_state_fails_corrective_measures/1, gloss('Member State fails to take necessary corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred implementing_act/2, gloss('act adopted in accordance with examination procedure'), source('celex:32024R1689/oj#art_37').

provenance(must_investigate_competence_doubts/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform_and_request_corrective_measures/3, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw_designation/2, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
