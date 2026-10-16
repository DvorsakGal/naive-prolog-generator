% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 65e9ee37552516d30add95c2d0e9cdede97f80d102940315d533ac951e1e0989
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member_of_advisory_forum/1, gloss('entity that is a permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_appoint_members(Actor, Object), gloss('obligation to appoint members of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_prepare_annual_report(Actor, Object), gloss('obligation to prepare an annual report on activities'), source('celex:32024R1689/oj#art_67').
:- pred must_make_publicly_available(Actor, Object), gloss('obligation to make a document publicly available'), source('celex:32024R1689/oj#art_67').

advisory_forum(advisory_forum).

permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).

must_appoint_members(commission, members(advisory_forum)).

must_prepare_annual_report(advisory_forum, annual_report(activities(advisory_forum))).

must_make_publicly_available(advisory_forum, annual_report(activities(advisory_forum))).

provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_members/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
