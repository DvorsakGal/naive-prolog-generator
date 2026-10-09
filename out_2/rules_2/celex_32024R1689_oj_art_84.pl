% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 3cab99bf2812e784a6c5ff190ec65ecc03f9433523d63536833aafe16f7a4633
% cached     : False
% title      : Union AI testing support structures
:- pred union_ai_testing_support_structure/1, gloss('Union AI testing support structure'), source('celex:32024R1689/oj#art_84').
:- pred must_designate/2, gloss('Commission shall designate Union AI testing support structures'), source('celex:32024R1689/oj#art_84').
:- pred must_provide/2, gloss('Union AI testing support structures shall provide independent technical or scientific advice'), source('celex:32024R1689/oj#art_84').

must_designate(commission, S) :-
    union_ai_testing_support_structure(S).

must_provide(S, independent_advice(Requester)) :-
    union_ai_testing_support_structure(S),
    (   Requester = board
    ;   Requester = commission
    ;   market_surveillance_authority(Requester)
    ).

provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide/2, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
