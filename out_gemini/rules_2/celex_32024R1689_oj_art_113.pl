% unit       : celex:32024R1689/oj#art_113
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 660870cd8def472338fc06c47ddfee92766f8a73cb3070ca02806c67d32df69b
% cached     : False
% title      : Entry into force and application
:- pred entry_into_force/2, gloss('entry into force of a legal act or provision'), source('celex:32024R1689/oj#art_113').
:- pred date_of_application/2, gloss('applicable date from which a legal act or provision applies'), source('celex:32024R1689/oj#art_113').

% Article 113: Entry into force on the twentieth day following publication
entry_into_force('celex:32024R1689/oj', days_after_publication(20)).

% General date of application: 2 August 2026
date_of_application('celex:32024R1689/oj', date(2026, 8, 2)).

% (a) Chapters I and II shall apply from 2 February 2025
date_of_application('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
date_of_application('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).

% (b) Chapter III Section 4, Chapter V, Chapter VII, Chapter XII and Article 78 shall apply from 2 August 2025, with the exception of Article 101
date_of_application('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#art_78', date(2025, 8, 2)).

% (c) Article 6(1) and the corresponding obligations shall apply from 2 August 2027
date_of_application('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).

provenance(entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(date_of_application/2, 'celex:32024R1689/oj#art_113').

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
