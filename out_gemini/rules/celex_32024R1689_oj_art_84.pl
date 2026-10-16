% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 603ebe11764d261961bc82e2038daa3389ab42e0eec1cd934fb33dea68f620e2
% cached     : False
% title      : Union AI testing support structures
:- pred union_ai_testing_support_structure/1, gloss('entity designated as Union AI testing support structure'), source('celex:32024R1689/oj#art_84').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_84').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_84').
:- pred advice_requester/1, gloss('entity eligible to request technical or scientific advice from support structures'), source('celex:32024R1689/oj#art_84').
:- pred must_designate(Actor, Object), gloss('duty of Actor to designate Object'), source('celex:32024R1689/oj#art_84').
:- pred must_perform(Actor, Object), gloss('duty of Actor to perform tasks Object'), source('celex:32024R1689/oj#art_84').
:- pred must_provide(Actor, Object), gloss('duty of Actor to provide Object'), source('celex:32024R1689/oj#art_84').
:- pred requested_advice/2, gloss('requester asked for technical or scientific advice'), source('celex:32024R1689/oj#art_84').

% Paragraph 1: The Commission shall designate one or more Union AI testing support structures
must_designate(commission, union_ai_testing_support_structure).

% Tasks listed under Article 21(6) of Regulation (EU) 2019/1020 in the area of AI
must_perform(Structure, tasks_regulation_2019_1020_art_21_6(area_of_ai)) :-
    union_ai_testing_support_structure(Structure).

% Eligible entities to request advice under Paragraph 2
advice_requester(B) :- board(B).
advice_requester(C) :- commission(C).
advice_requester(M) :- market_surveillance_authority(M).

% Paragraph 2: Union AI testing support structures shall also provide independent technical or scientific advice
must_provide(Structure, independent_advice(technical_or_scientific, Requester)) :-
    union_ai_testing_support_structure(Structure),
    advice_requester(Requester),
    requested_advice(Requester, Structure).

provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').
provenance(commission/1, 'celex:32024R1689/oj#art_84').
provenance(advice_requester/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_perform/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide/2, 'celex:32024R1689/oj#art_84').
provenance(requested_advice/2, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
