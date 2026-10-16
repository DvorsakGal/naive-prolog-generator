% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 7afdb3ce85cbf308b497f4e3bb18fc4b406aaf2a48c995a1fcc7f2288a0fef73
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred board_established/1, gloss('European Artificial Intelligence Board is established'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/1, gloss('representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_observer/1, gloss('observer participating in Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred board_attendee/1, gloss('entity attending Board meetings without voting'), source('celex:32024R1689/oj#art_65').
:- pred board_invitee/1, gloss('entity invited to Board meetings on a case-by-case basis'), source('celex:32024R1689/oj#art_65').
:- pred board_standing_subgroup/1, gloss('standing sub-group of the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_temporary_subgroup/1, gloss('temporary sub-group of the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_chair/1, gloss('Chair of the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_secretariat/1, gloss('secretariat for the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_rules_of_procedure/1, gloss('rules of procedure of the Board'), source('celex:32024R1689/oj#art_65').
:- pred designated_for_period/2, gloss('representative designated for a period'), source('celex:32024R1689/oj#art_65').
:- pred single_contact_point/1, gloss('designated as single contact point vis-à-vis the Board'), source('celex:32024R1689/oj#art_65').
:- pred empowered_for_coordination/1, gloss('empowered to facilitate consistency and coordination between national competent authorities'), source('celex:32024R1689/oj#art_65').
:- pred market_surveillance_subgroup/1, gloss('standing sub-group for market surveillance'), source('celex:32024R1689/oj#art_65').
:- pred notifying_authorities_subgroup/1, gloss('standing sub-group for notifying authorities'), source('celex:32024R1689/oj#art_65').

board_established(board).

board_observer(european_data_protection_supervisor).

board_attendee(ai_office).

board_secretariat(ai_office).

board_representative(R) :-
    designated_for_period(R, years(3)).

must_designate_representative(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState).

must_ensure_competences(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState),
    has_relevant_competences(R).

must_ensure_single_contact_point(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState),
    single_contact_point(R).

must_ensure_empowered_for_coordination(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState),
    empowered_for_coordination(R).

must_adopt_rules_of_procedure(Representatives, Rules) :-
    board_rules_of_procedure(Rules),
    adopted_by_majority(Representatives, Rules, two_thirds).

must_establish_standing_subgroups(Board, Subgroup) :-
    board_standing_subgroup(Subgroup),
    (   market_surveillance_subgroup(Subgroup)
    ;   notifying_authorities_subgroup(Subgroup)
    ).

may_establish_other_subgroups(Board, Subgroup) :-
    (   board_standing_subgroup(Subgroup)
    ;   board_temporary_subgroup(Subgroup)
    ),
    \+ market_surveillance_subgroup(Subgroup),
    \+ notifying_authorities_subgroup(Subgroup).

must_safeguard_objectivity_impartiality(Board) :-
    board_established(Board).

must_be_chaired_by_representative(Board, Chair) :-
    board_chair(Chair),
    board_representative(Chair).

must_convene_meetings(Secretariat, Chair) :-
    board_secretariat(Secretariat),
    board_chair(Chair).

must_prepare_agenda(Secretariat, Board) :-
    board_secretariat(Secretariat),
    board_established(Board).

provenance(board_established/1, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(board_attendee/1, 'celex:32024R1689/oj#art_65').
provenance(board_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_competences/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_single_contact_point/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_empowered_for_coordination/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish_standing_subgroups/2, 'celex:32024R1689/oj#art_65').
provenance(may_establish_other_subgroups/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard_objectivity_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(must_be_chaired_by_representative/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
