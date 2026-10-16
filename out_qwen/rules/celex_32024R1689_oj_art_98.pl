% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1c718671a1ad3c0305173619f3ffd9f076d0a2767e8e9e9693abcc18f5c90581
% cached     : False
% title      : Committee procedure
:- pred committee/1, gloss('committee assisting the Commission under Article 98'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning_of_regulation/2, gloss('committee within the meaning of a specified regulation'), source('celex:32024R1689/oj#art_98').
:- pred examination_procedure_applies/1, gloss('examination procedure under Regulation 182/2011 Article 5 applies to the reference'), source('celex:32024R1689/oj#art_98').

committee(C) :-
    assists_commission(C).

assists_commission(C) :-
    committee(C).

committee_within_meaning_of_regulation(C, 'celex:32011R0182/oj') :-
    committee(C).

examination_procedure_applies(reference(art_98_par_2)).

provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/2, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
