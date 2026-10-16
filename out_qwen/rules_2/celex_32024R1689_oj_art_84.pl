% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 613a5ca85ead4d63ceb2eb08a990587665d7246dc37a88f516f6e2457c67604c
% cached     : False
% title      : Union AI testing support structures
:- pred union_ai_testing_support_structure/1, gloss('structure designated by the Commission to perform testing support tasks in the area of AI'), source('celex:32024R1689/oj#art_84').
:- pred must_designate_union_ai_testing_support_structure/2, gloss('Commission obligation to designate one or more Union AI testing support structures'), source('celex:32024R1689/oj#art_84').
:- pred must_provide_independent_advice/2, gloss('Union AI testing support structure obligation to provide independent technical or scientific advice'), source('celex:32024R1689/oj#art_84').

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
