% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : d0e3d2d7844e095004519be0e72495dba91849e774f7335f45fa41dd1a13305f
% cached     : False
% title      : Union AI testing support structures
:- pred union_ai_testing_support_structure/1, gloss('Union AI testing support structure designated by the Commission'), source('celex:32024R1689/oj#art_84').
:- pred designated_by_commission/1, gloss('designated by the Commission'), source('celex:32024R1689/oj#art_84').
:- pred performs_tasks_listed/2, gloss('performs tasks listed under specified provision in area of AI'), source('celex:32024R1689/oj#art_84').
:- pred provides_independent_technical_or_scientific_advice/2, gloss('provides independent technical or scientific advice at request of specified body'), source('celex:32024R1689/oj#art_84').

union_ai_testing_support_structure(S) :-
    designated_by_commission(S),
    performs_tasks_listed(S, 'celex:32019R1020/oj#art_21/par_6'),
    ai_system(_A).  % in the area of AI

provides_independent_technical_or_scientific_advice(S, RequestingBody) :-
    union_ai_testing_support_structure(S),
    (RequestingBody = board ; RequestingBody = commission ; market_surveillance_authority(RequestingBody)).

provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(provides_independent_technical_or_scientific_advice/2, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
