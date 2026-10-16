% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : cb2c67d5bab9f75652f6d6e4b70293a46116b37c747e98a6bf156ce379465316
% cached     : False
% title      : Committee procedure
:- pred committee_assists_commission/1, gloss('committee assists the Commission'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning_of_regulation_182_2011/1, gloss('committee is a committee within the meaning of Regulation 182/2011'), source('celex:32024R1689/oj#art_98').
:- pred article_5_of_regulation_182_2011_applies/0, gloss('Article 5 of Regulation 182/2011 applies where reference is made to Article 98(2)'), source('celex:32024R1689/oj#art_98').

committee_assists_commission(C) :-
    committee_within_meaning_of_regulation_182_2011(C).

committee_within_meaning_of_regulation_182_2011(C) :-
    committee(C).

article_5_of_regulation_182_2011_applies :-
    reference_made_to_article_98_par_2.

provenance(committee_assists_commission/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation_182_2011/1, 'celex:32024R1689/oj#art_98').
provenance(article_5_of_regulation_182_2011_applies/0, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
