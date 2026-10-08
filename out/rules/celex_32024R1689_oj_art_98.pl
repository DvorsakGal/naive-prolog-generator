% unit       : celex:32024R1689/oj#art_98
% title      : Committee procedure
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : gpt-oss:120b-cloud
% prompt sha : 7f25ef872bed386df53d80d4f54ef4d94018f247e2e2104c35e4305d946ed4e4
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_assist/2, gloss('obligation for the Commission to be assisted by a committee'), source('celex:32024R1689/oj#art_98').
:- pred committee/1, gloss('a committee within the meaning of the referenced act'), source('celex:32024R1689/oj#art_98').
:- pred reference_applies/1, gloss('a reference is made to the given provision'), source('celex:32024R1689/oj#art_98').
:- pred article_applies/1, gloss('the referenced article applies'), source('celex:32024R1689/oj#art_98').

must_assist(commission, C) :-
    committee(C).

committee(_).

article_applies('celex:32011R0182/oj#art_5') :-
    reference_applies('celex:32024R1689/oj#art_98/par_2').

provenance(must_assist/2, 'celex:32024R1689/oj#art_98').
provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(article_applies/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
