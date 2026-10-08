% unit       : celex:32024R1689/oj#art_98
% title      : Committee procedure
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : gpt-oss:120b-cloud
% prompt sha : 6e22289b081433ac93e7d33c1f93274d02ec7b438ef49fb4fd7890ec8c9151ea
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_98').
:- pred committee/1, gloss('Committee assisting the Commission'), source('celex:32024R1689/oj#art_98').
:- pred must_assist/2, gloss('Duty of the Commission to be assisted by a committee'), source('celex:32024R1689/oj#art_98').
:- pred required_apply_provision/2, gloss('Requirement that a referenced provision shall apply'), source('celex:32024R1689/oj#art_98').

commission(commission).

committee(committee).

must_assist(Commission, Committee) :-
    commission(Commission),
    committee(Committee).

required_apply_provision('celex:32011R0182/oj#art_5', 'celex:32024R1689/oj#art_98/par_2').

provenance(commission/1, 'celex:32024R1689/oj#art_98').
provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(must_assist/2, 'celex:32024R1689/oj#art_98').
provenance(required_apply_provision/2, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
