% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5afdfb4d97eaa03055f6e8b403b44d9672d68975b3c61a0ca24c15068dab23bd
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/1, gloss('representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred observer/1, gloss('entity participating in Board meetings without voting'), source('celex:32024R1689/oj#art_65').
:- pred meeting_attendee/1, gloss('entity attending Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred chair/1, gloss('Chair of the Board'), source('celex:32024R1689/oj#art_65').
:- pred rules_of_procedure/1, gloss('rules governing Board operation'), source('celex:32024R1689/oj#art_65').
:- pred standing_sub_group/1, gloss('permanent sub-group of the Board'), source('celex:32024R1689/oj#art_65').
:- pred temporary_sub_group/1, gloss('temporary sub-group of the Board'), source('celex:32024R1689/oj#art_65').
:- pred sub_group/1, gloss('sub-group of the Board'), source('celex:32024R1689/oj#art_65').
:- pred market_surveillance_sub_group/1, gloss('standing sub-group for market surveillance authorities'), source('celex:32024R1689/oj#art_65').
:- pred notifying_authorities_sub_group/1, gloss('standing sub-group for notifying authorities'), source('celex:32024R1689/oj#art_65').
:- pred adco_for_regulation/1, gloss('administrative cooperation group for this Regulation'), source('celex:32024R1689/oj#art_65').
:- pred secretariat_provider/1, gloss('entity providing secretariat for the Board'), source('celex:32024R1689/oj#art_65').
:- pred mandate_period/1, gloss('period of appointment for Board representatives'), source('celex:32024R1689/oj#art_65').
:- pred voting_majority/1, gloss('majority required for Board decisions'), source('celex:32024R1689/oj#art_65').

board(european_artificial_intelligence_board).

board_representative(R) :-
    member_state_representative(R),
    designated_for_board(R).

observer(european_data_protection_supervisor).

meeting_attendee(A) :-
    board_representative(A).
meeting_attendee(A) :-
    observer(A).
meeting_attendee(A) :-
    ai_office(A).
meeting_attendee(A) :-
    invited_authority_body_or_expert(A).

member_state_representative(R) :-
    board_representative(R).

designated_for_board(R) :-
    board_representative(R).

mandate_period(years(3)).

renewable_once(R) :-
    board_representative(R).

has_relevant_competences_and_powers(R) :-
    board_representative(R).

single_contact_point_for_board(R) :-
    board_representative(R).

single_contact_point_for_stakeholders(R) :-
    board_representative(R),
    member_state_needs_stakeholder_contact_point(R).

empowered_to_facilitate_consistency_and_coordination(R) :-
    board_representative(R).

collects_data_and_information_for_board_tasks(R) :-
    empowered_to_facilitate_consistency_and_coordination(R).

adopts_rules_of_procedure(R) :-
    board_representative(R).

voting_majority(two_thirds).

rules_of_procedure_adopted_by(Representatives, rules_of_procedure(board)) :-
    board_representative(Representatives),
    voting_majority(two_thirds).

rules_of_procedure_shall_lay_down(rules_of_procedure(board), selection_process_for_chair).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), duration_of_chair_mandate).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), specifications_of_chair_tasks).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), detailed_voting_arrangements).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), organisation_of_board_activities).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), organisation_of_sub_group_activities).

standing_sub_group(market_surveillance_sub_group).
standing_sub_group(notifying_authorities_sub_group).

market_surveillance_sub_group(market_surveillance_sub_group).
notifying_authorities_sub_group(notifying_authorities_sub_group).

sub_group(S) :-
    standing_sub_group(S).
sub_group(S) :-
    temporary_sub_group(S).

purpose_of_standing_sub_group(market_surveillance_sub_group, cooperation_and_exchange(market_surveillance_authorities, market_surveillance_issues)).
purpose_of_standing_sub_group(notifying_authorities_sub_group, cooperation_and_exchange(notifying_authorities, notified_bodies_issues)).

adco_for_regulation(market_surveillance_sub_group).

may_establish_other_sub_group(board, S) :-
    standing_sub_group(S).
may_establish_other_sub_group(board, S) :-
    temporary_sub_group(S).

purpose_of_other_sub_group(S, examining_specific_issues) :-
    sub_group(S),
    \+ standing_sub_group(S).

may_invite_to_sub_group_or_meeting(board, representative(advisory_forum), observer).

safeguards_objectivity_and_impartiality(board).

chair(C) :-
    board_representative(C),
    elected_as_chair(C).

secretariat_provider(ai_office).

convenes_meetings(ai_office, board) :-
    requested_by_chair(ai_office, C),
    chair(C).

prepares_agenda(ai_office, board) :-
    in_accordance_with(tasks(board), regulation('celex:32024R1689/oj')),
    in_accordance_with(rules_of_procedure(board), regulation('celex:32024R1689/oj')).

provenance(board/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').
provenance(observer/1, 'celex:32024R1689/oj#art_65').
provenance(meeting_attendee/1, 'celex:32024R1689/oj#art_65').
provenance(chair/1, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(standing_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(temporary_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(market_surveillance_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(notifying_authorities_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(adco_for_regulation/1, 'celex:32024R1689/oj#art_65').
provenance(secretariat_provider/1, 'celex:32024R1689/oj#art_65').
provenance(mandate_period/1, 'celex:32024R1689/oj#art_65').
provenance(voting_majority/1, 'celex:32024R1689/oj#art_65').
provenance(member_state_representative/1, 'celex:32024R1689/oj#art_65').
provenance(designated_for_board/1, 'celex:32024R1689/oj#art_65').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_65').
provenance(has_relevant_competences_and_powers/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point_for_board/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point_for_stakeholders/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_to_facilitate_consistency_and_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(collects_data_and_information_for_board_tasks/1, 'celex:32024R1689/oj#art_65').
provenance(adopts_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure_adopted_by/2, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure_shall_lay_down/2, 'celex:32024R1689/oj#art_65').
provenance(purpose_of_standing_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(may_establish_other_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(purpose_of_other_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(may_invite_to_sub_group_or_meeting/3, 'celex:32024R1689/oj#art_65').
provenance(safeguards_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(convenes_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(prepares_agenda/2, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
