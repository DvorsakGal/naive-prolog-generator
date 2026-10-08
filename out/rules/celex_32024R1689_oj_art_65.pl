% unit       : celex:32024R1689/oj#art_65
% title      : Establishment and structure of the European Artificial Intelligence Board
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : gpt-oss:120b-cloud
% prompt sha : de8a1e40659ebe3e6d8fc3fc4d33795333334cfbfc3638e8cffd4c216f43fd81
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred established/1, gloss('European Artificial Intelligence Board established'), source('celex:32024R1689/oj#art_65').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred required_composition/2, gloss('Composition requirement for Board'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/1, gloss('Representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_appoint_chair/2, gloss('Board must appoint a chair from its representatives'), source('celex:32024R1689/oj#art_65').
:- pred must_provide_secretariat/2, gloss('AI Office provides secretariat for Board'), source('celex:32024R1689/oj#art_65').
:- pred must_convene_meetings/2, gloss('AI Office convenes Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred must_prepare_agenda/2, gloss('AI Office prepares agenda for Board'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure_objectivity_and_impartiality/1, gloss('Board must safeguard objectivity and impartiality'), source('celex:32024R1689/oj#art_65').
:- pred must_establish_subgroup/2, gloss('Board must establish standing sub‑groups'), source('celex:32024R1689/oj#art_65').
:- pred must_act_as_adco/1, gloss('Market surveillance sub‑group acts as ADCO'), source('celex:32024R1689/oj#art_65').
:- pred permitted_establish_subgroup/2, gloss('Board may establish other sub‑groups'), source('celex:32024R1689/oj#art_65').
:- pred appropriate/1, gloss('Sub‑group appropriate for examination'), source('celex:32024R1689/oj#art_65').

established(eai_board).
provenance(established/1, 'celex:32024R1689/oj#art_65').

board(eai_board) :-
    established(eai_board).
provenance(board/1, 'celex:32024R1689/oj#art_65').

required_composition(eai_board, one_representative_per_member_state).
provenance(required_composition/2, 'celex:32024R1689/oj#art_65').

board_representative(_).
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').

must_appoint_chair(Board, Rep) :-
    board(Board),
    board_representative(Rep).
provenance(must_appoint_chair/2, 'celex:32024R1689/oj#art_65').

must_provide_secretariat(AIOffice, Board) :-
    ai_office(AIOffice),
    board(Board).
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').

must_convene_meetings(AIOffice, Board) :-
    ai_office(AIOffice),
    board(Board).
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').

must_prepare_agenda(AIOffice, Board) :-
    ai_office(AIOffice),
    board(Board).
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').

must_ensure_objectivity_and_impartiality(Board) :-
    board(Board).
provenance(must_ensure_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').

must_establish_subgroup(Board, market_surveillance_subgroup) :-
    board(Board).
provenance(must_establish_subgroup/2, 'celex:32024R1689/oj#art_65').

must_establish_subgroup(Board, notifying_authorities_subgroup) :-
    board(Board).
provenance(must_establish_subgroup/2, 'celex:32024R1689/oj#art_65').

must_act_as_adco(market_surveillance_subgroup) :-
    must_establish_subgroup(_, market_surveillance_subgroup).
provenance(must_act_as_adco/1, 'celex:32024R1689/oj#art_65').

appropriate(_).
provenance(appropriate/1, 'celex:32024R1689/oj#art_65').

permitted_establish_subgroup(Board, Subgroup) :-
    board(Board),
    appropriate(Subgroup).
provenance(permitted_establish_subgroup/2, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
