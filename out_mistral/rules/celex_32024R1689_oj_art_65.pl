% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 93051c7ca4b9c529b45c151b8097001f3b8fe312387ed23503534107bf4c3950
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred european_artificial_intelligence_board/1, gloss('the European Artificial Intelligence Board established under Article 65'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/1, gloss('representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_observer/1, gloss('observer participating in the Board without voting rights'), source('celex:32024R1689/oj#art_65').
:- pred board_member_state/1, gloss('Member State that designates a representative to the Board'), source('celex:32024R1689/oj#art_65').
:- pred designated_representative/2, gloss('Member State designates a representative to the Board'), source('celex:32024R1689/oj#art_65').
:- pred representative_term/2, gloss('term of office of a Board representative with duration and renewability'), source('celex:32024R1689/oj#art_65').
:- pred competent_representative/1, gloss('Board representative with relevant competences and powers in their Member State'), source('celex:32024R1689/oj#art_65').
:- pred single_contact_point/1, gloss('Board representative designated as single contact point vis-à-vis the Board'), source('celex:32024R1689/oj#art_65').
:- pred empowered_to_facilitate_coordination/1, gloss('Board representative empowered to facilitate consistency and coordination between national competent authorities'), source('celex:32024R1689/oj#art_65').
:- pred board_rules_of_procedure/1, gloss('rules of procedure adopted by the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_chair/1, gloss('Chair of the Board, being a representative of a Member State'), source('celex:32024R1689/oj#art_65').
:- pred board_secretariat/1, gloss('entity providing the secretariat for the Board'), source('celex:32024R1689/oj#art_65').
:- pred board_subgroup/1, gloss('standing or temporary sub-group established by the Board'), source('celex:32024R1689/oj#art_65').
:- pred standing_subgroup/1, gloss('standing sub-group established by the Board'), source('celex:32024R1689/oj#art_65').
:- pred market_surveillance_subgroup/1, gloss('standing sub-group for cooperation among market surveillance authorities'), source('celex:32024R1689/oj#art_65').
:- pred notifying_authorities_subgroup/1, gloss('standing sub-group for cooperation among notifying authorities'), source('celex:32024R1689/oj#art_65').
:- pred adco_for_regulation/1, gloss('sub-group acting as administrative cooperation group for this regulation'), source('celex:32024R1689/oj#art_65').
:- pred objective_and_impartial/1, gloss('organised and operated to safeguard objectivity and impartiality'), source('celex:32024R1689/oj#art_65').

european_artificial_intelligence_board(board).

board_representative(R) :-
    designated_representative(_MemberState, R).

board_observer(EDPS) :-
    european_data_protection_supervisor(EDPS).

board_observer(AIOffice) :-
    ai_office(AIOffice).

designated_representative(MemberState, R) :-
    board_member_state(MemberState),
    board_representative(R),
    represents(R, MemberState).

represents(R, MemberState) :-
    designated_representative(MemberState, R).

representative_term(R, term(years(3), renewable(once))) :-
    board_representative(R).

competent_representative(R) :-
    board_representative(R),
    has_relevant_competences_and_powers(R).

single_contact_point(R) :-
    board_representative(R),
    designated_as_single_contact_point(R).

empowered_to_facilitate_coordination(R) :-
    board_representative(R),
    empowered_to_facilitate_consistency_and_coordination(R).

board_rules_of_procedure(Rules) :-
    adopted_by_two_thirds_majority(board, Rules).

board_chair(Chair) :-
    board_representative(Chair).

board_secretariat(AIOffice) :-
    ai_office(AIOffice).

standing_subgroup(SG) :-
    board_subgroup(SG),
    established_as_standing(SG).

market_surveillance_subgroup(SG) :-
    standing_subgroup(SG),
    provides_platform_for_cooperation(SG, market_surveillance_authorities).

notifying_authorities_subgroup(SG) :-
    standing_subgroup(SG),
    provides_platform_for_cooperation(SG, notifying_authorities).

adco_for_regulation(SG) :-
    market_surveillance_subgroup(SG).

objective_and_impartial(board).

must_designate_representative(MemberState, R) :-
    board_member_state(MemberState),
    board_representative(R),
    designated_representative(MemberState, R).

must_ensure_competent_representatives(MemberState) :-
    board_member_state(MemberState),
    forall(designated_representative(MemberState, R),
           competent_representative(R)).

must_ensure_single_contact_point(MemberState) :-
    board_member_state(MemberState),
    forall(designated_representative(MemberState, R),
           single_contact_point(R)).

must_ensure_empowered_representatives(MemberState) :-
    board_member_state(MemberState),
    forall(designated_representative(MemberState, R),
           empowered_to_facilitate_coordination(R)).

must_adopt_rules_of_procedure(Representatives) :-
    board_representative(Representatives),
    board_rules_of_procedure(_Rules).

must_establish_two_standing_subgroups(board).

must_act_as_adco(SG) :-
    market_surveillance_subgroup(SG).

must_safeguard_objectivity_and_impartiality(board).

must_provide_secretariat(AIOffice) :-
    ai_office(AIOffice),
    board_secretariat(AIOffice).

must_convene_meetings(AIOffice, Chair) :-
    ai_office(AIOffice),
    board_chair(Chair),
    board_secretariat(AIOffice).

must_prepare_agenda(AIOffice) :-
    ai_office(AIOffice),
    board_secretariat(AIOffice).

provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(board_member_state/1, 'celex:32024R1689/oj#art_65').
provenance(designated_representative/2, 'celex:32024R1689/oj#art_65').
provenance(representative_term/2, 'celex:32024R1689/oj#art_65').
provenance(competent_representative/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_to_facilitate_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(board_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(board_chair/1, 'celex:32024R1689/oj#art_65').
provenance(board_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(board_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(market_surveillance_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(notifying_authorities_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(adco_for_regulation/1, 'celex:32024R1689/oj#art_65').
provenance(objective_and_impartial/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_competent_representatives/1, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_empowered_representatives/1, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(must_establish_two_standing_subgroups/1, 'celex:32024R1689/oj#art_65').
provenance(must_act_as_adco/1, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/1, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
