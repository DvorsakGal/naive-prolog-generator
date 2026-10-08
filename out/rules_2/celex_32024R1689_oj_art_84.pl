% unit       : celex:32024R1689/oj#art_84
% title      : Union AI testing support structures
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : gpt-oss:120b-cloud
% prompt sha : be4878b6eba0e1c18abcbe0112227d15825629cb55f0c0f925e2d87a31506684
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred union_ai_testing_support_structure/1, gloss('entity designated to support AI testing in the Union'), source('celex:32024R1689/oj#art_84').
:- pred must_designate/2, gloss('Commission must designate a Union AI testing support structure'), source('celex:32024R1689/oj#art_84').
:- pred must_provide_advice/2, gloss('Union AI testing support structure must provide independent technical or scientific advice upon request'), source('celex:32024R1689/oj#art_84').
:- pred board/1, gloss('board requesting advice'), source('celex:32024R1689/oj#art_84').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_84').
:- pred tasks_listed_under/2, gloss('tasks listed under a referenced provision'), source('celex:32024R1689/oj#art_84').

% Facts defining the actors
board(board).
commission(commission).

% Duty: the Commission shall designate one or more Union AI testing support structures
must_designate(Commission, Structure) :-
    commission(Commission),
    union_ai_testing_support_structure(Structure),
    tasks_listed_under(Structure, 'celex:32019R1020/oj#art_21/par_6').

% Duty: Union AI testing support structures shall provide independent technical or scientific advice
% at the request of the Board, the Commission, or market surveillance authorities.
must_provide_advice(Structure, Requester) :-
    union_ai_testing_support_structure(Structure),
    (   board(Requester)
    ;   commission(Requester)
    ;   market_surveillance_authority(Requester)
    ).

% The provision references other provisions
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% Provenance for each predicate defined here
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').
provenance(commission/1, 'celex:32024R1689/oj#art_84').
provenance(tasks_listed_under/2, 'celex:32024R1689/oj#art_84').
