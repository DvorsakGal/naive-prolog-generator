% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : aadd5eb51fedb17ba1ad4885ca4522a00550cef1466828da58d8a03b6dafead7
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred reasons_to_doubt_competence/1, gloss('there are reasons to doubt the competence of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred not_fulfil_requirements/1, gloss('a notified body does not meet the requirements laid down in art_31'), source('celex:32024R1689/oj#art_37').
:- pred request_made/2, gloss('the Commission requests information from a notifying authority'), source('celex:32024R1689/oj#art_37').
:- pred sensitive_information_obtained/1, gloss('sensitive information obtained during investigations'), source('celex:32024R1689/oj#art_37').
:- pred member_state_fails_to_correct/1, gloss('the notifying Member State fails to take necessary corrective measures'), source('celex:32024R1689/oj#art_37').

must_investigate(commission, case_of_doubt(NB)) :-
    notified_body(NB),
    (   reasons_to_doubt_competence(NB)
    ;   not_fulfil_requirements(NB)
    ).

must_provide(Authority, information(related_to(NB))) :-
    notifying_authority(Authority),
    request_made(commission, Authority),
    notified_body(NB).

must_ensure(commission, confidential_treatment(SI)) :-
    sensitive_information_obtained(SI).

must_inform(commission, informing(member_state(MS), NB)) :-
    not_fulfil_requirements(NB),
    member_state(MS),
    notified_body(NB).

must_request(member_state(MS), corrective_measures(NB)) :-
    not_fulfil_requirements(NB),
    member_state(MS),
    notified_body(NB).

permitted_suspend_designation(NB) :-
    member_state_fails_to_correct(NB),
    notified_body(NB).

permitted_restrict_designation(NB) :-
    member_state_fails_to_correct(NB),
    notified_body(NB).

permitted_withdraw_designation(NB) :-
    member_state_fails_to_correct(NB),
    notified_body(NB).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_suspend_designation/1, 'celex:32024R1689/oj#art_37').
provenance(permitted_restrict_designation/1, 'celex:32024R1689/oj#art_37').
provenance(permitted_withdraw_designation/1, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
