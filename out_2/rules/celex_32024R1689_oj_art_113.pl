% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 09ce302ff5e84b3f2ae56a3e8be35a5c73f4f80e2d454ea570f05fbc439d13cc
% cached     : False
% title      : Entry into force and application
:- pred required_entry_into_force/1, gloss('date when a provision enters into force'), source('celex:32024R1689/oj#art_113').
:- pred required_application/1, gloss('date when a provision applies'), source('celex:32024R1689/oj#art_113').
:- pred required_binding/1, gloss('regulation is binding in its entirety and directly applicable'), source('celex:32024R1689/oj#art_113').

required_entry_into_force(entry(art_113, date(2026,8,2))).

required_application(application(art_113, date(2026,8,2))).
required_application(application('celex:32024R1689/oj#chp_1', date(2025,2,2))).
required_application(application('celex:32024R1689/oj#chp_2', date(2025,2,2))).
required_application(application('celex:32024R1689/oj#chp_3/sec_4', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#chp_5', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#chp_7', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#chp_12', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#art_78', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#art_6/par_1', date(2027,8,2))).
required_application(application('celex:32024R1689/oj', date(2027,8,2))).

required_binding(regulation).

provenance(required_entry_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(required_application/1, 'celex:32024R1689/oj#art_113').
provenance(required_binding/1, 'celex:32024R1689/oj#art_113').

references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_1').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_2').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_3/sec_4').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_7').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_12').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_6/par_1').
