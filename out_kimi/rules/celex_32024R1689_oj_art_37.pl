% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 372ce5c4085ab441a680cca360ae7bb0d9c17f4284a7c54f3905a2087934c1eb
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate/2, gloss('Commission shall investigate cases of doubt'), source('celex:32024R1689/oj#art_37').
:- pred reasons_to_doubt_competence/1, gloss('reasons to doubt competence or continued fulfilment of requirements'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information/2, gloss('notifying authority shall provide information on request'), source('celex:32024R1689/oj#art_37').
:- pred must_treat_confidentially/2, gloss('Commission shall treat information confidentially'), source('celex:32024R1689/oj#art_37').
:- pred investigation/1, gloss('investigation by the Commission'), source('celex:32024R1689/oj#art_37').
:- pred must_inform/2, gloss('Commission shall inform notifying Member State'), source('celex:32024R1689/oj#art_37').
:- pred must_request_corrective_measures/2, gloss('Commission shall request corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred does_not_meet_requirements/1, gloss('notified body does not meet or no longer meets requirements'), source('celex:32024R1689/oj#art_37').
:- pred may_suspend_restrict_withdraw/2, gloss('Commission may suspend, restrict or withdraw designation'), source('celex:32024R1689/oj#art_37').
:- pred fails_to_take_corrective_measures/1, gloss('Member State fails to take necessary corrective measures'), source('celex:32024R1689/oj#art_37').

must_investigate(Commission, Body) :-
    reasons_to_doubt_competence(Body),
    notified_body(Body).

reasons_to_doubt_competence(Body) :-
    notified_body(Body),
    \+ competence_maintained(Body).

reasons_to_doubt_competence(Body) :-
    notified_body(Body),
    \+ requirements_fulfilled(Body).

competence_maintained(Body) :-
    notified_body(Body).

requirements_fulfilled(Body) :-
    notified_body(Body).

must_provide_information(Authority, Commission) :-
    notifying_authority(Authority),
    request(Commission, information(Authority, Body)),
    notified_body(Body),
    notification_of(Body, Authority).

must_treat_confidentially(Commission, Information) :-
    investigation(Commission),
    sensitive_information(Information),
    obtained_in(Information, investigation(Commission)).

investigation(Commission) :-
    must_investigate(Commission, _Body).

must_inform(Commission, MemberState) :-
    notified_body(Body),
    does_not_meet_requirements(Body),
    notifying_member_state(MemberState, Body).

must_request_corrective_measures(Commission, MemberState) :-
    must_inform(Commission, MemberState),
    notified_body(Body),
    does_not_meet_requirements(Body),
    notifying_member_state(MemberState, Body).

may_suspend_restrict_withdraw(Commission, designation(Body)) :-
    must_request_corrective_measures(Commission, MemberState),
    fails_to_take_corrective_measures(MemberState),
    notified_body(Body),
    notifying_member_state(MemberState, Body).

does_not_meet_requirements(Body) :-
    notified_body(Body),
    \+ meets_notification_requirements(Body).

does_not_meet_requirements(Body) :-
    notified_body(Body),
    \+ continues_to_meet_requirements(Body).

meets_notification_requirements(Body) :-
    notified_body(Body).

continues_to_meet_requirements(Body) :-
    notified_body(Body).

fails_to_take_corrective_measures(MemberState) :-
    notifying_member_state(MemberState, Body),
    \+ corrective_measures_taken(MemberState, Body).

corrective_measures_taken(MemberState, Body) :-
    notifying_member_state(MemberState, Body),
    suspension_of_notification(MemberState, Body).

corrective_measures_taken(MemberState, Body) :-
    notifying_member_state(MemberState, Body),
    withdrawal_of_notification(MemberState, Body).

% Supporting predicates for relationships
:- pred notifying_member_state/2, gloss('Member State that notified a body'), source('celex:32024R1689/oj#art_37').
:- pred request/2, gloss('request made by entity for something'), source('celex:32024R1689/oj#art_37').
:- pred sensitive_information/1, gloss('information that is sensitive'), source('celex:32024R1689/oj#art_37').
:- pred obtained_in/2, gloss('information obtained in some process'), source('celex:32024R1689/oj#art_37').
:- pred notification_of/2, gloss('body is notified by authority'), source('celex:32024R1689/oj#art_37').
:- pred suspension_of_notification/2, gloss('suspension of notification by member state'), source('celex:32024R1689/oj#art_37').
:- pred withdrawal_of_notification/2, gloss('withdrawal of notification by member state'), source('celex:32024R1689/oj#art_37').

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(investigation/1, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(does_not_meet_requirements/1, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw/2, 'celex:32024R1689/oj#art_37').
provenance(fails_to_take_corrective_measures/1, 'celex:32024R1689/oj#art_37').
provenance(notifying_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(request/2, 'celex:32024R1689/oj#art_37').
provenance(sensitive_information/1, 'celex:32024R1689/oj#art_37').
provenance(obtained_in/2, 'celex:32024R1689/oj#art_37').
provenance(notification_of/2, 'celex:32024R1689/oj#art_37').
provenance(suspension_of_notification/2, 'celex:32024R1689/oj#art_37').
provenance(withdrawal_of_notification/2, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
