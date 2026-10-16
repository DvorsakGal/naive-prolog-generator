% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e19aef50406a1ce003f96373ce3f44c010f3e69420670ed73391b642d6e74092
% cached     : False
% title      : Committee procedure
:- pred assisted_by_committee/1, gloss('entity assisted by a committee under Regulation (EU) No 182/2011'), source('celex:32024R1689/oj#art_98').
:- pred examination_procedure_applies/1, gloss('Article 5 of Regulation (EU) No 182/2011 applies to the adoption or measure'), source('celex:32024R1689/oj#art_98').
:- pred references_article_98_paragraph_2/1, gloss('reference is made to Article 98(2) of Regulation (EU) 2024/1689'), source('celex:32024R1689/oj#art_98').

% Paragraph 1: The Commission shall be assisted by a committee (within the meaning of Regulation (EU) No 182/2011).
assisted_by_committee(commission).

% Paragraph 2: Where reference is made to this paragraph, Article 5 of Regulation (EU) No 182/2011 shall apply.
examination_procedure_applies(Measure) :-
    references_article_98_paragraph_2(Measure).

provenance(assisted_by_committee/1, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
