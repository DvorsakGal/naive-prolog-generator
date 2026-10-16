% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 6d27a190ee8ed2b78c3ea3cb8777d3d9dba024af03a9eb98c363f401ab8686df
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred european_artificial_intelligence_board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/2, gloss('representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_observer/1, gloss('entity participating as observer in the Board'), source('celex:32024R1689/oj#art_65').
:- pred attends_without_voting/2, gloss('entity attends meetings of a body without taking part in votes'), source('celex:32024R1689/oj#art_65').
:- pred permitted_invitation_to_board/2, gloss('Board may invite entity to its meetings on a case by case basis'), source('celex:32024R1689/oj#art_65').
:- pred designation_term_years/2, gloss('designated term in years for a representative'), source('celex:32024R1689/oj#art_65').
:- pred renewable_times/2, gloss('number of times a mandate is renewable'), source('celex:32024R1689/oj#art_65').
:- pred competent_and_empowered/1, gloss('representative has relevant competences and powers in Member State'), source('celex:32024R1689/oj#art_65').
:- pred designated_contact_point/2, gloss('representative designated as contact point for specific scope'), source('celex:32024R1689/oj#art_65').
:- pred empowered_coordination_and_consistency/1, gloss('representative is empowered to facilitate consistency and coordination between national competent authorities'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure/2, gloss('actor must ensure specified condition holds'), source('celex:32024R1689/oj#art_65').
:- pred must_adopt/2, gloss('actor must adopt specified rules or acts'), source('celex:32024R1689/oj#art_65').
:- pred must_establish/2, gloss('actor must establish a specific entity or sub-group'), source('celex:32024R1689/oj#art_65').
:- pred permitted_establish_subgroup/2, gloss('actor is permitted to establish additional sub-groups'), source('celex:32024R1689/oj#art_65').
:- pred permitted_invite_to_subgroup/2, gloss('actor may invite representatives as observers to sub-groups'), source('celex:32024R1689/oj#art_65').
:- pred standing_subgroup_market_surveillance/1, gloss('standing sub-group for market surveillance of the Board'), source('celex:32024R1689/oj#art_65').
:- pred standing_subgroup_notifying_authorities/1, gloss('standing sub-group for notifying authorities of the Board'), source('celex:32024R1689/oj#art_65').
:- pred adco_group/1, gloss('administrative cooperation group under Regulation (EU) 2019/1020'), source('celex:32024R1689/oj#art_65').
:- pred board_chair/1, gloss('chair of the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred must_provide_secretariat/2, gloss('actor must provide secretariat for an entity'), source('celex:32024R1689/oj#art_65').
:- pred must_convene_meetings/2, gloss('actor must convene meetings upon request of the chair'), source('celex:32024R1689/oj#art_65').
:- pred must_prepare_agenda/2, gloss('actor must prepare agenda for meetings of an entity'), source('celex:32024R1689/oj#art_65').
:- pred relevant_issues/2, gloss('issues discussed are relevant for the entity'), source('celex:32024R1689/oj#art_65').

% Paragraph 1: Establishment
european_artificial_intelligence_board(board).

% Paragraph 2: Composition and attendance
board_observer(edps).

attends_without_voting(ai_office, board) :-
    ai_office(ai_office),
    european_artificial_intelligence_board(board).

permitted_invitation_to_board(board, Authority) :-
    european_artificial_intelligence_board(board),
    relevant_issues(Authority, board).

% Paragraph 3: Term of office
designation_term_years(R, years(3)) :-
    board_representative(_MS, R).

renewable_times(R, 1) :-
    board_representative(_MS, R).

% Paragraph 4: Duties of Member States regarding representatives
must_ensure(MS, competent_and_empowered(R)) :-
    member_state(MS),
    board_representative(MS, R).

must_ensure(MS, designated_contact_point(R, board)) :-
    member_state(MS),
    board_representative(MS, R).

must_ensure(MS, empowered_coordination_and_consistency(R)) :-
    member_state(MS),
    board_representative(MS, R).

% Paragraph 5: Adoption of rules of procedure
must_adopt(representatives(board), rules_of_procedure(board, majority(two_thirds))).

% Paragraph 6: Standing and temporary sub-groups
must_establish(board, standing_subgroup_market_surveillance) :-
    european_artificial_intelligence_board(board).

must_establish(board, standing_subgroup_notifying_authorities) :-
    european_artificial_intelligence_board(board).

adco_group(G) :-
    standing_subgroup_market_surveillance(G).

permitted_establish_subgroup(board, Subgroup) :-
    european_artificial_intelligence_board(board),
    Subgroup \= standing_subgroup_market_surveillance,
    Subgroup \= standing_subgroup_notifying_authorities.

permitted_invite_to_subgroup(_Subgroup, advisory_forum_representative).

% Paragraph 8: Chair and AI Office functions
board_chair(R) :-
    board_representative(_MS, R).

must_provide_secretariat(O, board) :-
    ai_office(O),
    european_artificial_intelligence_board(board).

must_convene_meetings(O, upon_request(board_chair)) :-
    ai_office(O).

must_prepare_agenda(O, board) :-
    ai_office(O),
    european_artificial_intelligence_board(board).

% Provenance
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(attends_without_voting/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_invitation_to_board/2, 'celex:32024R1689/oj#art_65').
provenance(designation_term_years/2, 'celex:32024R1689/oj#art_65').
provenance(renewable_times/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(adco_group/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_establish_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_invite_to_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(board_chair/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').

% References
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
