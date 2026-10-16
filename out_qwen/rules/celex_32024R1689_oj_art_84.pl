% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d82261a2ce082faf59260a0567c7c659561926e4864d8ceacc4512463a48f839
% cached     : False
% title      : Union AI testing support structures
:- pred union_ai_testing_support_structure/1, gloss('structure designated by the Commission to perform testing support tasks'), source('celex:32024R1689/oj#art_84').
:- pred must_designate_union_ai_testing_support_structure/2, gloss('Commission obligation to designate testing support structures'), source('celex:32024R1689/oj#art_84').
:- pred must_provide_independent_advice/2, gloss('obligation of testing support structures to provide advice on request'), source('celex:32024R1689/oj#art_84').

must_designate_union_ai_testing_support_structure(commission, S) :-
    union_ai_testing_support_structure(S).

must_provide_independent_advice(S, Requester) :-
    union_ai_testing_support_structure(S),
    independent_advice_requester(Requester).

independent_advice_requester(board).
independent_advice_requester(commission).
independent_advice_requester(A) :-
    market_surveillance_authority(A).

provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate_union_ai_testing_support_structure/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_independent_advice/2, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
