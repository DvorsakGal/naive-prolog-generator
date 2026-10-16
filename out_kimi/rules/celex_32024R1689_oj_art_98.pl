% unit       : celex:32024R1689/oj#art_98
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 53cbe58d2cf7374393f2bb0c59795fe8d95f2a4881e1d5747a3db92b2c41e0ff
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 558157cc722732b462d89f64a4110fd68db455ac2b201438096f139b408a0247
% cached     : False
% title      : Committee procedure
:- pred assisted_by_committee/2, gloss('the Commission is assisted by a committee'), source('celex:32024R1689/oj#art_98').
:- pred committee_within_meaning/2, gloss('committee is within the meaning of a regulation'), source('celex:32024R1689/oj#art_98').
:- pred applies_where_reference_made/2, gloss('a regulation article applies where reference is made to a provision'), source('celex:32024R1689/oj#art_98').

assisted_by_committee(commission, Committee) :-
    committee(Committee).

committee_within_meaning(Committee, Regulation) :-
    assisted_by_committee(commission, Committee),
    regulation(Regulation),
    id(Regulation, 'celex:32011R0182/oj').

applies_where_reference_made(Article, Reference) :-
    reference_made(Reference),
    article(Article),
    id(Article, 'celex:32011R0182/oj#art_5').

provenance(assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning/2, 'celex:32024R1689/oj#art_98').
provenance(applies_where_reference_made/2, 'celex:32024R1689/oj#art_98').

references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').
