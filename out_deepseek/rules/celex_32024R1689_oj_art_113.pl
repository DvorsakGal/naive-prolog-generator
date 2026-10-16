% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 70418eb0120f91dc88480b293bb31586206a7ec0ba6a3d86dc07ddf0852d9251
% cached     : False
% title      : Entry into force and application
:- pred entry_into_force/1, gloss('date on which the regulation enters into force'), source('celex:32024R1689/oj#art_113').
:- pred applies_from/2, gloss('provision applies from a given date'), source('celex:32024R1689/oj#art_113').

entry_into_force(date(2024, 7, 12)).

applies_from('celex:32024R1689/oj', date(2026, 8, 2)).

applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).

applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).

applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
applies_from('celex:32024R1689/oj', date(2027, 8, 2)) :-
    applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).

provenance(entry_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').

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
