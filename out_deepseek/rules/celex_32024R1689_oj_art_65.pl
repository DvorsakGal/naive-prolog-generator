% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a680e11506bdeb2cf9bc23af3746c86db6ed9f0a8426c8cf0a71dd3dddd722ea
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred board_established/1, gloss('European Artificial Intelligence Board is established'), source('celex:32024R1689/oj#art_65').
:- pred board_composed_of/2, gloss('Board composed of representative per Member State'), source('celex:32024R1689/oj#art_65').
:- pred observer/1, gloss('entity participating as observer'), source('celex:32024R1689/oj#art_65').
:- pred attends_without_vote/1, gloss('entity attending without taking part in votes'), source('celex:32024R1689/oj#art_65').
:- pred may_be_invited/1, gloss('entity that may be invited to meetings'), source('celex:32024R1689/oj#art_65').
:- pred designated_representative/2, gloss('representative designated by Member State'), source('celex:32024R1689/oj#art_65').
:- pred designation_period/2, gloss('period of designation for a representative'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure/2, gloss('Member State must ensure conditions for its representative'), source('celex:32024R1689/oj#art_65').
:- pred has_relevant_competences/1, gloss('representative has relevant competences and powers'), source('celex:32024R1689/oj#art_65').
:- pred single_contact_point/1, gloss('representative designated as single contact point'), source('celex:32024R1689/oj#art_65').
:- pred empowered_for_consistency/1, gloss('representative empowered to facilitate consistency'), source('celex:32024R1689/oj#art_65').
:- pred must_adopt_rules_of_procedure/2, gloss('representatives must adopt rules of procedure'), source('celex:32024R1689/oj#art_65').
:- pred two_thirds_majority/1, gloss('adoption by two-thirds majority'), source('celex:32024R1689/oj#art_65').
:- pred rules_of_procedure/1, gloss('Board rules of procedure'), source('celex:32024R1689/oj#art_65').
:- pred must_establish_standing_subgroups/1, gloss('Board must establish standing sub-groups'), source('celex:32024R1689/oj#art_65').
:- pred standing_subgroup_for_market_surveillance/1, gloss('sub-group for market surveillance authorities'), source('celex:32024R1689/oj#art_65').
:- pred standing_subgroup_for_notifying_authorities/1, gloss('sub-group for notifying authorities'), source('celex:32024R1689/oj#art_65').
:- pred acts_as_adco/1, gloss('sub-group acts as ADCO'), source('celex:32024R1689/oj#art_65').
:- pred may_establish_other_subgroups/1, gloss('Board may establish other sub-groups'), source('celex:32024R1689/oj#art_65').
:- pred must_be_organised_for_objectivity/1, gloss('Board must be organised to safeguard objectivity'), source('celex:32024R1689/oj#art_65').
:- pred chaired_by/1, gloss('Board chaired by a Member State representative'), source('celex:32024R1689/oj#art_65').
:- pred must_provide_secretariat/2, gloss('AI Office must provide secretariat for Board'), source('celex:32024R1689/oj#art_65').

board_established(european_artificial_intelligence_board).

board_composed_of(european_artificial_intelligence_board, representative_per_member_state).

observer(european_data_protection_supervisor).

attends_without_vote(ai_office).

may_be_invited(Entity) :-
    (   national_competent_authority(Entity)
    ;   union_authority(Entity)
    ;   union_body(Entity)
    ;   expert(Entity)
    ),
    issues_discussed_relevant(Entity).

designated_representative(Representative, MemberState) :-
    representative(Representative),
    member_state(MemberState).

designation_period(Representative, period(years(3), renewable(once))) :-
    designated_representative(Representative, _).

must_ensure(MemberState, Representative) :-
    designated_representative(Representative, MemberState).

has_relevant_competences(Representative) :-
    designated_representative(Representative, MemberState),
    competences_and_powers_in(Representative, MemberState),
    contributes_to_board_tasks(Representative).

single_contact_point(Representative) :-
    designated_representative(Representative, _),
    contact_point_for_board(Representative),
    contact_point_for_stakeholders(Representative).

empowered_for_consistency(Representative) :-
    designated_representative(Representative, MemberState),
    facilitates_consistency(Representative, MemberState),
    collects_relevant_data(Representative).

must_adopt_rules_of_procedure(Representatives, rules_of_procedure) :-
    designated_representatives_of_member_states(Representatives),
    two_thirds_majority(Representatives).

must_establish_standing_subgroups(european_artificial_intelligence_board) :-
    standing_subgroup_for_market_surveillance(subgroup(market_surveillance)),
    standing_subgroup_for_notifying_authorities(subgroup(notifying_authorities)).

standing_subgroup_for_market_surveillance(Subgroup) :-
    platform_for_cooperation(Subgroup, market_surveillance_authority).

standing_subgroup_for_notifying_authorities(Subgroup) :-
    platform_for_cooperation(Subgroup, notifying_authority).

acts_as_adco(Subgroup) :-
    standing_subgroup_for_market_surveillance(Subgroup).

may_establish_other_subgroups(european_artificial_intelligence_board) :-
    specific_issues_examined.

must_be_organised_for_objectivity(european_artificial_intelligence_board) :-
    safeguards_objectivity,
    safeguards_impartiality.

chaired_by(representative_of_member_state).

must_provide_secretariat(ai_office, european_artificial_intelligence_board) :-
    convenes_meetings(ai_office),
    prepares_agenda(ai_office).

provenance(board_established/1, 'celex:32024R1689/oj#art_65').
provenance(board_composed_of/2, 'celex:32024R1689/oj#art_65').
provenance(observer/1, 'celex:32024R1689/oj#art_65').
provenance(attends_without_vote/1, 'celex:32024R1689/oj#art_65').
provenance(may_be_invited/1, 'celex:32024R1689/oj#art_65').
provenance(designated_representative/2, 'celex:32024R1689/oj#art_65').
provenance(designation_period/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(has_relevant_competences/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_for_consistency/1, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish_standing_subgroups/1, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup_for_market_surveillance/1, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup_for_notifying_authorities/1, 'celex:32024R1689/oj#art_65').
provenance(acts_as_adco/1, 'celex:32024R1689/oj#art_65').
provenance(may_establish_other_subgroups/1, 'celex:32024R1689/oj#art_65').
provenance(must_be_organised_for_objectivity/1, 'celex:32024R1689/oj#art_65').
provenance(chaired_by/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
