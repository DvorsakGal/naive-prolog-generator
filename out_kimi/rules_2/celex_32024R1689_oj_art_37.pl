% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 3c4f6ffd5accc2da255eaa9d75c5df15e144659fdac08cf12a51263433eba65d
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate_doubted_competence/2, gloss('Commission shall investigate cases where there are reasons to doubt competence of notified body'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information_on_request/2, gloss('notifying authority shall provide Commission with relevant information on request'), source('celex:32024R1689/oj#art_37').
:- pred must_ensure_confidentiality_of_investigation/2, gloss('Commission shall ensure sensitive information from investigations is treated confidentially'), source('celex:32024R1689/oj#art_37').
:- pred must_take_corrective_measures_for_notification/2, gloss('notifying Member State shall take necessary corrective measures including suspension or withdrawal of notification'), source('celex:32024R1689/oj#art_37').
:- pred may_suspend_restrict_withdraw_designation/2, gloss('Commission may by implementing act suspend, restrict or withdraw the designation'), source('celex:32024R1689/oj#art_37').

must_investigate_doubted_competence(commission, Body) :-
    notified_body(Body),
    reasons_to_doubt_competence(Body).

must_investigate_doubted_competence(commission, Body) :-
    notified_body(Body),
    \+ continued_fulfilment_of_requirements(Body).

continued_fulfilment_of_requirements(Body) :-
    notified_body(Body),
    meets_requirements(Body, notification_requirements).

reasons_to_doubt_competence(Body) :-
    notified_body(Body).

must_provide_information_on_request(NotifyingAuthority, commission) :-
    notifying_authority(NotifyingAuthority),
    relevant_information_for_notification(NotifyingAuthority, _Body).

must_ensure_confidentiality_of_investigation(commission, Information) :-
    sensitive_information(Information),
    obtained_in_course_of_investigation(Information, art_37).

may_suspend_restrict_withdraw_designation(commission, Body) :-
    notified_body(Body),
    \+ meets_requirements(Body, notification_requirements),
    member_state_fails_corrective_measures(MemberState, Body).

member_state_fails_corrective_measures(MemberState, Body) :-
    notified_body(Body),
    responsible_notifying_member_state(MemberState, Body),
    \+ must_take_corrective_measures_for_notification(MemberState, Body).

must_take_corrective_measures_for_notification(MemberState, Body) :-
    member_state(MemberState),
    notified_body(Body),
    responsible_notifying_member_state(MemberState, Body),
    \+ meets_requirements(Body, notification_requirements),
    corrective_measures_required(MemberState, Body).

corrective_measures_required(MemberState, Body) :-
    member_state(MemberState),
    notified_body(Body),
    responsible_notifying_member_state(MemberState, Body),
    (suspension_of_notification_required(Body); withdrawal_of_notification_required(Body)).

suspension_of_notification_required(Body) :-
    notified_body(Body),
    \+ meets_requirements(Body, notification_requirements).

withdrawal_of_notification_required(Body) :-
    notified_body(Body),
    \+ meets_requirements(Body, notification_requirements).

responsible_notifying_member_state(MemberState, Body) :-
    notifying_authority(Authority),
    established_under_national_law(Authority),
    national_law_of_member_state(Authority, MemberState),
    notified_body_for_assessment(Body, Authority).

member_state(MemberState) :-
    national_public_authority_or_body(MemberState).

national_law_of_member_state(Authority, MemberState) :-
    established_under_national_law(Authority).

% Provenance
provenance(must_investigate_doubted_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure_confidentiality_of_investigation/2, 'celex:32024R1689/oj#art_37').
provenance(must_take_corrective_measures_for_notification/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw_designation/2, 'celex:32024R1689/oj#art_37').
provenance(continued_fulfilment_of_requirements/1, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(member_state_fails_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(corrective_measures_required/2, 'celex:32024R1689/oj#art_37').
provenance(suspension_of_notification_required/1, 'celex:32024R1689/oj#art_37').
provenance(withdrawal_of_notification_required/1, 'celex:32024R1689/oj#art_37').
provenance(responsible_notifying_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(member_state/1, 'celex:32024R1689/oj#art_37').
provenance(national_law_of_member_state/2, 'celex:32024R1689/oj#art_37').

% References
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
