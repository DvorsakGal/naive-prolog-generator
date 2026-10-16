% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a62ecb124e19e5f13549dd4d5ac19fc9bed724fe8966c0443f04ee5e6b8ef1d7
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred board/1, gloss('the AI Board'), source('celex:32024R1689/oj#art_67').
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_67').
:- pred stakeholder/1, gloss('stakeholder with recognised expertise in AI'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member/1, gloss('permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred co_chair/1, gloss('co-chair of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred sub_group/1, gloss('standing or temporary sub-group of the advisory forum'), source('celex:32024R1689/oj#art_67').

must_provide_technical_expertise(advisory_forum, board).
must_provide_technical_expertise(advisory_forum, commission).
must_advise(advisory_forum, board).
must_advise(advisory_forum, commission).
must_contribute_to_tasks(advisory_forum, board).
must_contribute_to_tasks(advisory_forum, commission).

balanced_membership_applies(advisory_forum).

must_appoint_members(commission, advisory_forum).

term_of_office(member(advisory_forum), years(2)).
extended_term_of_office(member(advisory_forum), up_to(years(4))).

permanent_member(fundamental_rights_agency).
permanent_member(enisa).
permanent_member(cen).
permanent_member(cenelec).
permanent_member(etsi).

must_draw_up_rules_of_procedure(advisory_forum).
must_elect_co_chairs(advisory_forum).
term_of_office(co_chair(advisory_forum), years(2)).
renewable_term(co_chair(advisory_forum), once).

must_hold_meetings(advisory_forum, at_least(twice_per_year)).
may_invite(advisory_forum, experts).
may_invite(advisory_forum, stakeholders).

may_prepare(advisory_forum, opinions).
may_prepare(advisory_forum, recommendations).
may_prepare(advisory_forum, written_contributions).

may_establish_sub_groups(advisory_forum, sub_group).

must_prepare_annual_report(advisory_forum).
must_make_publicly_available(advisory_forum, annual_report).

provenance(must_provide_technical_expertise/2, 'celex:32024R1689/oj#art_67').
provenance(must_advise/2, 'celex:32024R1689/oj#art_67').
provenance(must_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(balanced_membership_applies/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_members/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(extended_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chairs/1, 'celex:32024R1689/oj#art_67').
provenance(renewable_term/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite/2, 'celex:32024R1689/oj#art_67').
provenance(may_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(may_establish_sub_groups/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
