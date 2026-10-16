% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 2022bdab6d23c6fe9d8807fcb263d063cf91ed5e82c24c83541a7043ed09f7a8
% cached     : False
% title      : Exercise of the delegation
:- pred delegation_of_power_conferred/1, gloss('power to adopt delegated acts is conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred delegation_of_power_period/2, gloss('delegation of power conferred for a period'), source('celex:32024R1689/oj#art_97').
:- pred delegation_of_power_revocable/1, gloss('delegation of power may be revoked'), source('celex:32024R1689/oj#art_97').
:- pred must_consult_experts/2, gloss('Commission must consult experts before adopting delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify_delegated_act/2, gloss('Commission must notify delegated act to Parliament and Council'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act_enters_into_force/1, gloss('delegated act enters into force if no objection'), source('celex:32024R1689/oj#art_97').
:- pred objection_period/2, gloss('period for objection to delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_draw_up_report/2, gloss('Commission must draw up report on delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred tacit_extension_applies/1, gloss('delegation of power tacitly extended'), source('celex:32024R1689/oj#art_97').
:- pred extension_opposed/2, gloss('extension of delegation opposed by institution'), source('celex:32024R1689/oj#art_97').

delegation_of_power_conferred(Commission) :-
    ai_office(Commission).

delegation_of_power_period(Commission, period(years(5), from(date(2024,8,1)))) :-
    delegation_of_power_conferred(Commission).

must_draw_up_report(Commission, report(delegation_of_power, deadline(months(9), before_end_of(period(years(5)))))) :-
    delegation_of_power_period(Commission, period(years(5), _)).

tacit_extension_applies(period(years(5))) :-
    delegation_of_power_period(_, period(years(5), _)),
    \+ extension_opposed(_, period(years(5))).

extension_opposed(Institution, period(years(5))) :-
    (   Institution = european_parliament
    ;   Institution = council
    ),
    opposes_extension(Institution, period(years(5)), deadline(months(3), before_end_of(period(years(5))))).

delegation_of_power_revocable(Commission) :-
    delegation_of_power_conferred(Commission).

must_consult_experts(Commission, experts_designated_by_member_states) :-
    delegation_of_power_conferred(Commission).

must_notify_delegated_act(Commission, notification(european_parliament, council)) :-
    delegation_of_power_conferred(Commission).

delegated_act_enters_into_force(Act) :-
    must_notify_delegated_act(_, notification(Parliament, Council)),
    objection_period(Act, period(months(3))),
    \+ objection_expressed(Parliament, Act, period(months(3))),
    \+ objection_expressed(Council, Act, period(months(3))).

delegated_act_enters_into_force(Act) :-
    must_notify_delegated_act(_, notification(Parliament, Council)),
    objection_period(Act, period(months(3))),
    before_expiry(period(months(3))),
    informed_no_objection(Parliament, Act),
    informed_no_objection(Council, Act).

objection_period(Act, period(months(3))) :-
    delegated_act_enters_into_force(Act).

objection_period(Act, period(months(6))) :-
    objection_period(Act, period(months(3))),
    extension_initiated(_, period(months(3))).

provenance(delegation_of_power_conferred/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power_period/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension_applies/1, 'celex:32024R1689/oj#art_97').
provenance(extension_opposed/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power_revocable/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify_delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act_enters_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(objection_period/2, 'celex:32024R1689/oj#art_97').

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
