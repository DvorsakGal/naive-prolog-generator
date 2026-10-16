% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 6510f4a26343cf2093bffd314d312dee114ced6a096de310ecd35a518213a783
% cached     : False
% title      : Committee procedure
:- pred assisted_by_committee/2, gloss('the Commission shall be assisted by a committee'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning/2, gloss('committee is within the meaning of specified regulation'), source('celex:32024R1689/oj#art_98').
:- pred article_5_applies/1, gloss('Article 5 of Regulation (EU) No 182/2011 applies'), source('celex:32024R1689/oj#art_98').

assisted_by_committee(commission, committee).

committee_within_meaning(committee, 'celex:32011R0182/oj').

article_5_applies('celex:32024R1689/oj#art_98/par_2').

provenance(assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning/2, 'celex:32024R1689/oj#art_98').
provenance(article_5_applies/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
