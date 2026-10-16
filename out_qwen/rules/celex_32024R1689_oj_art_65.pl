% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1590509cb98b1076ef91025b1ac3981e247520dff5bf2c865eb7eec4f5f3ecf7
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred european_ai_board/1, gloss('the European Artificial Intelligence Board established by Article 65'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/2, gloss('representative designated by a Member State to the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_designate_representative/2, gloss('Member State obligation to designate a representative to the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure_representative_competence/2, gloss('Member State obligation regarding representative competence'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure_single_contact_point/2, gloss('Member State obligation regarding single contact point designation'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure_coordination_empowerment/2, gloss('Member State obligation to empower representative for coordination'), source('celex:32024R1689/oj#art_65').
:- pred must_adopt_rules_of_procedure/1, gloss('obligation of representatives to adopt Board rules of procedure'), source('celex:32024R1689/oj#art_65').
:- pred must_establish_standing_subgroup/2, gloss('Board obligation to establish specific standing sub-groups'), source('celex:32024R1689/oj#art_65').
:- pred must_safeguard_objectivity_and_impartiality/1, gloss('Board obligation regarding organisation and operation'), source('celex:32024R1689/oj#art_65').
:- pred must_chair_board/2, gloss('obligation that the Board be chaired by a Member State representative'), source('celex:32024R1689/oj#art_65').
:- pred must_provide_secretariat/2, gloss('AI Office obligation to provide secretariat for the Board'), source('celex:32024R1689/oj#art_65').

european_ai_board(board).

provenance(european_ai_board/1, 'celex:32024R1689/oj#art_65').

must_designate_representative(MemberState, Representative) :-
    board_representative(Representative, MemberState).

provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').

must_ensure_representative_competence(MemberState, Representative) :-
    board_representative(Representative, MemberState),
    relevant_competences_and_powers(Representative, MemberState).

relevant_competences_and_powers(_Representative, _MemberState).

provenance(must_ensure_representative_competence/2, 'celex:32024R1689/oj#art_65').

must_ensure_single_contact_point(MemberState, Representative) :-
    board_representative(Representative, MemberState),
    designated_as_single_contact_point(Representative).

designated_as_single_contact_point(_Representative).

provenance(must_ensure_single_contact_point/2, 'celex:32024R1689/oj#art_65').

must_ensure_coordination_empowerment(MemberState, Representative) :-
    board_representative(Representative, MemberState),
    empowered_to_facilitate_consistency(Representative, MemberState).

empowered_to_facilitate_consistency(_Representative, _MemberState).

provenance(must_ensure_coordination_empowerment/2, 'celex:32024R1689/oj#art_65').

must_adopt_rules_of_procedure(Representatives) :-
    european_ai_board(_Board),
    designated_representatives(Representatives).

designated_representatives(_Representatives).

provenance(must_adopt_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').

must_establish_standing_subgroup(Board, market_surveillance_authorities) :-
    european_ai_board(Board).

must_establish_standing_subgroup(Board, notifying_authorities) :-
    european_ai_board(Board).

provenance(must_establish_standing_subgroup/2, 'celex:32024R1689/oj#art_65').

must_safeguard_objectivity_and_impartiality(Board) :-
    european_ai_board(Board).

provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').

must_chair_board(Board, Representative) :-
    european_ai_board(Board),
    board_representative(Representative, _MemberState).

provenance(must_chair_board/2, 'celex:32024R1689/oj#art_65').

must_provide_secretariat(AIOffice, Board) :-
    ai_office(AIOffice),
    european_ai_board(Board).

provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
