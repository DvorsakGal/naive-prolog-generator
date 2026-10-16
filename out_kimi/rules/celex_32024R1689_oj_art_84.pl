% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bd6324b03ca60074f1046bb1e2ce5597800a85b9235f7f02a41d6d31c6817c9d
% cached     : False
% title      : Union AI testing support structures
:- pred must_designate/2, gloss('Commission shall designate structures'), source('celex:32024R1689/oj#art_84').
:- pred union_ai_testing_support_structure/1, gloss('structure designated to perform AI testing tasks'), source('celex:32024R1689/oj#art_84').
:- pred must_provide_advice/2, gloss('structure shall provide independent technical or scientific advice'), source('celex:32024R1689/oj#art_84').

must_designate(commission, S) :-
    union_ai_testing_support_structure(S).

union_ai_testing_support_structure(S) :-
    performs_tasks_listed_in_ref(S, 'celex:32019R1020/oj#art_21/par_6'),
    area_of_ai(S).

must_provide_advice(S, request(board)) :-
    union_ai_testing_support_structure(S).

must_provide_advice(S, request(commission)) :-
    union_ai_testing_support_structure(S).

must_provide_advice(S, request(market_surveillance_authority)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(market_surveillance_authority).

performs_tasks_listed_in_ref(S, Ref) :-
    union_ai_testing_support_structure(S),
    ref(Ref).

area_of_ai(S) :-
    union_ai_testing_support_structure(S).

provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(performs_tasks_listed_in_ref/2, 'celex:32024R1689/oj#art_84').
provenance(area_of_ai/1, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
