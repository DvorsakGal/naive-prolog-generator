% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 08b577875434e635ccc780f12385b0bcfeaecce6874dcb354d6a4fa87b0b22f5
% cached     : False
% title      : Committee procedure
:- pred committee_assists_commission/1, gloss('committee assisting the Commission under committee procedure'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning_of_regulation/1, gloss('committee within the meaning of Regulation 182/2011'), source('celex:32024R1689/oj#art_98').
:- pred article_5_of_regulation_182_2011_applies/0, gloss('Article 5 of Regulation 182/2011 applies where reference is made to Article 98(2)'), source('celex:32024R1689/oj#art_98').

committee_assists_commission(C) :-
    committee_within_meaning_of_regulation(C).

committee_within_meaning_of_regulation(C) :-
    committee(C).

article_5_of_regulation_182_2011_applies.

provenance(committee_assists_commission/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/1, 'celex:32024R1689/oj#art_98').
provenance(article_5_of_regulation_182_2011_applies/0, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
