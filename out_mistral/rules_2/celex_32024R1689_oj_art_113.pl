% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : d39a729d4d6be686a0b53d560fe677340cd37763f94d3a2afd8eee45c563ec0d
% cached     : False
% title      : Entry into force and application
:- pred enters_into_force/1, gloss('the regulation enters into force on the twentieth day following publication in the Official Journal'), source('celex:32024R1689/oj#art_113').
:- pred applies_from/2, gloss('a provision applies from a given date'), source('celex:32024R1689/oj#art_113').
:- pred binding_in_entirety/1, gloss('the regulation is binding in its entirety'), source('celex:32024R1689/oj#art_113').
:- pred directly_applicable/1, gloss('the regulation is directly applicable in all Member States'), source('celex:32024R1689/oj#art_113').

enters_into_force(regulation) :-
    published_in_official_journal(regulation),
    day_of_publication(regulation, Day),
    enters_into_force_on(regulation, ForceDay),
    ForceDay is Day + 20.

applies_from(regulation, date(2026, august, 2)).

applies_from('celex:32024R1689/oj#chp_1', date(2025, february, 2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025, february, 2)).

applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#art_78', date(2025, august, 2)).

applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, august, 2)).

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
