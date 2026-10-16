% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : ec71009c883576519cfaae4970a43151896d4fc9b9696dd9614eaab724516608
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred european_ai_board/1, gloss('the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred member_state_representative/2, gloss('representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred observer/2, gloss('entity participating as observer in Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred attends_without_voting/2, gloss('entity attending Board meetings without taking part in votes'), source('celex:32024R1689/oj#art_65').
:- pred invited_to_meetings/2, gloss('entity invited to Board meetings on a case by case basis'), source('celex:32024R1689/oj#art_65').
:- pred designated_for_period/3, gloss('representative designated for a period with possible renewal'), source('celex:32024R1689/oj#art_65').
:- pred relevant_competences_and_powers/2, gloss('representative has relevant competences and powers in Member State'), source('celex:32024R1689/oj#art_65').
:- pred single_contact_point/2, gloss('representative is single contact point vis-à-vis the Board'), source('celex:32024R1689/oj#art_65').
:- pred single_contact_point_for_stakeholders/2, gloss('representative is single contact point for stakeholders'), source('celex:32024R1689/oj#art_65').
:- pred empowered_to_facilitate_coordination/2, gloss('representative empowered to facilitate consistency and coordination between national competent authorities'), source('celex:32024R1689/oj#art_65').
:- pred adopts_rules_of_procedure/2, gloss('Board adopts rules of procedure by specified majority'), source('celex:32024R1689/oj#art_65').
:- pred rules_of_procedure/1, gloss('rules of procedure of the Board'), source('celex:32024R1689/oj#art_65').
:- pred standing_sub_group_market_surveillance/1, gloss('standing sub-group for market surveillance authorities'), source('celex:32024R1689/oj#art_65').
:- pred standing_sub_group_notifying_authorities/1, gloss('standing sub-group for notifying authorities'), source('celex:32024R1689/oj#art_65').
:- pred acts_as_adco/2, gloss('sub-group acts as administrative cooperation group for specified regulation'), source('celex:32024R1689/oj#art_65').
:- pred may_establish_sub_groups/2, gloss('Board may establish sub-groups for examining specific issues'), source('celex:32024R1689/oj#art_65').
:- pred invited_to_sub_group/2, gloss('entity invited to sub-group or specific meeting as observer'), source('celex:32024R1689/oj#art_65').
:- pred safeguards_objectivity_impartiality/1, gloss('Board safeguards objectivity and impartiality of its activities'), source('celex:32024R1689/oj#art_65').
:- pred chaired_by/2, gloss('Board chaired by a representative of the Member States'), source('celex:32024R1689/oj#art_65').
:- pred provides_secretariat/2, gloss('entity provides secretariat for the Board'), source('celex:32024R1689/oj#art_65').
:- pred convenes_meetings/2, gloss('entity convenes meetings upon request of the Chair'), source('celex:32024R1689/oj#art_65').
:- pred prepares_agenda/2, gloss('entity prepares agenda in accordance with tasks and rules of procedure'), source('celex:32024R1689/oj#art_65').

european_ai_board(board).

member_state_representative(board, R) :-
    member_state(M),
    designated_representative(M, R, board).

observer(board, edps) :-
    european_data_protection_supervisor(edps).

attends_without_voting(board, ai_office) :-
    ai_office(ai_office).

invited_to_meetings(board, E) :-
    national_authority(E).
invited_to_meetings(board, E) :-
    union_authority(E).
invited_to_meetings(board, E) :-
    body(E).
invited_to_meetings(board, E) :-
    expert(E).

designated_for_period(R, years(3), renewable_once) :-
    member_state_representative(board, R).

relevant_competences_and_powers(R, M) :-
    member_state_representative(board, R),
    member_state(M),
    designated_by(M, R),
    has_competences_and_powers(R, M),
    contributes_to_tasks(R, board_tasks).

single_contact_point(R, board) :-
    member_state_representative(board, R).

single_contact_point_for_stakeholders(R, stakeholders) :-
    member_state_representative(board, R),
    member_states_needs_appropriate(M).

empowered_to_facilitate_coordination(R, M) :-
    member_state_representative(board, R),
    member_state(M),
    designated_by(M, R),
    facilitates_consistency_and_coordination(R, national_competent_authorities(M)),
    collects_relevant_data_and_information(R, purpose(fulfilling_tasks_on_board)).

adopts_rules_of_procedure(board, two_thirds_majority) :-
    designated_representatives_member_states(board, Representatives),
    adopts_by_majority(Representatives, rules_of_procedure(board), two_thirds).

rules_of_procedure(board) :-
    adopts_rules_of_procedure(board, _).

standing_sub_group_market_surveillance(sub_group_market_surveillance).

standing_sub_group_notifying_authorities(sub_group_notifying_authorities).

acts_as_adco(sub_group_market_surveillance, regulation('celex:32024R1689/oj')) :-
    standing_sub_group_market_surveillance(sub_group_market_surveillance),
    meaning(administrative_cooperation_group, 'celex:32019R1020/oj#art_30').

may_establish_sub_groups(board, S) :-
    standing(S),
    sub_group(S),
    purpose(examining_specific_issues, S).
may_establish_sub_groups(board, S) :-
    temporary(S),
    sub_group(S),
    purpose(examining_specific_issues, S).

invited_to_sub_group(S, advisory_forum_representatives) :-
    may_establish_sub_groups(board, S),
    advisory_forum(advisory_forum),
    referred_to_in('celex:32024R1689/oj#art_67', advisory_forum),
    invited_as_observers(advisory_forum_representatives, S).

safeguards_objectivity_impartiality(board).

chaired_by(board, R) :-
    member_state_representative(board, R).

provides_secretariat(board, ai_office) :-
    ai_office(ai_office).

convenes_meetings(board, ai_office) :-
    ai_office(ai_office),
    request_of(chair, convene).

prepares_agenda(board, ai_office) :-
    ai_office(ai_office),
    accordance_with(tasks(board, 'celex:32024R1689/oj'), agenda),
    rules_of_procedure(board).

% Provenance
provenance(european_ai_board/1, 'celex:32024R1689/oj#art_65').
provenance(member_state_representative/2, 'celex:32024R1689/oj#art_65').
provenance(observer/2, 'celex:32024R1689/oj#art_65').
provenance(attends_without_voting/2, 'celex:32024R1689/oj#art_65').
provenance(invited_to_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(designated_for_period/3, 'celex:32024R1689/oj#art_65').
provenance(relevant_competences_and_powers/2, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point/2, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point_for_stakeholders/2, 'celex:32024R1689/oj#art_65').
provenance(empowered_to_facilitate_coordination/2, 'celex:32024R1689/oj#art_65').
provenance(adopts_rules_of_procedure/2, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(standing_sub_group_market_surveillance/1, 'celex:32024R1689/oj#art_65').
provenance(standing_sub_group_notifying_authorities/1, 'celex:32024R1689/oj#art_65').
provenance(acts_as_adco/2, 'celex:32024R1689/oj#art_65').
provenance(may_establish_sub_groups/2, 'celex:32024R1689/oj#art_65').
provenance(invited_to_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(safeguards_objectivity_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(chaired_by/2, 'celex:32024R1689/oj#art_65').
provenance(provides_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(convenes_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(prepares_agenda/2, 'celex:32024R1689/oj#art_65').

% References
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
