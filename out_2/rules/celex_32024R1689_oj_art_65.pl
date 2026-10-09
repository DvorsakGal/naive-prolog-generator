% unit       : celex:32024R1689/oj#art_65
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 54d29b2358873ba5cccf09fbec26bdec0e16c277269368c5b75eb80245330bda
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : db00fff2ab8c8f72f6de64a2c215fba3e576f921e07f77e4b3b2845b519e7c4a
% cached     : False
% title      : Establishment and structure of the European Artificial Intelligence Board
:- pred required_board/1, gloss('European Artificial Intelligence Board is established'), source('celex:32024R1689/oj#art_65').
:- pred representative/1, gloss('Member State representative on the Board'), source('celex:32024R1689/oj#art_65').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_65').
:- pred designated_representative/2, gloss('Representative designated by a Member State'), source('celex:32024R1689/oj#art_65').
:- pred relevant_competences/1, gloss('Representative has relevant competences and powers'), source('celex:32024R1689/oj#art_65').
:- pred contact_point/1, gloss('Representative acts as single contact point'), source('celex:32024R1689/oj#art_65').
:- pred empowered_for_coordination/1, gloss('Representative empowered to facilitate consistency and coordination'), source('celex:32024R1689/oj#art_65').
:- pred must_designate/2, gloss('Member State must designate a representative for a period'), source('celex:32024R1689/oj#art_65').
:- pred must_ensure/2, gloss('Member State must ensure attributes of its representative'), source('celex:32024R1689/oj#art_65').
:- pred must_adopt/2, gloss('Board must adopt its rules of procedure by two‑thirds majority'), source('celex:32024R1689/oj#art_65').
:- pred must_establish/2, gloss('Board must establish standing sub‑groups'), source('celex:32024R1689/oj#art_65').
:- pred must_safeguard/2, gloss('Board must safeguard objectivity and impartiality'), source('celex:32024R1689/oj#art_65').
:- pred must_appoint_chair/2, gloss('Board must be chaired by a Member State representative'), source('celex:32024R1689/oj#art_65').
:- pred must_provide_secretariat/2, gloss('AI Office must provide secretariat for the Board'), source('celex:32024R1689/oj#art_65').
:- pred must_convene_meetings/2, gloss('AI Office must convene Board meetings upon request of the Chair'), source('celex:32024R1689/oj#art_65').
:- pred must_prepare_agenda/2, gloss('AI Office must prepare the Board agenda in accordance with its tasks'), source('celex:32024R1689/oj#art_65').

% Facts
required_board(board).

% Duties on Member States
must_designate(MemberState, representative(Representative, period(years(3), renewable_once))) :-
    member_state(MemberState),
    representative(Representative),
    designated_representative(MemberState, Representative).

must_ensure(MemberState, representative_has_relevant_competences(Representative)) :-
    designated_representative(MemberState, Representative),
    relevant_competences(Representative).

must_ensure(MemberState, representative_is_contact_point(Representative)) :-
    designated_representative(MemberState, Representative),
    contact_point(Representative).

must_ensure(MemberState, representative_empowered_for_coordination(Representative)) :-
    designated_representative(MemberState, Representative),
    empowered_for_coordination(Representative).

% Duty of the Board to adopt its rules of procedure
must_adopt(Board, rules_of_procedure(majority(two_thirds))) :-
    required_board(Board).

% Duties of the Board to establish standing sub‑groups
must_establish(Board, standing_sub_group(market_surveillance)) :-
    required_board(Board).

must_establish(Board, standing_sub_group(notifying_authorities)) :-
    required_board(Board).

% Duty to safeguard objectivity and impartiality
must_safeguard(Board, objectivity) :-
    required_board(Board).

must_safeguard(Board, impartiality) :-
    required_board(Board).

% Duty to appoint a Chair from the representatives
must_appoint_chair(Board, Representative) :-
    required_board(Board),
    designated_representative(_, Representative).

% Duties of the AI Office
must_provide_secretariat(AIOffice, Board) :-
    ai_office(AIOffice),
    required_board(Board).

must_convene_meetings(AIOffice, Board) :-
    ai_office(AIOffice),
    required_board(Board).

must_prepare_agenda(AIOffice, Board) :-
    ai_office(AIOffice),
    required_board(Board).

% Provenance
provenance(required_board/1, 'celex:32024R1689/oj#art_65').
provenance(representative/1, 'celex:32024R1689/oj#art_65').
provenance(member_state/1, 'celex:32024R1689/oj#art_65').
provenance(designated_representative/2, 'celex:32024R1689/oj#art_65').
provenance(relevant_competences/1, 'celex:32024R1689/oj#art_65').
provenance(contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_for_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_65').
provenance(must_appoint_chair/2, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').

% References
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').
