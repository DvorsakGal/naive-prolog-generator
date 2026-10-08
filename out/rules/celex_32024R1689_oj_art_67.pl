% unit       : celex:32024R1689/oj#art_67
% title      : Advisory forum
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : gpt-oss:120b-cloud
% prompt sha : ecb114877b4e2d86b9ccf857a7653381db96fe9d623aef5589611452afbeca12
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred required_advisory_forum/0, gloss('establishment of the advisory forum is required'), source('celex:32024R1689/oj#art_67').
:- pred required_balanced_membership/1, gloss('membership of the advisory forum must be balanced'), source('celex:32024R1689/oj#art_67').
:- pred advisory_forum_member/1, gloss('member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_appoint/2, gloss('Commission must appoint members of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred required_term_of_office/2, gloss('term of office for members or co‑chairs'), source('celex:32024R1689/oj#art_67').
:- pred required_term_extension_limit/2, gloss('maximum possible extension of term of office'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member/2, gloss('entities that are permanent members of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_draw_up_rules_of_procedure/1, gloss('advisory forum must draw up its rules of procedure'), source('celex:32024R1689/oj#art_67').
:- pred must_elect_co_chair/2, gloss('advisory forum must elect co‑chairs'), source('celex:32024R1689/oj#art_67').
:- pred required_renewable_once/1, gloss('term of office of co‑chairs may be renewed once'), source('celex:32024R1689/oj#art_67').
:- pred required_meeting_frequency/2, gloss('advisory forum must hold meetings at least twice a year'), source('celex:32024R1689/oj#art_67').
:- pred permitted_invite_experts/1, gloss('advisory forum may invite experts and stakeholders to meetings'), source('celex:32024R1689/oj#art_67').
:- pred permitted_prepare_opinions/1, gloss('advisory forum may prepare opinions, recommendations and contributions'), source('celex:32024R1689/oj#art_67').
:- pred permitted_establish_sub_groups/1, gloss('advisory forum may establish standing or temporary sub‑groups'), source('celex:32024R1689/oj#art_67').
:- pred must_prepare_annual_report/1, gloss('advisory forum must prepare an annual report'), source('celex:32024R1689/oj#art_67').
:- pred report/1, gloss('annual report of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred annual_report_of/2, gloss('link between advisory forum and its annual report'), source('celex:32024R1689/oj#art_67').
:- pred must_make_publicly_available/1, gloss('annual report shall be made publicly available'), source('celex:32024R1689/oj#art_67').

% Facts
advisory_forum(advisory_forum).

required_advisory_forum.

advisory_forum_member(_).

report(annual_report).

% Rules
required_balanced_membership(Forum) :-
    advisory_forum(Forum).

must_appoint(commission, Member) :-
    advisory_forum_member(Member).

required_term_of_office(Entity, two_years) :-
    advisory_forum_member(Entity).

required_term_extension_limit(Entity, four_years) :-
    advisory_forum_member(Entity).

permanent_member(fundamental_rights_agency, Forum) :-
    advisory_forum(Forum).

permanent_member(enisa, Forum) :-
    advisory_forum(Forum).

permanent_member(cen, Forum) :-
    advisory_forum(Forum).

permanent_member(cenelec, Forum) :-
    advisory_forum(Forum).

permanent_member(etsi, Forum) :-
    advisory_forum(Forum).

must_draw_up_rules_of_procedure(Forum) :-
    advisory_forum(Forum).

must_elect_co_chair(Forum, CoChair) :-
    advisory_forum(Forum),
    advisory_forum_member(CoChair).

required_renewable_once(CoChair) :-
    advisory_forum_member(CoChair).

required_meeting_frequency(Forum, at_least_twice_per_year) :-
    advisory_forum(Forum).

permitted_invite_experts(Forum) :-
    advisory_forum(Forum).

permitted_prepare_opinions(Forum) :-
    advisory_forum(Forum).

permitted_establish_sub_groups(Forum) :-
    advisory_forum(Forum).

must_prepare_annual_report(Forum) :-
    advisory_forum(Forum).

annual_report_of(Forum, Report) :-
    advisory_forum(Forum),
    report(Report).

must_make_publicly_available(Report) :-
    annual_report_of(_Forum, Report).

% Provenance
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(required_advisory_forum/0, 'celex:32024R1689/oj#art_67').
provenance(required_balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(required_term_extension_limit/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chair/2, 'celex:32024R1689/oj#art_67').
provenance(required_renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(required_meeting_frequency/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite_experts/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_opinions/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish_sub_groups/1, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(report/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_of/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/1, 'celex:32024R1689/oj#art_67').

% References
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
