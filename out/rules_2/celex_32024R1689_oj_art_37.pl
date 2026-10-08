% unit       : celex:32024R1689/oj#art_37
% title      : Challenge to the competence of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : gpt-oss:120b-cloud
% prompt sha : 70652d005f256ce8b38b1c03a85a5458124c58725f5756746334254bfad9cba9
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred competence_doubt_applies/1, gloss('reasons to doubt competence of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred fulfilment_doubt_applies/1, gloss('reasons to doubt continued fulfilment of requirements by a notified body'), source('celex:32024R1689/oj#art_37').
:- pred sensitive_information_obtained/1, gloss('sensitive information obtained in investigations'), source('celex:32024R1689/oj#art_37').
:- pred commission_ascertains_not_meeting_requirements/1, gloss('commission determines a notified body does not meet notification requirements'), source('celex:32024R1689/oj#art_37').
:- pred member_state_fails_to_take_corrective_measures/1, gloss('member state does not take necessary corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred member_state/1, gloss('member state of the Union'), source('celex:32024R1689/oj#art_37').

:- pred must_investigate/2, gloss('commission must investigate cases where competence or fulfilment is doubted'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information/2, gloss('notifying authority must provide information to the commission on request'), source('celex:32024R1689/oj#art_37').
:- pred must_treat_confidentially/2, gloss('commission must treat sensitive information confidentially'), source('celex:32024R1689/oj#art_37').
:- pred must_inform/3, gloss('commission must inform the notifying member state'), source('celex:32024R1689/oj#art_37').
:- pred must_request_corrective_measures/3, gloss('commission must request corrective measures from the notifying member state'), source('celex:32024R1689/oj#art_37').
:- pred permitted_suspend_designation/2, gloss('commission may suspend the designation of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred permitted_restrict_designation/2, gloss('commission may restrict the designation of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred permitted_withdraw_designation/2, gloss('commission may withdraw the designation of a notified body'), source('celex:32024R1689/oj#art_37').

must_investigate(commission, Body) :-
    notified_body(Body),
    (   competence_doubt_applies(Body)
    ;   fulfilment_doubt_applies(Body)
    ).

must_provide_information(notifying_authority, information_about_notified_body(Body)) :-
    notified_body(Body).

must_treat_confidentially(commission, Info) :-
    sensitive_information_obtained(Info).

must_inform(commission, MS, Body) :-
    member_state(MS),
    commission_ascertains_not_meeting_requirements(Body).

must_request_corrective_measures(commission, MS, Body) :-
    member_state(MS),
    commission_ascertains_not_meeting_requirements(Body).

permitted_suspend_designation(commission, Body) :-
    commission_ascertains_not_meeting_requirements(Body),
    member_state_fails_to_take_corrective_measures(Body).

permitted_restrict_designation(commission, Body) :-
    commission_ascertains_not_meeting_requirements(Body),
    member_state_fails_to_take_corrective_measures(Body).

permitted_withdraw_designation(commission, Body) :-
    commission_ascertains_not_meeting_requirements(Body),
    member_state_fails_to_take_corrective_measures(Body).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/3, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/3, 'celex:32024R1689/oj#art_37').
provenance(permitted_suspend_designation/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_restrict_designation/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_withdraw_designation/2, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
