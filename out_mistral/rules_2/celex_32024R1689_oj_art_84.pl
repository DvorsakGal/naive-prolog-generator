% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 9354d321f0cba18b83c2af44c026b9703a3f90c3c2d7561fc34a19ae5d13d494
% cached     : False
% title      : Union AI testing support structures
:- pred designated_union_ai_testing_support_structure/1, gloss('Union AI testing support structure designated by the Commission'), source('celex:32024R1689/oj#art_84').
:- pred performs_tasks_under_regulation_1020_art_21_par_6/1, gloss('performs tasks listed under Article 21(6) of Regulation 2019/1020 in the area of AI'), source('celex:32024R1689/oj#art_84').
:- pred provides_independent_technical_or_scientific_advice/3, gloss('provides independent technical or scientific advice to requester'), source('celex:32024R1689/oj#art_84').
:- pred ai_board/1, gloss('the Board established under this Regulation'), source('celex:32024R1689/oj#art_84').

must_designate_union_ai_testing_support_structures(commission) :-
    designated_union_ai_testing_support_structure(S),
    performs_tasks_under_regulation_1020_art_21_par_6(S).

designated_union_ai_testing_support_structure(S) :-
    union_ai_testing_support(S),
    performs_tasks_under_regulation_1020_art_21_par_6(S).

performs_tasks_under_regulation_1020_art_21_par_6(S) :-
    designated_union_ai_testing_support_structure(S).

provides_independent_technical_or_scientific_advice(S, Requester) :-
    designated_union_ai_testing_support_structure(S),
    requested_by(Requester),
    independent_advice(technical_or_scientific).

requested_by(ai_board).
requested_by(commission).
requested_by(S) :-
    market_surveillance_authority(S).

independent_advice(technical_or_scientific).

provenance(designated_union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(performs_tasks_under_regulation_1020_art_21_par_6/1, 'celex:32024R1689/oj#art_84').
provenance(provides_independent_technical_or_scientific_advice/3, 'celex:32024R1689/oj#art_84').
provenance(ai_board/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate_union_ai_testing_support_structures/1, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
