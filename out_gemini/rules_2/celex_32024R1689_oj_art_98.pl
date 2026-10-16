% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 06de0024a17406489f33790eb25dc861e9491de1b39818a2284efdbe31e46266
% cached     : False
% title      : Committee procedure
:- pred assisted_by_committee/2, gloss('Entity is assisted by a committee'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning_of_regulation_182_2011/1, gloss('Committee is a committee within the meaning of Regulation (EU) No 182/2011'), source('celex:32024R1689/oj#art_98').
:- pred examination_procedure_applies/1, gloss('Article 5 of Regulation (EU) No 182/2011 applies to the adoption procedure'), source('celex:32024R1689/oj#art_98').
:- pred reference_made_to_art_98_par_2/1, gloss('Reference is made to Article 98(2) of Regulation (EU) 2024/1689'), source('celex:32024R1689/oj#art_98').

% Paragraph 1: The Commission shall be assisted by a committee within the meaning of Regulation (EU) No 182/2011.
assisted_by_committee(Commission, committee(regulation_182_2011)) :-
    commission(Commission).

committee_within_meaning_of_regulation_182_2011(committee(regulation_182_2011)).

% Paragraph 2: Where reference is made to this paragraph, Article 5 of Regulation (EU) No 182/2011 shall apply.
examination_procedure_applies(Action) :-
    reference_made_to_art_98_par_2(Action).

provenance(assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation_182_2011/1, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
