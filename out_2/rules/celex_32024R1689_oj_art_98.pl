% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9641da4f656c18e68d9c0d21b266eeafbdc12d600f388cd45322c54e098facd9
% cached     : False
% title      : Committee procedure
:- pred committee/1, gloss('committee as defined in EU law'), source('celex:32024R1689/oj#art_98').
:- pred must_assist/2, gloss('obligation for a committee to assist the Commission'), source('celex:32024R1689/oj#art_98').

must_assist(C, commission) :-
    committee(C).

provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(must_assist/2, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
