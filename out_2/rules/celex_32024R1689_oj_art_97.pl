% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 856ff793b3fd1dbe1f7418f3e0bb1f734056e4a8105ad36bc898cfeffade4751
% cached     : False
% title      : Exercise of the delegation
:- pred permitted_delegated_act_adoption/1, gloss('Commission may adopt delegated acts'), source('celex:32024R1689/oj#art_97').
:- pred must_draw_up_report/2, gloss('Commission must draw up a report on the delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred must_consult_experts/2, gloss('Commission must consult experts designated by each Member State before adopting a delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify/2, gloss('Commission must notify a delegated act to the European Parliament and the Council'), source('celex:32024R1689/oj#art_97').
:- pred permitted_revocation_of_delegation/1, gloss('European Parliament or Council may revoke the delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred permitted_entry_into_force/1, gloss('A delegated act may enter into force only if no objection is raised by the European Parliament or the Council'), source('celex:32024R1689/oj#art_97').

permitted_delegated_act_adoption(commission).

must_draw_up_report(commission, delegation_of_power_report).

must_consult_experts(commission, delegated_act).

must_notify(commission, notification(delegated_act, european_parliament)).
must_notify(commission, notification(delegated_act, council)).

permitted_revocation_of_delegation(european_parliament).
permitted_revocation_of_delegation(council).

permitted_entry_into_force(DelegatedAct) :-
    no_objection(european_parliament, DelegatedAct),
    no_objection(council, DelegatedAct).

provenance(permitted_delegated_act_adoption/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revocation_of_delegation/1, 'celex:32024R1689/oj#art_97').
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
