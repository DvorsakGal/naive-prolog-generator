% unit       : celex:32024R1689/oj#art_97
% title      : Exercise of the delegation
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : gpt-oss:120b-cloud
% prompt sha : ae9334a03882cc2e086d2f5d67bea23789378386b1959943c63707936eeed815
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_power_to_adopt_delegated_acts/1,
    gloss('Commission must have power to adopt delegated acts'), source('celex:32024R1689/oj#art_97').

:- pred required_report/2,
    gloss('Commission must draw up a report on the delegation of power'), source('celex:32024R1689/oj#art_97').

:- pred must_draw_up_report/2,
    gloss('Commission must draw up a report in respect of the delegation of power'), source('celex:32024R1689/oj#art_97').

:- pred must_consult_experts/1,
    gloss('Commission must consult experts designated by each Member State before adopting a delegated act'), source('celex:32024R1689/oj#art_97').

:- pred must_notify/2,
    gloss('Commission must notify a delegated act simultaneously to the European Parliament and the Council'), source('celex:32024R1689/oj#art_97').

:- pred permitted_revocation/2,
    gloss('Parliament or Council may revoke the delegation of power'), source('celex:32024R1689/oj#art_97').

:- pred permitted_tacit_extension/1,
    gloss('Delegation of power is tacitly extended unless Parliament or Council opposes'), source('celex:32024R1689/oj#art_97').

:- pred permitted_entry_into_force/1,
    gloss('Delegated act enters into force only if no objection by Parliament or Council'), source('celex:32024R1689/oj#art_97').

:- pred opposition/2,
    gloss('Parliament or Council opposes extension of the delegation of power'), source('celex:32024R1689/oj#art_97').

:- pred objection/2,
    gloss('Parliament or Council objects to a delegated act'), source('celex:32024R1689/oj#art_97').

:- pred delegation_of_power/1,
    gloss('Specific delegation of power'), source('celex:32024R1689/oj#art_97').

required_power_to_adopt_delegated_acts(commission).

required_report(commission, delegation_of_power).

must_draw_up_report(commission, delegation_of_power).

must_consult_experts(commission).

must_notify(commission, _).

delegation_of_power(delegation_of_power).

permitted_revocation(Delegation, parliament) :-
    delegation_of_power(Delegation).

permitted_revocation(Delegation, council) :-
    delegation_of_power(Delegation).

permitted_tacit_extension(Delegation) :-
    delegation_of_power(Delegation),
    \+ opposition(parliament, Delegation),
    \+ opposition(council, Delegation).

permitted_entry_into_force(Act) :-
    \+ objection(parliament, Act),
    \+ objection(council, Act).

provenance(required_power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_97').
provenance(required_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/1, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revocation/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(permitted_entry_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(opposition/2, 'celex:32024R1689/oj#art_97').
provenance(objection/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power/1, 'celex:32024R1689/oj#art_97').

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
