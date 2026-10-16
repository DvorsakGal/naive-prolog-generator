% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d7d4edfbe4ad51ce594a57e703f78577a1b49d1e575c04287a485cd859963eec
% cached     : False
% title      : Entry into force and application
:- pred regulation_applies_from/2, gloss('date from which a provision or the regulation applies'), source('celex:32024R1689/oj#art_113').
:- pred enters_into_force/2, gloss('date on which the regulation enters into force'), source('celex:32024R1689/oj#art_113').

enters_into_force('celex:32024R1689/oj', days(20, after(publication))).

regulation_applies_from('celex:32024R1689/oj', date(2026, 8, 2)).

regulation_applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).

regulation_applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).

regulation_applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).

provenance(enters_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(regulation_applies_from/2, 'celex:32024R1689/oj#art_113').

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
