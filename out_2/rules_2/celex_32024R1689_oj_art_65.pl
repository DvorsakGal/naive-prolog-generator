% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : b82e480b8c5e6f46394a937ceac27f2d77fa4c4af4c7bd20a6221315bd04570d
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_65').
:- pred representative/1, gloss('Member State representative on the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_designate/2, gloss('Member State must designate a representative for the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure/2, gloss('Member State must ensure a property of its representative'), source('celex:32024R1689/oj#art_65').
:- pred must_adopt/2, gloss('Board representatives must adopt the rules of procedure'), source('celex:32024R1689/oj#art_65').
:- pred board_representatives/1, gloss('Representatives of Member States on the Board'), source('celex:32024R1689/oj#art_65').
:- pred required_chair/1, gloss('Board must be chaired by a Member State representative'), source('celex:32024R1689/oj#art_65').
:- pred must_provide_secretariat/2, gloss('AI Office must provide secretariat for the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_convene_meetings/2, gloss('AI Office must convene Board meetings upon request of the Chair'), source('celex:32024R1689/oj#art_65').
:- pred must_prepare_agenda/2, gloss('AI Office must prepare the agenda for Board meetings'), source('celex:32024R1689/oj#art_65').
:- pred required_composition/1, gloss('Board must be composed as set out in the Regulation'), source('celex:32024R1689/oj#art_65').
:- pred established/1, gloss('Entity is established'), source('celex:32024R1689/oj#art_65').
:- pred permitted_establish_other_subgroup/1, gloss('Board may establish other standing or temporary sub‑groups'), source('celex:32024R1689/oj#art_65').
:- pred objective_objectivity_and_impartiality/1, gloss('Board must safeguard objectivity and impartiality'), source('celex:32024R1689/oj#art_65').

% Facts
board(board).
established(board).
required_composition(board).
required_chair(board).
must_provide_secretariat(ai_office, board).
must_convene_meetings(ai_office, board).
must_prepare_agenda(ai_office, board).
objective_objectivity_and_impartiality(board).
permitted_establish_other_subgroup(board).

% Representative placeholder (any term can be a representative)
representative(_).

% Board representatives are the representatives
board_representatives(R) :-
    representative(R).

% Member State must designate a representative for a period of three years, renewable once
must_designate(MemberState, designation(Representative, term(years(3), renewable_once))) :-
    member_state(MemberState),
    representative(Representative).

% Member State must ensure its representative has the relevant competences and powers
must_ensure(MemberState, representative_has_competences(Representative)) :-
    member_state(MemberState),
    representative(Representative).

% Member State must ensure its representative is designated as a single contact point
must_ensure(MemberState, representative_is_contact_point(Representative)) :-
    member_state(MemberState),
    representative(Representative).

% Member State must ensure its representative is empowered to facilitate consistency and coordination
must_ensure(MemberState, representative_empowered_for_coordination(Representative)) :-
    member_state(MemberState),
    representative(Representative).

% Board representatives must adopt the Board’s rules of procedure by a two‑thirds majority
must_adopt(board_representatives, adoption(rules_of_procedure, condition(two_thirds_majority))) :-
    board_representatives(_).

% Provenance
provenance(board/1, 'celex:32024R1689/oj#art_65').
provenance(representative/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(board_representatives/1, 'celex:32024R1689/oj#art_65').
provenance(required_chair/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').
provenance(required_composition/1, 'celex:32024R1689/oj#art_65').
provenance(established/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_establish_other_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(objective_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').

% References
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
