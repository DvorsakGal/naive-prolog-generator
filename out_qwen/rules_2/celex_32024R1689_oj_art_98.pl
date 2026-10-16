% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : feba92e95442064620186b4da08085afdd09cd55874c379ad9154770bb166bed
% cached     : False
% title      : Committee procedure
:- pred assisted_by_committee/1, gloss('Commission is assisted by a committee'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning_of_regulation/2, gloss('committee is within the meaning of a specified regulation'), source('celex:32024R1689/oj#art_98').
:- pred reference_made_to_paragraph/1, gloss('reference is made to Article 98(2)'), source('celex:32024R1689/oj#art_98').
:- pred examination_procedure_applies/1, gloss('examination procedure under Regulation 182/2011 Article 5 applies'), source('celex:32024R1689/oj#art_98').

assisted_by_committee(commission).

committee_within_meaning_of_regulation(C, 'celex:32011R0182/oj') :-
    assisted_by_committee(commission),
    C = commission_assistance_committee.

reference_made_to_paragraph('celex:32024R1689/oj#art_98/par_2').

examination_procedure_applies('celex:32024R1689/oj#art_98/par_2') :-
    reference_made_to_paragraph('celex:32024R1689/oj#art_98/par_2').

provenance(assisted_by_committee/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/2, 'celex:32024R1689/oj#art_98').
provenance(reference_made_to_paragraph/1, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
