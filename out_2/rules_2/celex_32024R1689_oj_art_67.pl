% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : b98dfd3d61f0b49ee660363c40590ddc1ef0ab14810eb7a20cad92ad187e8a1b
% cached     : False
% title      : Advisory forum
% --- New predicates introduced for Article 67 ---------------------------------

:- pred required_advisory_forum/1, gloss('advisory forum must be established'), source('celex:32024R1689/oj#art_67').
:- pred required_balanced_membership/1, gloss('membership must be balanced'), source('celex:32024R1689/oj#art_67').
:- pred term_of_office/2, gloss('term of office for an entity'), source('celex:32024R1689/oj#art_67').
:- pred max_extension/2, gloss('maximum possible extension of term'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member/2, gloss('permanent members of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_appoint/2, gloss('Commission shall appoint members'), source('celex:32024R1689/oj#art_67').
:- pred must_draw_up_rules_of_procedure/2, gloss('advisory forum shall draw up its rules of procedure'), source('celex:32024R1689/oj#art_67').
:- pred must_elect_co_chair/2, gloss('advisory forum shall elect two co‑chairs'), source('celex:32024R1689/oj#art_67').
:- pred renewable_once/1, gloss('term may be renewed once'), source('celex:32024R1689/oj#art_67').
:- pred must_hold_meetings/2, gloss('advisory forum shall hold meetings at least twice a year'), source('celex:32024R1689/oj#art_67').
:- pred permitted_invitation/1, gloss('advisory forum may invite experts and stakeholders'), source('celex:32024R1689/oj#art_67').
:- pred permitted_prepare_opinion/1, gloss('advisory forum may prepare opinions'), source('celex:32024R1689/oj#art_67').
:- pred permitted_prepare_recommendation/1, gloss('advisory forum may prepare recommendations'), source('celex:32024R1689/oj#art_67').
:- pred permitted_prepare_written_contribution/1, gloss('advisory forum may prepare written contributions'), source('celex:32024R1689/oj#art_67').
:- pred permitted_establish_subgroup/1, gloss('advisory forum may establish sub‑groups'), source('celex:32024R1689/oj#art_67').
:- pred must_prepare_annual_report/2, gloss('advisory forum shall prepare an annual report'), source('celex:32024R1689/oj#art_67').

% --- Facts and rules derived from the provision -----------------------------

required_advisory_forum(advisory_forum).

required_balanced_membership(advisory_forum).

term_of_office(advisory_forum, years(2)).
max_extension(advisory_forum, years(4)).

permanent_member(advisory_forum, fundamental_rights_agency).
permanent_member(advisory_forum, enisa).
permanent_member(advisory_forum, cen).
permanent_member(advisory_forum, cenelec).
permanent_member(advisory_forum, etsi).

must_appoint(commission, advisory_forum_member(_)).

must_draw_up_rules_of_procedure(advisory_forum, rules_of_procedure).

must_elect_co_chair(advisory_forum, co_chair(_)).
term_of_office(co_chair(_), years(2)).
renewable_once(co_chair(_)).

must_hold_meetings(advisory_forum, frequency(at_least_twice_per_year)).

permitted_invitation(advisory_forum).

permitted_prepare_opinion(advisory_forum).
permitted_prepare_recommendation(advisory_forum).
permitted_prepare_written_contribution(advisory_forum).

permitted_establish_subgroup(advisory_forum).

must_prepare_annual_report(advisory_forum, annual_report).
must_make_publicly_available(advisory_forum, annual_report).

% --- Provenance for each clause head ---------------------------------------

provenance(required_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(required_balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(max_extension/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member/2, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chair/2, 'celex:32024R1689/oj#art_67').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invitation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_opinion/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_recommendation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_written_contribution/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish_subgroup/1, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/2, 'celex:32024R1689/oj#art_67').

% --- References --------------------------------------------------------------

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
