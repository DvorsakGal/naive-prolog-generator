% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4c4a379ba090d1ea07227e60101693afc667d26f9da18492cd906bc1e85bf4b0
% cached     : False
% title      : Union AI testing support structures
:- pred must_designate_union_ai_testing_support_structure/2, gloss('Commission must designate Union AI testing support structures'), source('celex:32024R1689/oj#art_84').
:- pred must_provide_independent_advice/2, gloss('Union AI testing support structure must provide independent technical or scientific advice'), source('celex:32024R1689/oj#art_84').

must_designate_union_ai_testing_support_structure(Commission, Structure) :-
    ai_office(Commission),
    union_ai_testing_support_structure(Structure).

must_provide_independent_advice(Structure, advice(technical_or_scientific, Request)) :-
    union_ai_testing_support_structure(Structure),
    (   request_from_board(Request)
    ;   request_from_commission(Request)
    ;   request_from_market_surveillance_authority(Request)
    ).

provenance(must_designate_union_ai_testing_support_structure/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_independent_advice/2, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
