% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 890b4d4e23c0eb037f4879091893fd0c88bf71d825b1aa58c84e0c6fb522add9
% cached     : False
% title      : Exercise of the delegation
:- pred delegated_act/1, gloss('act adopted under delegated powers'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act/2, gloss('delegated act concerning specified subject matter'), source('celex:32024R1689/oj#art_97').
:- pred power_to_adopt_delegated_acts/1, gloss('authority to adopt delegated acts conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred tacit_extension_applies/1, gloss('automatic extension of delegation period'), source('celex:32024R1689/oj#art_97').
:- pred commission_objection/1, gloss('commission objection'), source('celex:32024R1689/oj#art_97').
:- pred deemed_justified/1, gloss('authorisation deemed justified after no objection period'), source('celex:32024R1689/oj#art_97').
:- pred must_draw_up_report/2, gloss('Commission shall draw up report on delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred must_notify/2, gloss('Commission shall notify delegated act to European Parliament and Council'), source('celex:32024R1689/oj#art_97').
:- pred must_consult_experts/2, gloss('Commission shall consult experts designated by Member States'), source('celex:32024R1689/oj#art_97').
:- pred delegation_period/2, gloss('period for which delegation of power is conferred'), source('celex:32024R1689/oj#art_97').
:- pred report_deadline/2, gloss('deadline for drawing up report on delegation'), source('celex:32024R1689/oj#art_97').
:- pred objection_period/2, gloss('period within which objection may be expressed'), source('celex:32024R1689/oj#art_97').
:- pred extension_period/2, gloss('period by which objection period may be extended'), source('celex:32024R1689/oj#art_97').

power_to_adopt_delegated_acts(commission).

delegation_period(commission, years(5)).
delegation_period_start(date(1, august, 2024)).

must_draw_up_report(commission, report(delegation_of_power)) :-
    delegation_period(commission, years(5)),
    before_end_of_period(months(9), delegation_of_power).

tacit_extension_applies(delegation_of_power) :-
    \+ opposition_expressed(european_parliament, delegation_of_power),
    \+ opposition_expressed(council, delegation_of_power),
    before_end_of_period(months(3), current_period).

opposition_expressed(Institution, delegation_of_power) :-
    member(Institution, [european_parliament, council]),
    objects_to_extension(Institution, delegation_of_power),
    before_end_of_period(months(3), current_period).

delegated_act(A) :-
    power_to_adopt_delegated_acts(commission),
    adopted(commission, A).

delegated_act(A, subject(art_6_par_6)) :- delegated_act_concerning(A, art_6_par_6).
delegated_act(A, subject(art_6_par_7)) :- delegated_act_concerning(A, art_6_par_7).
delegated_act(A, subject(art_7_par_1)) :- delegated_act_concerning(A, art_7_par_1).
delegated_act(A, subject(art_7_par_3)) :- delegated_act_concerning(A, art_7_par_3).
delegated_act(A, subject(art_11_par_3)) :- delegated_act_concerning(A, art_11_par_3).
delegated_act(A, subject(art_43_par_5)) :- delegated_act_concerning(A, art_43_par_5).
delegated_act(A, subject(art_43_par_6)) :- delegated_act_concerning(A, art_43_par_6).
delegated_act(A, subject(art_47_par_5)) :- delegated_act_concerning(A, art_47_par_5).
delegated_act(A, subject(art_51_par_3)) :- delegated_act_concerning(A, art_51_par_3).
delegated_act(A, subject(art_52_par_4)) :- delegated_act_concerning(A, art_52_par_4).
delegated_act(A, subject(art_53_par_5)) :- delegated_act_concerning(A, art_53_par_5).
delegated_act(A, subject(art_53_par_6)) :- delegated_act_concerning(A, art_53_par_6).

revoked(delegation_of_power) :-
    revocation_decision(european_parliament, delegation_of_power).
revoked(delegation_of_power) :-
    revocation_decision(council, delegation_of_power).

takes_effect(revocation_decision(Institution)) :-
    revocation_decision(Institution, delegation_of_power),
    published_in_official_journal(revocation_decision(Institution)).

takes_effect(revocation_decision(Institution), LaterDate) :-
    revocation_decision(Institution, delegation_of_power),
    specified_date(revocation_decision(Institution), LaterDate).

validity_preserved(delegated_act(A)) :-
    delegated_act(A),
    in_force(A),
    revoked(delegation_of_power).

must_consult_experts(commission, experts_designated_by_member_states) :-
    before_adopting(commission, delegated_act(_A)).

must_notify(commission, delegated_act(A)) :-
    adopted(commission, delegated_act(A)),
    notify_to(european_parliament, delegated_act(A)),
    notify_to(council, delegated_act(A)).

deemed_justified(delegated_act(A)) :-
    delegated_act(A),
    notified(commission, delegated_act(A), european_parliament),
    notified(commission, delegated_act(A), council),
    \+ objection_expressed(european_parliament, delegated_act(A)),
    \+ objection_expressed(council, delegated_act(A)),
    period_elapsed(months(3), notification(delegated_act(A))).

deemed_justified(delegated_act(A)) :-
    delegated_act(A),
    notified(commission, delegated_act(A), european_parliament),
    notified(commission, delegated_act(A), council),
    informed(european_parliament, commission, no_objection(delegated_act(A))),
    informed(council, commission, no_objection(delegated_act(A))),
    before_expiry(period(months(3), notification(delegated_act(A)))).

objection_period(delegated_act(A), months(3)) :-
    delegated_act(A),
    notified(commission, delegated_act(A), european_parliament),
    notified(commission, delegated_act(A), council).

extension_period(delegated_act(A), months(3)) :-
    delegated_act(A),
    initiative(european_parliament, extension(objection_period(delegated_act(A)))).
extension_period(delegated_act(A), months(3)) :-
    delegated_act(A),
    initiative(council, extension(objection_period(delegated_act(A)))).

provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_period_start/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension_applies/1, 'celex:32024R1689/oj#art_97').
provenance(opposition_expressed/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_97').
provenance(delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(revoked/1, 'celex:32024R1689/oj#art_97').
provenance(takes_effect/1, 'celex:32024R1689/oj#art_97').
provenance(takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(validity_preserved/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_97').
provenance(objection_period/2, 'celex:32024R1689/oj#art_97').
provenance(extension_period/2, 'celex:32024R1689/oj#art_97').

references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_47/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_51/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_52/par_4').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_6').
