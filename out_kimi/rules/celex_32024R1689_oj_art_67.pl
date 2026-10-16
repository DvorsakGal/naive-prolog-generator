% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ec09467fd453b9f18242502872628fa6a6dfc3c6e901e0c0703221aac22fdf90
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory body for AI governance'), source('celex:32024R1689/oj#art_67').
:- pred member_of_advisory_forum/2, gloss('entity is a member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member_of_advisory_forum/2, gloss('entity is a permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred co_chair_of_advisory_forum/2, gloss('entity is a co-chair of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred term_of_office/2, gloss('duration of membership in the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred term_of_office_co_chair/2, gloss('duration of co-chair office in the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred meeting_of_advisory_forum/1, gloss('meeting held by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred opinion_of_advisory_forum/1, gloss('opinion prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred recommendation_of_advisory_forum/1, gloss('recommendation prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred written_contribution_of_advisory_forum/1, gloss('written contribution prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred sub_group_of_advisory_forum/1, gloss('sub-group established by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred annual_report_of_advisory_forum/1, gloss('annual report prepared by the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred stakeholder/1, gloss('entity with interest in AI governance'), source('celex:32024R1689/oj#art_67').
:- pred industry/1, gloss('commercial AI industry'), source('celex:32024R1689/oj#art_67').
:- pred start_up/1, gloss('newly established business'), source('celex:32024R1689/oj#art_67').
:- pred sme/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_67').
:- pred civil_society/1, gloss('non-governmental organisations and civic groups'), source('celex:32024R1689/oj#art_67').
:- pred academia/1, gloss('academic institutions and researchers'), source('celex:32024R1689/oj#art_67').
:- pred recognised_expertise_in_ai/1, gloss('recognised expertise in the field of AI'), source('celex:32024R1689/oj#art_67').
:- pred rules_of_procedure/1, gloss('rules governing the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred publicly_available/1, gloss('made accessible to the public'), source('celex:32024R1689/oj#art_67').
:- pred renewable_once/1, gloss('may be renewed one time'), source('celex:32024R1689/oj#art_67').
:- pred standing_sub_group/1, gloss('permanent sub-group'), source('celex:32024R1689/oj#art_67').
:- pred temporary_sub_group/1, gloss('temporary sub-group'), source('celex:32024R1689/oj#art_67').

% Article 67(1): Advisory forum established to provide technical expertise and advise
established(advisory_forum).
objective_provide_technical_expertise(advisory_forum).
objective_advise(advisory_forum, board).
objective_advise(advisory_forum, commission).
objective_contribute_to_tasks(advisory_forum, board).
objective_contribute_to_tasks(advisory_forum, commission).

% Article 67(2): Membership represents balanced selection of stakeholders
required_membership_representation(advisory_forum) :-
    advisory_forum(advisory_forum),
    member_of_advisory_forum(M, advisory_forum),
    stakeholder(M),
    balanced_selection(stakeholder).

balanced_selection(stakeholder) :-
    member_of_advisory_forum(M1, advisory_forum),
    industry(M1).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M2, advisory_forum),
    start_up(M2).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M3, advisory_forum),
    sme(M3).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M4, advisory_forum),
    civil_society(M4).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M5, advisory_forum),
    academia(M5).

required_commercial_non_commercial_balance(advisory_forum) :-
    advisory_forum(advisory_forum).

required_sme_balance(advisory_forum) :-
    advisory_forum(advisory_forum),
    member_of_advisory_forum(M1, advisory_forum),
    sme(M1),
    member_of_advisory_forum(M2, advisory_forum),
    \+ sme(M2),
    commercial_interest(M1),
    commercial_interest(M2).

commercial_interest(M) :-
    industry(M).
commercial_interest(M) :-
    start_up(M).
commercial_interest(M) :-
    sme(M).

% Article 67(3): Commission appoints members with recognised expertise in AI
must_appoint(commission, member_of_advisory_forum(M, advisory_forum)) :-
    commission(commission),
    stakeholder(M),
    recognised_expertise_in_ai(M).

% Article 67(4): Term of office is two years, extendable by up to four years
term_of_office(M, years(2)) :-
    member_of_advisory_forum(M, advisory_forum).

permitted_extension(term_of_office(M), years(E)) :-
    member_of_advisory_forum(M, advisory_forum),
    E =< 4.

% Article 67(5): Permanent members
permanent_member_of_advisory_forum(fundamental_rights_agency, advisory_forum).
permanent_member_of_advisory_forum(enisa, advisory_forum).
permanent_member_of_advisory_forum(cen, advisory_forum).
permanent_member_of_advisory_forum(cenelec, advisory_forum).
permanent_member_of_advisory_forum(etsi, advisory_forum).

% Article 67(6): Rules of procedure, two co-chairs, term two years renewable once
must_draw_up(advisory_forum, rules_of_procedure(advisory_forum)).

must_elect(advisory_forum, co_chair_of_advisory_forum(C, advisory_forum)) :-
    member_of_advisory_forum(C, advisory_forum),
    criteria_par_2(C).

term_of_office_co_chair(C, years(2)) :-
    co_chair_of_advisory_forum(C, advisory_forum).

renewable_once(co_chair_of_advisory_forum(C, advisory_forum)) :-
    co_chair_of_advisory_forum(C, advisory_forum).

% Article 67(7): Meetings at least twice a year, may invite experts and stakeholders
required_meeting_frequency(advisory_forum, per_year(2)).

permitted_invite(advisory_forum, expert(E)) :-
    meeting_of_advisory_forum(Meeting),
    advisory_forum(advisory_forum).

permitted_invite(advisory_forum, stakeholder(S)) :-
    meeting_of_advisory_forum(Meeting),
    advisory_forum(advisory_forum).

% Article 67(8): May prepare opinions, recommendations, written contributions at request of Board or Commission
permitted_prepare(advisory_forum, opinion_of_advisory_forum(O)) :-
    request(board, O).
permitted_prepare(advisory_forum, opinion_of_advisory_forum(O)) :-
    request(commission, O).

permitted_prepare(advisory_forum, recommendation_of_advisory_forum(R)) :-
    request(board, R).
permitted_prepare(advisory_forum, recommendation_of_advisory_forum(R)) :-
    request(commission, R).

permitted_prepare(advisory_forum, written_contribution_of_advisory_forum(W)) :-
    request(board, W).
permitted_prepare(advisory_forum, written_contribution_of_advisory_forum(W)) :-
    request(commission, W).

% Article 67(9): May establish standing or temporary sub-groups
permitted_establish(advisory_forum, standing_sub_group(SG)) :-
    purpose_examine_specific_questions(SG, objectives('celex:32024R1689/oj')).

permitted_establish(advisory_forum, temporary_sub_group(SG)) :-
    purpose_examine_specific_questions(SG, objectives('celex:32024R1689/oj')).

% Article 67(10): Shall prepare annual report, publicly available
must_prepare(advisory_forum, annual_report_of_advisory_forum(R)) :-
    advisory_forum(advisory_forum),
    annual(R).

must_make_publicly_available(advisory_forum, annual_report_of_advisory_forum(R)) :-
    annual_report_of_advisory_forum(R).

% Provenance
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(member_of_advisory_forum/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/2, 'celex:32024R1689/oj#art_67').
provenance(co_chair_of_advisory_forum/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office_co_chair/2, 'celex:32024R1689/oj#art_67').
provenance(meeting_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(opinion_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(recommendation_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(written_contribution_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(sub_group_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(stakeholder/1, 'celex:32024R1689/oj#art_67').
provenance(industry/1, 'celex:32024R1689/oj#art_67').
provenance(start_up/1, 'celex:32024R1689/oj#art_67').
provenance(sme/1, 'celex:32024R1689/oj#art_67').
provenance(civil_society/1, 'celex:32024R1689/oj#art_67').
provenance(academia/1, 'celex:32024R1689/oj#art_67').
provenance(recognised_expertise_in_ai/1, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_67').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(standing_sub_group/1, 'celex:32024R1689/oj#art_67').
provenance(temporary_sub_group/1, 'celex:32024R1689/oj#art_67').
provenance(established/1, 'celex:32024R1689/oj#art_67').
provenance(objective_provide_technical_expertise/1, 'celex:32024R1689/oj#art_67').
provenance(objective_advise/2, 'celex:32024R1689/oj#art_67').
provenance(objective_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(required_membership_representation/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_selection/1, 'celex:32024R1689/oj#art_67').
provenance(required_commercial_non_commercial_balance/1, 'celex:32024R1689/oj#art_67').
provenance(required_sme_balance/1, 'celex:32024R1689/oj#art_67').
provenance(commercial_interest/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(required_meeting_frequency/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').

% References
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
