% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : a9b12d988740ccc1884e4dd0d860abac0d74d0e918187833fb87c1351fd3cfd4
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established to provide technical expertise and advise the Board and the Commission'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_member/1, gloss('member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred permanent_advisory_forum_member/1, gloss('permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_co_chair/1, gloss('co-chair of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred balanced_stakeholder_representation/1, gloss('membership represents balanced selection of stakeholders'), source('celex:32024R1689/oj#art_67').
:- pred balanced_commercial_non_commercial/1, gloss('membership balanced with regard to commercial and non-commercial interests'), source('celex:32024R1689/oj#art_67').
:- pred balanced_sme_other_undertakings/1, gloss('within commercial interests, balanced with regard to SMEs and other undertakings'), source('celex:32024R1689/oj#art_67').
:- pred recognised_expertise_in_ai/1, gloss('stakeholder with recognised expertise in the field of AI'), source('celex:32024R1689/oj#art_67').
:- pred term_of_office_years/2, gloss('term of office of member in years'), source('celex:32024R1689/oj#art_67').
:- pred co_chair_term_years/2, gloss('term of office of co-chair in years'), source('celex:32024R1689/oj#art_67').
:- pred rules_of_procedure_drawn_up/1, gloss('advisory forum has drawn up its rules of procedure'), source('celex:32024R1689/oj#art_67').
:- pred meetings_held_per_year/2, gloss('advisory forum holds meetings per year'), source('celex:32024R1689/oj#art_67').
:- pred annual_report_prepared/1, gloss('advisory forum has prepared annual report on its activities'), source('celex:32024R1689/oj#art_67').
:- pred annual_report_publicly_available/1, gloss('annual report made publicly available'), source('celex:32024R1689/oj#art_67').
:- pred may_prepare_opinions/1, gloss('advisory forum may prepare opinions, recommendations and written contributions'), source('celex:32024R1689/oj#art_67').
:- pred may_establish_sub_groups/1, gloss('advisory forum may establish standing or temporary sub-groups'), source('celex:32024R1689/oj#art_67').
:- pred may_invite_experts/1, gloss('advisory forum may invite experts and other stakeholders to meetings'), source('celex:32024R1689/oj#art_67').

advisory_forum(F) :-
    provides_technical_expertise(F),
    advises_board_and_commission(F).

provides_technical_expertise(advisory_forum).
advises_board_and_commission(advisory_forum).

balanced_stakeholder_representation(advisory_forum) :-
    advisory_forum_member_represents(advisory_forum, industry),
    advisory_forum_member_represents(advisory_forum, start_ups),
    advisory_forum_member_represents(advisory_forum, smes),
    advisory_forum_member_represents(advisory_forum, civil_society),
    advisory_forum_member_represents(advisory_forum, academia).

balanced_commercial_non_commercial(advisory_forum).

balanced_sme_other_undertakings(advisory_forum).

must_appoint_members(commission, advisory_forum) :-
    advisory_forum_member(M),
    recognised_expertise_in_ai(M).

term_of_office_years(M, years(2)) :-
    advisory_forum_member(M),
    \+ permanent_advisory_forum_member(M).

term_of_office_years(M, years(N)) :-
    advisory_forum_member(M),
    \+ permanent_advisory_forum_member(M),
    N =< 6.

permanent_advisory_forum_member(fundamental_rights_agency).
permanent_advisory_forum_member(enisa).
permanent_advisory_forum_member(cen).
permanent_advisory_forum_member(cenelec).
permanent_advisory_forum_member(etsi).

must_draw_up_rules_of_procedure(advisory_forum).

must_elect_co_chairs(advisory_forum, 2) :-
    advisory_forum_co_chair(C1),
    advisory_forum_co_chair(C2),
    C1 \= C2.

co_chair_term_years(C, years(2)) :-
    advisory_forum_co_chair(C).

advisory_forum_co_chair(C) :-
    advisory_forum_member(C),
    elected_as_co_chair(C).

must_hold_meetings(advisory_forum, per_year(N)) :-
    N >= 2.

may_invite_experts(advisory_forum).

may_prepare_opinions(advisory_forum).

may_establish_sub_groups(advisory_forum).

must_prepare_annual_report(advisory_forum) :-
    annual_report_prepared(advisory_forum).

must_make_public(advisory_forum, annual_report) :-
    annual_report_prepared(advisory_forum),
    annual_report_publicly_available(advisory_forum).

provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_co_chair/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_stakeholder_representation/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_commercial_non_commercial/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_sme_other_undertakings/1, 'celex:32024R1689/oj#art_67').
provenance(recognised_expertise_in_ai/1, 'celex:32024R1689/oj#art_67').
provenance(term_of_office_years/2, 'celex:32024R1689/oj#art_67').
provenance(co_chair_term_years/2, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure_drawn_up/1, 'celex:32024R1689/oj#art_67').
provenance(meetings_held_per_year/2, 'celex:32024R1689/oj#art_67').
provenance(annual_report_prepared/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_publicly_available/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_opinions/1, 'celex:32024R1689/oj#art_67').
provenance(may_establish_sub_groups/1, 'celex:32024R1689/oj#art_67').
provenance(may_invite_experts/1, 'celex:32024R1689/oj#art_67').

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
