% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 0a95b5d84998797fae1a56003346b71cbb90492802dfad3bf2b179137a6fbb97
% cached     : False
% title      : Exercise of the delegation
:- pred must_draw_up_report/2, gloss('Commission must draw up a report on the delegation of power not later than nine months before the end of the five‑year period'), source('celex:32024R1689/oj#art_97').
:- pred must_consult_experts/2, gloss('Commission must consult experts designated by each Member State before adopting a delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify/2, gloss('Commission must notify a delegated act simultaneously to the European Parliament and the Council as soon as it adopts the act'), source('celex:32024R1689/oj#art_97').
:- pred permitted_revocation/1, gloss('European Parliament or Council may revoke the delegation of power at any time'), source('celex:32024R1689/oj#art_97').
:- pred permitted_entry_into_force/1, gloss('A delegated act may enter into force only if no objection has been expressed by the European Parliament or the Council within the prescribed period'), source('celex:32024R1689/oj#art_97').
:- pred no_objection/2, gloss('No objection has been expressed by the given actor concerning the delegated act'), source('celex:32024R1689/oj#art_97').

must_draw_up_report(_Commission, report(deadline(months(9), before_end_of_period))) .
must_consult_experts(_Commission, consult_experts(delegated_act)) .
must_notify(_Commission, notification(delegated_act, [parliament, council])) .
permitted_revocation(parliament) .
permitted_revocation(council) .
permitted_entry_into_force(DelegatedAct) :-
    no_objection(parliament, DelegatedAct),
    no_objection(council, DelegatedAct) .

provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revocation/1, 'celex:32024R1689/oj#art_97').
provenance(permitted_entry_into_force/1, 'celex:32024R1689/oj#art_97').

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
