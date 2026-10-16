% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : b21ad2b7b284e9dc9335fb7b9a85a0559cf6a4ca2c0d20ae7ae90f01951dfd8e
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred member_of_advisory_forum/1, gloss('member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred co_chair_of_advisory_forum/1, gloss('co-chair of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member_of_advisory_forum/1, gloss('permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred sub_group_of_advisory_forum/1, gloss('sub-group established by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred annual_report_of_advisory_forum/1, gloss('annual report prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').

advisory_forum(advisory_forum).

must_provide_technical_expertise(advisory_forum, board_and_commission).
must_provide_technical_expertise(advisory_forum, tasks_under_regulation).

must_contribute_to_tasks(advisory_forum, board).
must_contribute_to_tasks(advisory_forum, commission).

balanced_membership(advisory_forum) :-
    represents_stakeholders(advisory_forum, industry),
    represents_stakeholders(advisory_forum, start_ups),
    represents_stakeholders(advisory_forum, smes),
    represents_stakeholders(advisory_forum, civil_society),
    represents_stakeholders(advisory_forum, academia).

balanced_commercial_interests(advisory_forum) :-
    commercial_interests_represented(advisory_forum),
    non_commercial_interests_represented(advisory_forum).

balanced_sme_interests(advisory_forum) :-
    commercial_interests_represented(advisory_forum),
    smes_represented(advisory_forum),
    other_undertakings_represented(advisory_forum).

must_appoint(commission, member_of_advisory_forum(M)) :-
    stakeholder(M),
    recognised_expertise(M, field_of_ai).

term_of_office(member_of_advisory_forum(M), years(2)) :-
    member_of_advisory_forum(M).

may_extend_term(member_of_advisory_forum(M), years(Extension)) :-
    member_of_advisory_forum(M),
    Extension =< 4.

permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).

must_draw_up(advisory_forum, rules_of_procedure(advisory_forum)).

must_elect(advisory_forum, co_chair_of_advisory_forum(C)) :-
    member_of_advisory_forum(C),
    balanced_membership(advisory_forum).

term_of_office(co_chair_of_advisory_forum(C), years(2)) :-
    co_chair_of_advisory_forum(C).

renewable_once(co_chair_of_advisory_forum(C)) :-
    co_chair_of_advisory_forum(C).

must_hold_meetings(advisory_forum, at_least(twice_per_year)).

may_invite(advisory_forum, expert(E)) :-
    expert(E).

may_invite(advisory_forum, stakeholder(S)) :-
    stakeholder(S).

may_prepare(advisory_forum, opinion(O)) :-
    requested_by_board_or_commission(advisory_forum).

may_prepare(advisory_forum, recommendation(R)) :-
    requested_by_board_or_commission(advisory_forum).

may_prepare(advisory_forum, written_contribution(W)) :-
    requested_by_board_or_commission(advisory_forum).

requested_by_board_or_commission(advisory_forum) :-
    requested_by(board, advisory_forum).
requested_by_board_or_commission(advisory_forum) :-
    requested_by(commission, advisory_forum).

may_establish(advisory_forum, sub_group_of_advisory_forum(G)) :-
    appropriate_for_examining_questions(G),
    related_to_objectives(G, regulation).

must_prepare(advisory_forum, annual_report_of_advisory_forum(R)) :-
    annual_report_of_advisory_forum(R).

must_make_publicly_available(advisory_forum, annual_report_of_advisory_forum(R)) :-
    annual_report_of_advisory_forum(R).

provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_provide_technical_expertise/2, 'celex:32024R1689/oj#art_67').
provenance(must_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_commercial_interests/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_sme_interests/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(may_extend_term/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite/2, 'celex:32024R1689/oj#art_67').
provenance(may_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(requested_by_board_or_commission/1, 'celex:32024R1689/oj#art_67').
provenance(may_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
references('celex:32024R1689/oj#art_67/par_2', 'celex:32024R1689/oj#art_67/par_2').
