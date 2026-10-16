% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 3236984d568c3a81d072cced327da6a6f72ef07bce7f4a42f73c3219a1ded903
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred european_ai_board/1, gloss('the European Artificial Intelligence Board established by Article 65'), source('celex:32024R1689/oj#art_65').
:- pred board_representative/2, gloss('representative of a Member State on the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_designate_representative/2, gloss('Member State must designate a representative to the Board'), source('celex:32024R1689/oj#art_65').
:- pred representative_term/2, gloss('term of office for a Board representative'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure_representative_competence/2, gloss('Member State must ensure representative has relevant competences and powers'), source('celex:32024R1689/oj#art_65').
:- pred must_designate_single_contact_point_for_board/2, gloss('Member State must designate representative as single contact point vis-a-vis the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_empower_facilitation_of_consistency/2, gloss('Member State must empower representative to facilitate consistency between national authorities'), source('celex:32024R1689/oj#art_65').
:- pred must_adopt_rules_of_procedure/1, gloss('designated representatives must adopt Board rules of procedure by two-thirds majority'), source('celex:32024R1689/oj#art_65').
:- pred must_establish_standing_subgroup/2, gloss('Board must establish a standing sub-group for specified cooperation'), source('celex:32024R1689/oj#art_65').
:- pred must_provide_secretariat/2, gloss('AI Office must provide secretariat for the Board'), source('celex:32024R1689/oj#art_65').

european_ai_board(board).

must_designate_representative(MS, R) :-
    board_representative(R, MS).

representative_term(R, years(3)) :-
    board_representative(R, _MS).

must_ensure_representative_competence(MS, R) :-
    board_representative(R, MS).

must_designate_single_contact_point_for_board(MS, R) :-
    board_representative(R, MS).

must_empower_facilitation_of_consistency(MS, R) :-
    board_representative(R, MS).

must_adopt_rules_of_procedure(representatives) :-
    european_ai_board(_B).

must_establish_standing_subgroup(B, market_surveillance_authorities) :-
    european_ai_board(B).

must_establish_standing_subgroup(B, notifying_authorities) :-
    european_ai_board(B).

must_safeguard_impartiality(B) :-
    european_ai_board(B).

must_provide_secretariat(ai_office, B) :-
    european_ai_board(B).

provenance(european_ai_board/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').
provenance(representative_term/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_representative_competence/2, 'celex:32024R1689/oj#art_65').
provenance(must_designate_single_contact_point_for_board/2, 'celex:32024R1689/oj#art_65').
provenance(must_empower_facilitation_of_consistency/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(must_establish_standing_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').

references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
