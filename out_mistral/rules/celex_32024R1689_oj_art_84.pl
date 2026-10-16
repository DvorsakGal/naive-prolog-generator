% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6b8a2b90fe828a46dc58141d3dc80ced1d49798397bbe31dfac78d364bdb57b8
% cached     : False
% title      : Union AI testing support structures
:- pred union_ai_testing_support_structure/1, gloss('structure designated by the Commission to perform AI testing support tasks'), source('celex:32024R1689/oj#art_84').
:- pred designated_by_commission/2, gloss('first argument designated by second argument'), source('celex:32024R1689/oj#art_84').
:- pred must_designate/2, gloss('first argument obliged to designate second argument'), source('celex:32024R1689/oj#art_84').
:- pred performs_ai_testing_support_tasks/1, gloss('structure performs tasks listed under Regulation 2019/1020 Article 21(6) in the area of AI'), source('celex:32024R1689/oj#art_84').
:- pred provides_independent_advice/3, gloss('first argument provides independent technical or scientific advice at request of second to third'), source('celex:32024R1689/oj#art_84').
:- pred board/1, gloss('the Board referred to in the AI Act'), source('celex:32024R1689/oj#art_84').

must_designate(commission, union_ai_testing_support_structure(S)) :-
    designated_by_commission(S, commission),
    union_ai_testing_support_structure(S).

union_ai_testing_support_structure(S) :-
    designated_by_commission(S, commission),
    performs_ai_testing_support_tasks(S).

performs_ai_testing_support_tasks(S) :-
    union_ai_testing_support_structure(S).

provides_independent_advice(S, board, market_surveillance_authority(A)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).

provides_independent_advice(S, board, commission) :-
    union_ai_testing_support_structure(S).

provides_independent_advice(S, commission, market_surveillance_authority(A)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).

provides_independent_advice(S, commission, commission) :-
    union_ai_testing_support_structure(S).

provides_independent_advice(S, market_surveillance_authority(A), board) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).

provides_independent_advice(S, market_surveillance_authority(A), commission) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).

provides_independent_advice(S, market_surveillance_authority(A), market_surveillance_authority(B)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A),
    market_surveillance_authority(B).

provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(designated_by_commission/2, 'celex:32024R1689/oj#art_84').
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(performs_ai_testing_support_tasks/1, 'celex:32024R1689/oj#art_84').
provenance(provides_independent_advice/3, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
