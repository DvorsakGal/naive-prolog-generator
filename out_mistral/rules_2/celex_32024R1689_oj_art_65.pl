% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 83aabae3184a1155ad85b2497b5b0fbe0c719f80b9c404bc9d748a1e5a6c3695
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred european_artificial_intelligence_board/1, gloss('the European Artificial Intelligence Board established by Article 65'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/2, gloss('representative designated by a Member State to the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_observer/1, gloss('observer participating in the Board without voting rights'), source('celex:32024R1689/oj#art_65').
:- pred board_member_state/1, gloss('Member State that has a representative on the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_invited_authority/1, gloss('national or Union authority, body or expert invited to Board meetings on a case-by-case basis'), source('celex:32024R1689/oj#art_65').
:- pred board_representative_designation_period/2, gloss('period for which a board representative is designated by their Member State'), source('celex:32024R1689/oj#art_65').
:- pred board_representative_competences/1, gloss('board representative has relevant competences and powers in their Member State'), source('celex:32024R1689/oj#art_65').
:- pred board_single_contact_point/1, gloss('board representative designated as single contact point vis-à-vis the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_stakeholder_contact_point/1, gloss('board representative designated as single contact point for stakeholders where appropriate'), source('celex:32024R1689/oj#art_65').
:- pred board_representative_empowered_coordination/1, gloss('board representative empowered to facilitate consistency and coordination between national competent authorities'), source('celex:32024R1689/oj#art_65').
:- pred board_rules_of_procedure/1, gloss('rules of procedure adopted by the Board by two-thirds majority'), source('celex:32024R1689/oj#art_65').
:- pred board_standing_subgroup/1, gloss('standing sub-group established by the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_market_surveillance_subgroup/1, gloss('standing sub-group for market surveillance authorities acting as ADCO'), source('celex:32024R1689/oj#art_65').
:- pred board_notifying_authorities_subgroup/1, gloss('standing sub-group for notifying authorities'), source('celex:32024R1689/oj#art_65').
:- pred board_temporary_subgroup/1, gloss('temporary sub-group established by the Board for specific issues'), source('celex:32024R1689/oj#art_65').
:- pred board_adco_for_regulation/1, gloss('market surveillance sub-group acts as administrative cooperation group for the regulation'), source('celex:32024R1689/oj#art_65').
:- pred board_objective_impartial/1, gloss('Board organised and operated to safeguard objectivity and impartiality'), source('celex:32024R1689/oj#art_65').
:- pred board_chair/1, gloss('representative of a Member State chairing the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_secretariat/1, gloss('entity providing secretariat for the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_convenes_meetings/1, gloss('entity convening Board meetings upon request of the Chair'), source('celex:32024R1689/oj#art_65').
:- pred board_prepares_agenda/1, gloss('entity preparing the agenda for Board meetings'), source('celex:32024R1689/oj#art_65').

european_artificial_intelligence_board(board).

board_member_state(M) :-
    member_state(M),
    board_representative(R, M).

board_representative(R, M) :-
    board_member_state(M),
    designated_as_single_contact_point(R).

board_observer(edps) :-
    european_artificial_intelligence_board(board).

board_observer(ai_office) :-
    european_artificial_intelligence_board(board).

ai_office_attends_without_voting :-
    european_artificial_intelligence_board(board).

board_representative_designation_period(R, years(3)) :-
    board_representative(R, _M).

board_representative_renewable_once(R) :-
    board_representative(R, _M),
    board_representative_designation_period(R, years(3)).

board_representative_competences(R) :-
    board_representative(R, M),
    member_state(M).

board_single_contact_point(R) :-
    board_representative(R, _M),
    designated_as_single_contact_point(R).

board_stakeholder_contact_point(R) :-
    board_representative(R, _M),
    designated_as_single_contact_point(R).

board_representative_empowered_coordination(R) :-
    board_representative(R, M),
    member_state(M),
    national_competent_authority(A),
    facilitates_consistency_coordination(R, A).

facilitates_consistency_coordination(R, A) :-
    board_representative_empowered_coordination(R),
    national_competent_authority(A).

board_rules_of_procedure(board) :-
    european_artificial_intelligence_board(board).

board_rules_adopted_by_two_thirds_majority :-
    board_rules_of_procedure(board).

board_standing_subgroup(S) :-
    board_market_surveillance_subgroup(S).
board_standing_subgroup(S) :-
    board_notifying_authorities_subgroup(S).

board_market_surveillance_subgroup(market_surveillance_adco).

board_notifying_authorities_subgroup(notifying_authorities_cooperation).

board_adco_for_regulation(market_surveillance_adco) :-
    board_market_surveillance_subgroup(market_surveillance_adco).

board_temporary_subgroup(S) :-
    european_artificial_intelligence_board(board),
    established_for_specific_issue(S).

established_for_specific_issue(_S).

board_objective_impartial(board) :-
    european_artificial_intelligence_board(board).

board_chair(R) :-
    board_representative(R, _M).

board_secretariat(ai_office) :-
    european_artificial_intelligence_board(board).

board_convenes_meetings(ai_office) :-
    board_secretariat(ai_office).

board_prepares_agenda(ai_office) :-
    board_secretariat(ai_office).

must_ensure_representative_competences(M, R) :-
    member_state(M),
    board_representative(R, M),
    board_representative_competences(R).

must_designate_single_contact_point(M, R) :-
    member_state(M),
    board_representative(R, M),
    board_single_contact_point(R).

must_empower_representative_coordination(M, R) :-
    member_state(M),
    board_representative(R, M),
    board_representative_empowered_coordination(R).

must_adopt_rules_of_procedure(board).

must_establish_standing_subgroups(board) :-
    board_market_surveillance_subgroup(_),
    board_notifying_authorities_subgroup(_).

must_safeguard_objectivity_impartiality(board) :-
    board_objective_impartial(board).

must_provide_secretariat(ai_office, board) :-
    board_secretariat(ai_office),
    european_artificial_intelligence_board(board).

must_convene_meetings_upon_request(ai_office, board, chair) :-
    board_convenes_meetings(ai_office),
    board_chair(_R).

must_prepare_agenda(ai_office, board) :-
    board_prepares_agenda(ai_office),
    european_artificial_intelligence_board(board).

provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/2, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(board_member_state/1, 'celex:32024R1689/oj#art_65').
provenance(board_invited_authority/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative_designation_period/2, 'celex:32024R1689/oj#art_65').
provenance(board_representative_competences/1, 'celex:32024R1689/oj#art_65').
provenance(board_single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(board_stakeholder_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative_empowered_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(board_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(board_standing_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_market_surveillance_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_notifying_authorities_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_temporary_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_adco_for_regulation/1, 'celex:32024R1689/oj#art_65').
provenance(board_objective_impartial/1, 'celex:32024R1689/oj#art_65').
provenance(board_chair/1, 'celex:32024R1689/oj#art_65').
provenance(board_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(board_convenes_meetings/1, 'celex:32024R1689/oj#art_65').
provenance(board_prepares_agenda/1, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
