% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : bb684477a58bdbac46fd645cce5dcfab5a9df074a099bbcc3fa59c92a562f32c
% cached     : False
% title      : Entry into force and application
:- pred applies_from/2, gloss('provision applies from specified date'), source('celex:32024R1689/oj#art_113').
:- pred enters_into_force/2, gloss('instrument enters into force on specified date'), source('celex:32024R1689/oj#art_113').
:- pred exception_applies/2, gloss('exception applies to specified provision'), source('celex:32024R1689/oj#art_113').

enters_into_force('celex:32024R1689/oj', days(20) after publication_in_official_journal('celex:32024R1689/oj')).

applies_from('celex:32024R1689/oj', date(2026, 8, 2)).

applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).

applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).

exception_applies('celex:32024R1689/oj#art_101', applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2))).

applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).

provenance(enters_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(exception_applies/2, 'celex:32024R1689/oj#art_113').

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
