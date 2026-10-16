% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 925f179338246403422a283c99e785fdf6a222b63f64b170804230fb2f684a90
% cached     : False
% title      : Committee procedure
:- pred committee/1, gloss('committee assisting the Commission under the AI Act'), source('celex:32024R1689/oj#art_98').

must_be_assisted(Commission, Committee) :-
    committee(Committee).

committee_within_meaning(Committee) :-
    committee(Committee).

provenance(must_be_assisted/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
