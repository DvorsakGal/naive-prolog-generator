% unit       : celex:32024R1689/oj#art_65
% title      : Establishment and structure of the European Artificial Intelligence Board
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : gpt-oss:120b-cloud
% prompt sha : d9540d97b190d76cea5381c1ce32fe83dceb6306d2d902cc3c492c12e47a80f5
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State of the EU'), source('celex:32024R1689/oj#art_65').
:- pred representative/1, gloss('Representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred represents/2, gloss('Representative represents a Member State'), source('celex:32024R1689/oj#art_65').

:- pred required_establishment/1, gloss('Establishment of the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred required_one_representative_per_member_state/1, gloss('Each Member State must have one representative on the Board'), source('celex:32024R1689/oj#art_65').
:- pred permitted_observer/2, gloss('Entity may participate as observer in Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred permitted_attendance/2, gloss('Entity may attend Board meetings without voting'), source('celex:32024R1689/oj#art_65').
:- pred permitted_invitation/2, gloss('Authority may be invited to Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred required_designation_period/2, gloss('Term length for Board representatives'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure/2, gloss('Member State must ensure condition for its representative'), source('celex:32024R1689/oj#art_65').
:- pred must_establish/2, gloss('Board must establish standing sub‑groups'), source('celex:32024R1689/oj#art_65').
:- pred permitted_establish/2, gloss('Board may establish other sub‑groups'), source('celex:32024R1689/oj#art_65').
:- pred must_safeguard/2, gloss('Board must safeguard objectivity and impartiality'), source('celex:32024R1689/oj#art_65').
:- pred required_chair/2, gloss('Board must be chaired by a Member State representative'), source('celex:32024R1689/oj#art_65').
:- pred must_provide/2, gloss('Entity must provide something for the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_convene/2, gloss('Entity must convene Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred must_prepare/2, gloss('Entity must prepare agenda for the Board'), source('celex:32024R1689/oj#art_65').

required_establishment(board).

required_one_representative_per_member_state(MS) :-
    member_state(MS).

permitted_observer(european_data_protection_supervisor, board).

permitted_attendance(ai_office, board_meetings_without_voting).

permitted_invitation(_Authority, board_meeting).

required_designation_period(_Rep, three_years_renewable_once).

must_ensure(MS, board_representative_competent(Rep)) :-
    member_state(MS),
    representative(Rep),
    represents(Rep, MS).

must_ensure(MS, board_representative_contact_point(Rep)) :-
    member_state(MS),
    representative(Rep),
    represents(Rep, MS).

must_ensure(MS, board_representative_empowered(Rep)) :-
    member_state(MS),
    representative(Rep),
    represents(Rep, MS).

must_establish(board, standing_subgroup(market_surveillance)).
must_establish(board, standing_subgroup(notifying_authorities)).

permitted_establish(board, other_subgroup).

must_safeguard(board, objectivity_and_impartiality).

required_chair(board, Rep) :-
    representative(Rep).

must_provide(ai_office, secretariat(board)).
must_convene(ai_office, meeting(board)).
must_prepare(ai_office, agenda(board)).

provenance(required_establishment/1, 'celex:32024R1689/oj#art_65').
provenance(required_one_representative_per_member_state/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_observer/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_attendance/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_invitation/2, 'celex:32024R1689/oj#art_65').
provenance(required_designation_period/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_65').
provenance(required_chair/2, 'celex:32024R1689/oj#art_65').
provenance(must_provide/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
