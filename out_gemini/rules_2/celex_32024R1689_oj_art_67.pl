% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : f8f0782b8cf40d6644ec69b031266fa9e37cb54d9316f82b1c08fcbaef0f5c79
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member_of_advisory_forum/1, gloss('permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred permitted_extension_of_term/2, gloss('term of office permitted to be extended up to a specified maximum duration'), source('celex:32024R1689/oj#art_67').
:- pred permitted_renew/2, gloss('office or role permitted to be renewed a number of times'), source('celex:32024R1689/oj#art_67').
:- pred permitted_invite/2, gloss('entity is permitted to invite specific parties to its meetings'), source('celex:32024R1689/oj#art_67').
:- pred permitted_prepare_contribution/2, gloss('entity is permitted to prepare contributions at request'), source('celex:32024R1689/oj#art_67').
:- pred permitted_establish_subgroup/2, gloss('entity is permitted to establish standing or temporary sub-groups'), source('celex:32024R1689/oj#art_67').
:- pred must_appoint/2, gloss('actor must appoint specified entity or members'), source('celex:32024R1689/oj#art_67').
:- pred must_draw_up/2, gloss('actor must draw up a specified instrument'), source('celex:32024R1689/oj#art_67').
:- pred must_elect/2, gloss('actor must elect specified officers'), source('celex:32024R1689/oj#art_67').
:- pred must_hold_meetings/2, gloss('actor must hold meetings at specified minimum frequency'), source('celex:32024R1689/oj#art_67').
:- pred must_prepare/2, gloss('actor must prepare a specified document or deliverable'), source('celex:32024R1689/oj#art_67').
:- pred must_make_publicly_available/2, gloss('actor must make specified deliverable publicly available'), source('celex:32024R1689/oj#art_67').
:- pred required_term_of_office/2, gloss('office or role carries a specific standard term duration'), source('celex:32024R1689/oj#art_67').
:- pred stakeholder_with_recognised_expertise/1, gloss('stakeholder with recognised expertise in the field of AI'), source('celex:32024R1689/oj#art_67').
:- pred balanced_selection_criteria_met/1, gloss('selection meets balance criteria under Article 67(2)'), source('celex:32024R1689/oj#art_67').

% Paragraph 1: Advisory forum establishment and nature
advisory_forum(advisory_forum).

% Paragraph 3: Commission appoints the members from stakeholders with recognised expertise
must_appoint(Commission, members(advisory_forum)) :-
    commission(Commission),
    balanced_selection_criteria_met(advisory_forum).

% Paragraph 4: Term of office of members is two years, extendable by up to four years
required_term_of_office(members(advisory_forum), years(2)).
permitted_extension_of_term(members(advisory_forum), up_to(years(4))).

% Paragraph 5: Permanent members of the advisory forum
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).

% Paragraph 6: Rules of procedure and co-chairs
must_draw_up(advisory_forum, rules_of_procedure).
must_elect(advisory_forum, co_chairs(2)) :-
    balanced_selection_criteria_met(co_chairs).

required_term_of_office(co_chairs(advisory_forum), years(2)).
permitted_renew(co_chairs(advisory_forum), times(1)).

% Paragraph 7: Meetings at least twice a year and inviting experts/stakeholders
must_hold_meetings(advisory_forum, minimum_frequency(per_year(2))).
permitted_invite(advisory_forum, experts_and_other_stakeholders).

% Paragraph 8: Prepare opinions, recommendations and written contributions
permitted_prepare_contribution(advisory_forum, requested_by(board)).
permitted_prepare_contribution(advisory_forum, requested_by(Commission)) :-
    commission(Commission).

% Paragraph 9: Sub-groups
permitted_establish_subgroup(advisory_forum, standing).
permitted_establish_subgroup(advisory_forum, temporary).

% Paragraph 10: Annual report on activities and public availability
must_prepare(advisory_forum, annual_report_on_activities).
must_make_publicly_available(advisory_forum, annual_report_on_activities).

% Provenance
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_extension_of_term/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_renew/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_contribution/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish_subgroup/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').

% References
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
