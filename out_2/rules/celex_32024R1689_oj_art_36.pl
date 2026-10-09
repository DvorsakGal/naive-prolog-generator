% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 842722a67ff36c195c37563a682a0b58aeb25c753fbc41877da41ca2bafab787
% cached     : False
% title      : Changes to notifications
:- pred must_notify/2, gloss('obligation of notifying authority to inform about changes to notified body notification'), source('celex:32024R1689/oj#art_36').
:- pred must_inform/2, gloss('obligation to inform a party about a matter'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate/2, gloss('obligation of notifying authority to investigate a notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_modify_designation/2, gloss('obligation of notifying authority to modify the designation of a notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_ensure_files_kept/2, gloss('obligation of notifying authority to keep files of a notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_assess_impact/2, gloss('obligation of notifying authority to assess impact on certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_submit_report/2, gloss('obligation of notifying authority to submit a report within a deadline'), source('celex:32024R1689/oj#art_36').
:- pred must_require/2, gloss('obligation of notifying authority to require a notified body to suspend or withdraw certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_provide_information/2, gloss('obligation of notifying authority to provide information to national competent authorities'), source('celex:32024R1689/oj#art_36').

must_notify(Authority, notification_change(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).

must_inform(NotifiedBody, inform(notifying_authority)) :-
    notified_body(NotifiedBody).

must_inform(NotifiedBody, inform(provider, before(years(1)))) :-
    notified_body(NotifiedBody).

must_investigate(Authority, NotifiedBody) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).

must_inform(Authority, inform(notified_body_objections)) :-
    notifying_authority(Authority).

must_modify_designation(Authority, modification(Action, NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    member(Action, [restrict, suspend, withdraw]).

must_inform(Authority, inform(commission_and_member_states)) :-
    notifying_authority(Authority).

must_inform(NotifiedBody, inform(providers, within(days(10)))) :-
    notified_body(NotifiedBody).

must_ensure_files_kept(Authority, NotifiedBody) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).

must_assess_impact(Authority, impact_on_certificates(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).

must_submit_report(Authority, report(findings, within(months(3)))) :-
    notifying_authority(Authority).

must_require(Authority, suspend_or_withdraw_certificates(NotifiedBody, period(reasonable))) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).

must_inform(Authority, inform(commission_and_member_states_about_certificates)) :-
    notifying_authority(Authority).

must_provide_information(Authority, information_for(national_competent_authority, certificates)) :-
    notifying_authority(Authority).

provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_modify_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_36').

references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_3').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_4').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_5').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_6').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_7').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_8').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9/unp_1').
