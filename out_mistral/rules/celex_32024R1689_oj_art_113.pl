% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : df31d98448405318d45cf8824627a9a895f47c985c994af702ba23bc7d4ff9b6
% cached     : False
% title      : Entry into force and application
:- pred enters_into_force/1, gloss('the regulation enters into force'), source('celex:32024R1689/oj#art_113').
:- pred applies_from/2, gloss('a provision applies from a given date'), source('celex:32024R1689/oj#art_113').
:- pred binding_in_entirety/1, gloss('the regulation is binding in its entirety'), source('celex:32024R1689/oj#art_113').
:- pred directly_applicable/1, gloss('the regulation is directly applicable in all Member States'), source('celex:32024R1689/oj#art_113').

enters_into_force(regulation) :-
    publication_in_official_journal(regulation),
    days(20).

applies_from(regulation, date(2026, august, 2)).

applies_from(chapter(1), date(2025, february, 2)).
applies_from(chapter(2), date(2025, february, 2)).

applies_from(chapter(3), section(4), date(2025, august, 2)).
applies_from(chapter(5), date(2025, august, 2)).
applies_from(chapter(7), date(2025, august, 2)).
applies_from(chapter(12), date(2025, august, 2)).
applies_from(article(78), date(2025, august, 2)).

applies_from(article(6), paragraph(1), date(2027, august, 2)).

binding_in_entirety(regulation).
directly_applicable(regulation).

provenance(enters_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(binding_in_entirety/1, 'celex:32024R1689/oj#art_113').
provenance(directly_applicable/1, 'celex:32024R1689/oj#art_113').

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
