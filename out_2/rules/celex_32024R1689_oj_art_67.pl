% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dacbea78b08c1a5326869cfb2ce24307f0ffbfe7ef0e460fba9d15c9ce7bf247
% cached     : False
% title      : Advisory forum
:- pred required_advisory_forum/1, gloss('advisory forum must be established'), source('celex:32024R1689/oj#art_67').
:- pred required_balanced_membership/1, gloss('membership must represent a balanced selection of stakeholders'), source('celex:32024R1689/oj#art_67').
:- pred required_term_of_office/1, gloss('term of office for members shall be two years, extendable up to four years'), source('celex:32024R1689/oj#art_67').
:- pred required_meetings/1, gloss('advisory forum shall hold meetings at least twice a year'), source('celex:32024R1689/oj#art_67').

:- pred must_appoint/2, gloss('Commission shall appoint the members of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_be_member/2, gloss('specified entities shall be permanent members of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_draw_up_rules_of_procedure/2, gloss('advisory forum shall draw up its rules of procedure'), source('celex:32024R1689/oj#art_67').
:- pred must_elect/2, gloss('advisory forum shall elect two co‑chairs from among its members'), source('celex:32024R1689/oj#art_67').
:- pred must_prepare/2, gloss('advisory forum shall prepare an annual report on its activities'), source('celex:32024R1689/oj#art_67').
:- pred must_make_publicly_available/2, gloss('the annual report shall be made publicly available'), source('celex:32024R1689/oj#art_67').

:- pred permitted_invite/1, gloss('advisory forum may invite experts and other stakeholders to its meetings'), source('celex:32024R1689/oj#art_67').
:- pred permitted_opinion_preparation/1, gloss('advisory forum may prepare opinions at the request of the Board or the Commission'), source('celex:32024R1689/oj#art_67').
:- pred permitted_recommendation_preparation/1, gloss('advisory forum may prepare recommendations at the request of the Board or the Commission'), source('celex:32024R1689/oj#art_67').
:- pred permitted_written_contribution_preparation/1, gloss('advisory forum may prepare written contributions at the request of the Board or the Commission'), source('celex:32024R1689/oj#art_67').
:- pred permitted_sub_group/1, gloss('advisory forum may establish standing or temporary sub‑groups'), source('celex:32024R1689/oj#art_67').

% --- Facts ---------------------------------------------------------

required_advisory_forum(advisory_forum).
required_balanced_membership(advisory_forum).
required_term_of_office(advisory_forum).
required_meetings(advisory_forum).

must_appoint(commission, members_of(advisory_forum)).
must_be_member(fundamental_rights_agency, advisory_forum).
must_be_member(enisa, advisory_forum).
must_be_member(cen, advisory_forum).
must_be_member(cenelec, advisory_forum).
must_be_member(etsi, advisory_forum).

must_draw_up_rules_of_procedure(advisory_forum, rules_of_procedure).
must_elect(advisory_forum, co_chairs(2)).
must_prepare(advisory_forum, annual_report).
must_make_publicly_available(annual_report, public).

permitted_invite(expert).
permitted_opinion_preparation(opinion).
permitted_recommendation_preparation(recommendation).
permitted_written_contribution_preparation(written_contribution).
permitted_sub_group(sub_group).

% --- Provenance ---------------------------------------------------

provenance(required_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(required_balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office/1, 'celex:32024R1689/oj#art_67').
provenance(required_meetings/1, 'celex:32024R1689/oj#art_67').

provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(must_be_member/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').

provenance(permitted_invite/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_opinion_preparation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_recommendation_preparation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_written_contribution_preparation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_sub_group/1, 'celex:32024R1689/oj#art_67').

% --- References ---------------------------------------------------

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
