% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 9d341cc0ad77c4132718c199e12e8d30b81ebf001c0cd78486f25067795e56c0
% cached     : False
% title      : Committee procedure
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_98').
:- pred committee/1, gloss('committee assisting the Commission'), source('celex:32024R1689/oj#art_98').

must_assist(Commission, Committee) :-
    commission(Commission),
    committee(Committee).

provenance(must_assist/2, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
