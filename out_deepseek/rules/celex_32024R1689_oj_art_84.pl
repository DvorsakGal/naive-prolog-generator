% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f9c45fac094a06483a27de0ce1d1c202e0812b9afbebb29e58fef50e03fd1140
% cached     : False
% title      : Union AI testing support structures
:- pred must_designate/2, gloss('entity must designate another entity'), source('celex:32024R1689/oj#art_84').
:- pred must_provide_advice/2, gloss('entity must provide independent technical or scientific advice'), source('celex:32024R1689/oj#art_84').
:- pred union_ai_testing_support_structure/1, gloss('entity designated by the Commission to perform AI testing support tasks'), source('celex:32024R1689/oj#art_84').

must_designate(Commission, union_ai_testing_support_structure(S)) :-
    union_ai_testing_support_structure(S).

must_provide_advice(S, advice(Request)) :-
    union_ai_testing_support_structure(S),
    (   Request = board_request
    ;   Request = commission_request
    ;   Request = market_surveillance_authority_request
    ).

provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
