% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : dd6423d195960f9266b146be6d76e3974783d6677d609fe1e9306c02bc3311f4
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate_competence/2, gloss('Commission investigates cases where reasons to doubt competence of notified body or continued fulfilment of requirements and responsibilities'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information_on_notification/2, gloss('notifying authority provides Commission with all relevant information relating to notification or maintenance of competence of notified body on request'), source('celex:32024R1689/oj#art_37').
:- pred must_treat_sensitive_information_confidentially/2, gloss('Commission treats sensitive information obtained in course of investigations confidentially'), source('celex:32024R1689/oj#art_37').
:- pred must_inform_notifying_member_state/2, gloss('Commission informs notifying Member State that notified body does not meet or no longer meets requirements for notification'), source('celex:32024R1689/oj#art_37').
:- pred must_take_corrective_measures_by_member_state/2, gloss('notifying Member State takes necessary corrective measures including suspension or withdrawal of notification if necessary'), source('celex:32024R1689/oj#art_37').
:- pred may_suspend_restrict_or_withdraw_designation/1, gloss('Commission may by implementing act suspend, restrict or withdraw designation where Member State fails to take necessary corrective measures'), source('celex:32024R1689/oj#art_37').

must_investigate_competence(ai_office, B) :-
    notified_body(B),
    reasons_to_doubt_competence(B).

must_investigate_competence(ai_office, B) :-
    notified_body(B),
    reasons_to_doubt_continued_fulfilment(B).

reasons_to_doubt_competence(B) :-
    notified_body(B),
    doubt_competence(B).

reasons_to_doubt_continued_fulfilment(B) :-
    notified_body(B),
    doubt_continued_fulfilment_of_requirements(B),
    meets_requirements_art_31(B).

reasons_to_doubt_continued_fulfilment(B) :-
    notified_body(B),
    doubt_continued_fulfilment_of_responsibilities(B).

must_provide_information_on_notification(NA, B) :-
    notifying_authority(NA),
    notified_body(B),
    notification_relates_to(NA, B).

must_treat_sensitive_information_confidentially(ai_office, Info) :-
    sensitive_information(Info),
    obtained_in_investigation(ai_office, Info).

must_inform_notifying_member_state(ai_office, MS) :-
    member_state(MS),
    notifying_authority_in_member_state(MS, _NA),
    ascertains_non_compliance(ai_office, B),
    notified_body(B),
    notification_by_member_state(MS, B).

must_take_corrective_measures_by_member_state(MS, B) :-
    member_state(MS),
    notified_body(B),
    notification_by_member_state(MS, B),
    must_inform_notifying_member_state(ai_office, MS),
    ascertains_non_compliance(ai_office, B).

may_suspend_restrict_or_withdraw_designation(ai_office) :-
    member_state(MS),
    notified_body(B),
    notification_by_member_state(MS, B),
    ascertains_non_compliance(ai_office, B),
    must_inform_notifying_member_state(ai_office, MS),
    fails_to_take_corrective_measures(MS, B).

ascertains_non_compliance(ai_office, B) :-
    notified_body(B),
    does_not_meet_requirements_for_notification(B).

ascertains_non_compliance(ai_office, B) :-
    notified_body(B),
    no_longer_meets_requirements_for_notification(B).

fails_to_take_corrective_measures(MS, B) :-
    member_state(MS),
    notified_body(B),
    \+ takes_necessary_corrective_measures(MS, B).

takes_necessary_corrective_measures(MS, B) :-
    member_state(MS),
    notified_body(B),
    suspends_notification(MS, B).

takes_necessary_corrective_measures(MS, B) :-
    member_state(MS),
    notified_body(B),
    withdraws_notification(MS, B).

provenance(must_investigate_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information_on_notification/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_sensitive_information_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform_notifying_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(must_take_corrective_measures_by_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_or_withdraw_designation/1, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
