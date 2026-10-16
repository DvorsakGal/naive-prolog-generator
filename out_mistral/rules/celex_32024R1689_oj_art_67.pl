% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4295c2e3bc882b6916674f0d792e2fb1609da961326f754bbf5ecb322edb5b22
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('forum providing technical expertise and advice to the Board and the Commission'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_member/1, gloss('member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred permanent_advisory_forum_member/1, gloss('permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_co_chair/1, gloss('co-chair of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred balanced_stakeholder_representation/1, gloss('balanced selection of stakeholders in the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred recognised_ai_expertise/1, gloss('recognised expertise in the field of AI'), source('celex:32024R1689/oj#art_67').
:- pred term_of_office/2, gloss('term of office for a member or co-chair'), source('celex:32024R1689/oj#art_67').
:- pred rules_of_procedure/1, gloss('rules of procedure drawn up by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred annual_report/1, gloss('annual report on advisory forum activities'), source('celex:32024R1689/oj#art_67').
:- pred publicly_available/1, gloss('document made publicly available'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_meeting/1, gloss('meeting of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_opinion/1, gloss('opinion prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_recommendation/1, gloss('recommendation prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_written_contribution/1, gloss('written contribution prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_sub_group/1, gloss('standing or temporary sub-group of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred stakeholder_category/1, gloss('category of stakeholder represented in the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred commercial_interest/1, gloss('commercial interest category'), source('celex:32024R1689/oj#art_67').
:- pred non_commercial_interest/1, gloss('non-commercial interest category'), source('celex:32024R1689/oj#art_67').
:- pred sme/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_67').
:- pred other_undertaking/1, gloss('undertaking other than an SME'), source('celex:32024R1689/oj#art_67').

advisory_forum(forum).

must_establish(advisory_forum, forum).

balanced_stakeholder_representation(forum) :-
    advisory_forum(forum),
    stakeholder_category(industry),
    stakeholder_category(start_up),
    stakeholder_category(sme),
    stakeholder_category(civil_society),
    stakeholder_category(academia).

stakeholder_category(industry).
stakeholder_category(start_up).
stakeholder_category(sme).
stakeholder_category(civil_society).
stakeholder_category(academia).

balanced_stakeholder_representation(forum) :-
    advisory_forum(forum),
    commercial_interest(C),
    non_commercial_interest(N),
    balanced(C, N).

commercial_interest(C) :-
    sme(C).
commercial_interest(C) :-
    other_undertaking(C).

balanced(commercial, non_commercial).

must_appoint(commission, member(advisory_forum, M)) :-
    advisory_forum_member(M),
    recognised_ai_expertise(M).

advisory_forum_member(M) :-
    recognised_ai_expertise(M).

term_of_office(member(advisory_forum, M), years(2)) :-
    advisory_forum_member(M).

term_of_office(member(advisory_forum, M), years(N)) :-
    advisory_forum_member(M),
    N =< 4.

permanent_advisory_forum_member(fundamental_rights_agency).
permanent_advisory_forum_member(enisa).
permanent_advisory_forum_member(cen).
permanent_advisory_forum_member(cenelec).
permanent_advisory_forum_member(etsi).

permanent_advisory_forum_member(M) :-
    advisory_forum_member(M),
    member_type(permanent, M).

must_draw_up(advisory_forum, rules_of_procedure(forum)).

must_elect(advisory_forum, co_chair(forum, C)) :-
    advisory_forum_co_chair(C).

advisory_forum_co_chair(C) :-
    advisory_forum_member(C).

term_of_office(co_chair(forum, C), years(2)) :-
    advisory_forum_co_chair(C).

renewable_once(co_chair(forum, C)) :-
    advisory_forum_co_chair(C).

must_hold_meeting(advisory_forum, meeting(forum, N)) :-
    N >= 2,
    period(years(1)).

may_invite(advisory_forum, expert(E)) :-
    advisory_forum_meeting(M).

may_prepare(advisory_forum, opinion(forum, O)) :-
    requested_by(board, O).
may_prepare(advisory_forum, opinion(forum, O)) :-
    requested_by(commission, O).

may_prepare(advisory_forum, recommendation(forum, R)) :-
    requested_by(board, R).
may_prepare(advisory_forum, recommendation(forum, R)) :-
    requested_by(commission, R).

may_prepare(advisory_forum, written_contribution(forum, W)) :-
    requested_by(board, W).
may_prepare(advisory_forum, written_contribution(forum, W)) :-
    requested_by(commission, W).

may_establish(advisory_forum, sub_group(forum, standing, SG)).
may_establish(advisory_forum, sub_group(forum, temporary, SG)).

advisory_forum_sub_group(SG) :-
    sub_group(forum, standing, SG).
advisory_forum_sub_group(SG) :-
    sub_group(forum, temporary, SG).

must_prepare(advisory_forum, annual_report(forum, activities)).

publicly_available(annual_report(forum, activities)) :-
    annual_report(forum, activities).

provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_co_chair/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_stakeholder_representation/1, 'celex:32024R1689/oj#art_67').
provenance(recognised_ai_expertise/1, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_meeting/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_opinion/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_recommendation/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_written_contribution/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_sub_group/1, 'celex:32024R1689/oj#art_67').
provenance(stakeholder_category/1, 'celex:32024R1689/oj#art_67').
provenance(commercial_interest/1, 'celex:32024R1689/oj#art_67').
provenance(non_commercial_interest/1, 'celex:32024R1689/oj#art_67').
provenance(sme/1, 'celex:32024R1689/oj#art_67').
provenance(other_undertaking/1, 'celex:32024R1689/oj#art_67').
provenance(must_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meeting/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite/2, 'celex:32024R1689/oj#art_67').
provenance(may_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(may_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
