% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : a9fb6b9a06062e85aeecbf42317cb65fe9e13c9823371f33d5802a8628f9df0f
% cached     : False
% title      : Union AI testing support structures
:- pred union_ai_testing_support_structure/1, gloss('entity designated as a Union AI testing support structure'), source('celex:32024R1689/oj#art_84').
:- pred must_designate/2, gloss('actor must designate a specified structure or body'), source('celex:32024R1689/oj#art_84').
:- pred must_provide_advice/2, gloss('structure must provide advice to requesting body'), source('celex:32024R1689/oj#art_84').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_84').

% Article 84(1): The Commission shall designate one or more Union AI testing support structures to perform the tasks listed under Article 21(6) of Regulation (EU) 2019/1020 in the area of AI.
must_designate(Actor, union_ai_testing_support_structure(tasks(regulation_2019_1020_art_21_par_6))) :-
    commission(Actor).

% Article 84(2): Without prejudice to the tasks referred to in paragraph 1, Union AI testing support structures shall also provide independent technical or scientific advice at the request of the Board, the Commission, or of market surveillance authorities.
must_provide_advice(Structure, independent_advice(technical_or_scientific, Requestor)) :-
    union_ai_testing_support_structure(Structure),
    requesting_authority_art_84(Requestor).

requesting_authority_art_84(Requestor) :-
    board(Requestor).
requesting_authority_art_84(Requestor) :-
    commission(Requestor).
requesting_authority_art_84(Requestor) :-
    market_surveillance_authority(Requestor).

provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
