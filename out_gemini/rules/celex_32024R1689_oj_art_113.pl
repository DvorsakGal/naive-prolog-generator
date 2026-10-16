% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e800e290d105c8c7edefa994b557a24ec191d2cdd7000a604984849d6eb71695
% cached     : False
% title      : Entry into force and application
:- pred entry_into_force/2, gloss('entry into force of a legal act or provision on a date or event'), source('celex:32024R1689/oj#art_113').
:- pred application_date/2, gloss('date or condition from which a legal act or provision applies'), source('celex:32024R1689/oj#art_113').
:- pred directly_applicable/1, gloss('provision or regulation directly applicable in all Member States'), source('celex:32024R1689/oj#art_113').
:- pred binding_in_entirety/1, gloss('act is binding in its entirety'), source('celex:32024R1689/oj#art_113').

% References
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

% Entry into force on the 20th day following publication in the Official Journal
entry_into_force('celex:32024R1689/oj', days_after_publication(20)).

% General date of application: 2 August 2026
application_date('celex:32024R1689/oj', date(2026, 8, 2)).

% (a) Chapters I and II apply from 2 February 2025
application_date('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
application_date('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).

% (b) Chapter III Section 4, Chapter V, Chapter VII, Chapter XII and Article 78 apply from 2 August 2025
application_date('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#art_78', date(2025, 8, 2)).

% With the exception of Article 101 (which falls back to general date)
application_date('celex:32024R1689/oj#art_101', date(2026, 8, 2)).

% (c) Article 6(1) and corresponding obligations apply from 2 August 2027
application_date('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
application_date(corresponding_obligations('celex:32024R1689/oj#art_6/par_1'), date(2027, 8, 2)).

% Binding nature and direct applicability
binding_in_entirety('celex:32024R1689/oj').
directly_applicable('celex:32024R1689/oj').

% Provenance
provenance(entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(application_date/2, 'celex:32024R1689/oj#art_113').
provenance(binding_in_entirety/1, 'celex:32024R1689/oj#art_113').
provenance(directly_applicable/1, 'celex:32024R1689/oj#art_113').
