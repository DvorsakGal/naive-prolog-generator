% unit       : celex:32024R1689/oj#art_37
% title      : Challenge to the competence of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : gpt-oss:120b-cloud
% prompt sha : 9bd56829a0f810f975ed33c373d333de8aeda2975bacf118579b4eff7e8f4510
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred competence_doubt_applies/1, gloss('reasons to doubt the competence of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred notifying_authority/1, gloss('national authority responsible for notifying bodies'), source('celex:32024R1689/oj#art_37').
:- pred request_made/2, gloss('request for information made by a party to another'), source('celex:32024R1689/oj#art_37').
:- pred relevant_information/2, gloss('information relating to the notification or competence of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred sensitive_information/1, gloss('information obtained in the course of investigations that is sensitive'), source('celex:32024R1689/oj#art_37').
:- pred obtained_in_investigation/1, gloss('information obtained during a Commission investigation'), source('celex:32024R1689/oj#art_37').
:- pred requirements_not_met_applies/1, gloss('a notified body does not meet or no longer meets the requirements for its notification'), source('celex:32024R1689/oj#art_37').
:- pred member_state_fails_to_correct/1, gloss('the notifying Member State fails to take the necessary corrective measures'), source('celex:32024R1689/oj#art_37').

must_investigate(commission, NB) :-
    notified_body(NB),
    competence_doubt_applies(NB).

must_provide_information(NA, commission, Info) :-
    notifying_authority(NA),
    request_made(commission, NA),
    relevant_information(Info, NA).

must_treat_confidentially(commission, Info) :-
    sensitive_information(Info),
    obtained_in_investigation(Info).

must_inform(commission, member_state, NB) :-
    notified_body(NB),
    requirements_not_met_applies(NB).

must_request_corrective_measures(commission, member_state, NB) :-
    notified_body(NB),
    requirements_not_met_applies(NB).

permitted_suspend_designation(commission, NB) :-
    notified_body(NB),
    member_state_fails_to_correct(NB).

permitted_restrict_designation(commission, NB) :-
    notified_body(NB),
    member_state_fails_to_correct(NB).

permitted_withdraw_designation(commission, NB) :-
    notified_body(NB),
    member_state_fails_to_correct(NB).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_37').
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
