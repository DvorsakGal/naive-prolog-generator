% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4369c5d0856f92cb56a2164ee76c9e98076f7e3fd5da235d934013561aacca02
% cached     : False
% title      : Entry into force and application
:- pred applies_from/2, gloss('unit applies from a given date'), source('celex:32024R1689/oj#art_113').
:- pred enters_into_force_on/2, gloss('regulation enters into force on a given date'), source('celex:32024R1689/oj#art_113').
:- pred exception_from/2, gloss('unit is excepted from a general application date'), source('celex:32024R1689/oj#art_113').

enters_into_force_on('celex:32024R1689/oj', days(20) after(publication_in_official_journal('celex:32024R1689/oj'))).

applies_from('celex:32024R1689/oj', date(2026, 8, 2)).

applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).

applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).

applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).

applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).

applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).

applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).

applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).

exception_from('celex:32024R1689/oj#art_101', applies_from_group([chp_3_sec_4, chp_5, chp_7, chp_12, art_78], date(2025, 8, 2))).

applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).

applies_from(Unit, date(2027, 8, 2)) :-
    corresponding_obligations(Unit, 'celex:32024R1689/oj#art_6/par_1').

provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(enters_into_force_on/2, 'celex:32024R1689/oj#art_113').
provenance(exception_from/2, 'celex:32024R1689/oj#art_113').

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
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj').
