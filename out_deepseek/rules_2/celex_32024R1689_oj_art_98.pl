% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 8772bb9d7694f47c480ec08c6137bbda5f8c4e3b578a0f0debcf27d46542a4e8
% cached     : False
% title      : Committee procedure
:- pred must_be_assisted_by_committee/2, gloss('Commission must be assisted by a committee'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning_of_regulation/1, gloss('committee within the meaning of Regulation (EU) No 182/2011'), source('celex:32024R1689/oj#art_98').
:- pred reference_to_committee_procedure/1, gloss('reference is made to this committee procedure'), source('celex:32024R1689/oj#art_98').
:- pred regulation_182_2011_art_5_applies/1, gloss('Article 5 of Regulation (EU) No 182/2011 applies'), source('celex:32024R1689/oj#art_98').

must_be_assisted_by_committee(Commission, Committee) :-
    committee_within_meaning_of_regulation(Committee).

committee_within_meaning_of_regulation(Committee) :-
    true.

regulation_182_2011_art_5_applies(Procedure) :-
    reference_to_committee_procedure(Procedure).

provenance(must_be_assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/1, 'celex:32024R1689/oj#art_98').
provenance(regulation_182_2011_art_5_applies/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
