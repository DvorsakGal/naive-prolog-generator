% unit       : celex:32024R1689/oj#art_113
% title      : Entry into force and application
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : gpt-oss:120b-cloud
% prompt sha : b1f9e0385502d3e376260afb53934669fb3ff1bbf50e4882f372159abe17cb23
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_entry_into_force/2, gloss('entry into force of regulation'), source('celex:32024R1689/oj#art_113').
:- pred required_application_from/2, gloss('application date of regulation or chapter'), source('celex:32024R1689/oj#art_113').
:- pred required_obligation_application_from/2, gloss('application date of obligations'), source('celex:32024R1689/oj#art_113').
:- pred permitted_application_from/2, gloss('earlier application date for specific chapter or article'), source('celex:32024R1689/oj#art_113').
:- pred exempt_application/1, gloss('exception where application does not apply from earlier date'), source('celex:32024R1689/oj#art_113').

required_entry_into_force('celex:32024R1689/oj#art_113', relative_day(20)).
required_application_from('celex:32024R1689/oj#art_113', date(2026,8,2)).

permitted_application_from('celex:32024R1689/oj#chp_1', date(2025,2,2)).
permitted_application_from('celex:32024R1689/oj#chp_2', date(2025,2,2)).

permitted_application_from('celex:32024R1689/oj#chp_3/sec_4', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#chp_5', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#chp_7', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#chp_12', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#art_78', date(2025,8,2)).

exempt_application('celex:32024R1689/oj#art_101').

permitted_application_from('celex:32024R1689/oj#art_6/par_1', date(2027,8,2)).
required_obligation_application_from('celex:32024R1689/oj', date(2027,8,2)).

provenance(required_entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(required_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(required_obligation_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(permitted_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(exempt_application/1, 'celex:32024R1689/oj#art_113').

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
