% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d914572df9dddc6e7a052877bd51003f2efc221c875277aeceb54aeed4112f3d
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred european_artificial_intelligence_board/1, gloss('European Artificial Intelligence Board established by Regulation'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/2, gloss('Designated representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred observer_on_board/1, gloss('Entity participating as an observer in the Board'), source('celex:32024R1689/oj#art_65').
:- pred attendee_non_voting/1, gloss('Entity attending Board meetings without taking part in votes'), source('celex:32024R1689/oj#art_65').
:- pred mandate_period/2, gloss('Duration and terms of appointment mandate'), source('celex:32024R1689/oj#art_65').
:- pred single_contact_point/2, gloss('Entity designated as single contact point vis-à-vis an entity or purpose'), source('celex:32024R1689/oj#art_65').
:- pred empowered_for_coordination/1, gloss('Representative empowered to facilitate consistency and coordination between national competent authorities'), source('celex:32024R1689/oj#art_65').
:- pred standing_subgroup/2, gloss('Standing sub-group established by the Board'), source('celex:32024R1689/oj#art_65').
:- pred chair_of_board/1, gloss('Chair of the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred secretariat_of_board/1, gloss('Entity providing secretariat for the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure/2, gloss('Named party has an obligation to ensure a condition holds'), source('celex:32024R1689/oj#art_65').
:- pred must_adopt/2, gloss('Named party has an obligation to adopt a measure or rules'), source('celex:32024R1689/oj#art_65').
:- pred must_establish/2, gloss('Named party has an obligation to establish an entity or sub-group'), source('celex:32024R1689/oj#art_65').
:- pred permitted_invite/2, gloss('Body permitted to invite an entity to meetings'), source('celex:32024R1689/oj#art_65').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_65').

% Paragraph 1: Establishment
european_artificial_intelligence_board(eaib).

% Paragraph 2: Composition, observers, attendees, invitations
observer_on_board(european_data_protection_supervisor).

attendee_non_voting(Office) :-
    ai_office(Office).

permitted_invite(eaib, Entity) :-
    european_artificial_intelligence_board(eaib),
    relevant_for_discussion(Entity).

% Paragraph 3: Mandate period
mandate_period(R, period(years(3), renewable_times(1))) :-
    board_representative(R, _MS).

% Paragraph 4: Duties of Member States regarding representatives
must_ensure(MS, competent_and_empowered(R)) :-
    member_state(MS),
    board_representative(R, MS).

must_ensure(MS, single_contact_point(R, eaib)) :-
    member_state(MS),
    board_representative(R, MS).

must_ensure(MS, empowered_for_coordination(R)) :-
    member_state(MS),
    board_representative(R, MS).

% Paragraph 5: Adoption of rules of procedure
must_adopt(representatives_of_member_states, rules_of_procedure(eaib, majority(two_thirds))).

% Paragraph 6: Standing sub-groups
standing_subgroup(eaib, market_surveillance).
standing_subgroup(eaib, notifying_authorities).

must_establish(eaib, standing_subgroup(market_surveillance)).
must_establish(eaib, standing_subgroup(notifying_authorities)).

% Paragraph 8: Chair and Secretariat
chair_of_board(R) :-
    board_representative(R, _MS).

secretariat_of_board(Office) :-
    ai_office(Office).

% Provenance
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(observer_on_board/1, 'celex:32024R1689/oj#art_65').
provenance(attendee_non_voting/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_65').
provenance(mandate_period/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(chair_of_board/1, 'celex:32024R1689/oj#art_65').
provenance(secretariat_of_board/1, 'celex:32024R1689/oj#art_65').

% References
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
