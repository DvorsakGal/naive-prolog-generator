% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 7d9f6ddbfd755e9f8c9369a439bc62d4c1526e8e2d039bc4b243a084a891865f
% cached     : False
% title      : Entry into force and application
:- pred entry_into_force_date/2, gloss('date on which a provision enters into force'), source('celex:32024R1689/oj#art_113').
:- pred application_date/2, gloss('date from which a provision applies'), source('celex:32024R1689/oj#art_113').

entry_into_force_date('celex:32024R1689/oj', days(20, after(publication))).

application_date('celex:32024R1689/oj', date(2026, 8, 2)).

application_date('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
application_date('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).

application_date('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#art_78', date(2025, 8, 2)).

application_date('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).

provenance(entry_into_force_date/2, 'celex:32024R1689/oj#art_113').
provenance(application_date/2, 'celex:32024R1689/oj#art_113').

references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_1').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_2').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_3/sec_4').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_7').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_12').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_101').
