% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : fd4e033cc1ecdcf9a799bc081e945baf1d2d106fe5a9ce8c307911ff7448c5b9
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member_of_advisory_forum/1, gloss('entity that is a permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_appoint_advisory_forum_members/2, gloss('Commission obligation to appoint members of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred must_prepare_annual_activity_report/2, gloss('advisory forum obligation to prepare annual report on activities'), source('celex:32024R1689/oj#art_67').
:- pred must_make_report_publicly_available/2, gloss('advisory forum obligation to make annual report publicly available'), source('celex:32024R1689/oj#art_67').

advisory_forum(advisory_forum).

permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).

must_appoint_advisory_forum_members(commission, advisory_forum) :-
    advisory_forum(advisory_forum).

must_prepare_annual_activity_report(advisory_forum, annual_report) :-
    advisory_forum(advisory_forum).

must_make_report_publicly_available(advisory_forum, annual_report) :-
    advisory_forum(advisory_forum),
    must_prepare_annual_activity_report(advisory_forum, annual_report).

provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_advisory_forum_members/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_activity_report/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_report_publicly_available/2, 'celex:32024R1689/oj#art_67').

references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
