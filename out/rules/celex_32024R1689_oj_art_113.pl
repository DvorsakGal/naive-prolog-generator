% unit       : celex:32024R1689/oj#art_113
% title      : Entry into force and application
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 399c5c856da67c6c88acdf89b42a6bc9096010792dc7f140ec283c4efd15fbc3
% model      : gpt-oss:120b-cloud
% prompt sha : 5c223bd79e7b514eaecbc09e049184374c898e774fd7b75a278251e743eaa8c3
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_entry_into_force/2, gloss('date when act enters into force'), source('celex:32024R1689/oj#art_113').
:- pred required_application_from/2, gloss('date from which provision applies'), source('celex:32024R1689/oj#art_113').
:- pred exempt_application_from/2, gloss('exception to application date'), source('celex:32024R1689/oj#art_113').
:- pred required_binding/1, gloss('act is binding in its entirety and directly applicable'), source('celex:32024R1689/oj#art_113').

required_entry_into_force('celex:32024R1689/oj', '20 days after publication').

required_application_from('celex:32024R1689/oj', '2 August 2026').
required_application_from('celex:32024R1689/oj#chp_1', '2 February 2025').
required_application_from('celex:32024R1689/oj#chp_2', '2 February 2025').
required_application_from('celex:32024R1689/oj#chp_3/sec_4', '2 August 2025').
required_application_from('celex:32024R1689/oj#chp_5', '2 August 2025').
required_application_from('celex:32024R1689/oj#chp_7', '2 August 2025').
required_application_from('celex:32024R1689/oj#chp_12', '2 August 2025').
required_application_from('celex:32024R1689/oj#art_78', '2 August 2025').
required_application_from('celex:32024R1689/oj#art_6/par_1', '2 August 2027').

exempt_application_from('celex:32024R1689/oj#art_101', '2 August 2025').

required_binding('celex:32024R1689/oj').

provenance(required_entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(required_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(exempt_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(required_binding/1, 'celex:32024R1689/oj#art_113').

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
