% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d490d7944cf2d211931083da46668616cca67cff564298ea289dca50ad162aee
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member_of_advisory_forum/1, gloss('permanent member organization of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred eligible_advisory_forum_member/1, gloss('stakeholder eligible to be appointed to the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_appoint(Actor, Object), gloss('duty of Actor to appoint Object'), source('celex:32024R1689/oj#art_67').
:- pred must_draw_up(Actor, Object), gloss('duty of Actor to draw up Object'), source('celex:32024R1689/oj#art_67').
:- pred must_elect(Actor, Object), gloss('duty of Actor to elect Object'), source('celex:32024R1689/oj#art_67').
:- pred must_hold(Actor, Object), gloss('duty of Actor to hold Object'), source('celex:32024R1689/oj#art_67').
:- pred must_prepare(Actor, Object), gloss('duty of Actor to prepare Object'), source('celex:32024R1689/oj#art_67').
:- pred must_make_publicly_available(Actor, Object), gloss('duty of Actor to make Object publicly available'), source('celex:32024R1689/oj#art_67').
:- pred permitted_extension_period(Member, Duration), gloss('permitted extension of term of office for a member'), source('celex:32024R1689/oj#art_67').
:- pred term_of_office(Actor, Duration), gloss('standard term of office for an Actor'), source('celex:32024R1689/oj#art_67').
:- pred permitted_invite(Actor, Stakeholder), gloss('permission for Actor to invite Stakeholder'), source('celex:32024R1689/oj#art_67').
:- pred permitted_prepare(Actor, Work), gloss('permission for Actor to prepare opinions or contributions'), source('celex:32024R1689/oj#art_67').
:- pred permitted_establish(Actor, Group), gloss('permission for Actor to establish subgroups'), source('celex:32024R1689/oj#art_67').
:- pred stakeholder_with_recognised_expertise_in_ai/1, gloss('stakeholder having recognised expertise in AI'), source('celex:32024R1689/oj#art_67').
:- pred balanced_selection_of_stakeholders/1, gloss('selection representing balanced stakeholder interests'), source('celex:32024R1689/oj#art_67').

% Paragraph 1: Advisory forum establishment
advisory_forum(advisory_forum).

% Paragraph 2 & 3: Appointment and eligibility of members
eligible_advisory_forum_member(M) :-
    stakeholder_with_recognised_expertise_in_ai(M).

must_appoint(commission, members_of_advisory_forum) :-
    balanced_selection_of_stakeholders(members_of_advisory_forum).

% Paragraph 4: Term of office of members
term_of_office(member_of_advisory_forum, years(2)).

permitted_extension_period(member_of_advisory_forum, years(N)) :-
    N =< 4.

% Paragraph 5: Permanent members
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).

% Paragraph 6: Rules of procedure and co-chairs
must_draw_up(advisory_forum, rules_of_procedure).

must_elect(advisory_forum, two_co_chairs) :-
    balanced_selection_of_stakeholders(two_co_chairs).

term_of_office(co_chair_of_advisory_forum, years(2)).

permitted_extension_period(co_chair_of_advisory_forum, renewable_once).

% Paragraph 7: Meetings and invitations
must_hold(advisory_forum, meetings(at_least_per_year(2))).

permitted_invite(advisory_forum, experts_and_stakeholders).

% Paragraph 8: Opinions and recommendations
permitted_prepare(advisory_forum, opinions_recommendations_and_contributions(requested_by(commission))).
permitted_prepare(advisory_forum, opinions_recommendations_and_contributions(requested_by(board))).

% Paragraph 9: Sub-groups
permitted_establish(advisory_forum, sub_groups(examining_specific_questions)).

% Paragraph 10: Annual report
must_prepare(advisory_forum, annual_activity_report).
must_make_publicly_available(advisory_forum, annual_activity_report).

% Provenance
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(eligible_advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_extension_period/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').

% References
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
