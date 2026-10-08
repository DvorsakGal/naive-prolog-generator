% unit       : celex:32024R1689/oj#art_105
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : gpt-oss:120b-cloud
% prompt sha : b6ae43ca7df4c974131b9f8d4dbab5475328b116fe97a72380a2e47024554bd1
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_105').
:- pred activity_pursuant_to/2, gloss('activity carried out pursuant to a legal provision'), source('celex:32024R1689/oj#art_105').
:- pred adopts_technical_specifications_and_testing_standards/2, gloss('adopts technical specifications and testing standards in accordance with a legal provision'), source('celex:32024R1689/oj#art_105').
:- pred must_take_into_account/2, gloss('obligation for an actor to consider certain requirements'), source('celex:32024R1689/oj#art_105').

must_take_into_account(Commission, Requirement) :-
    commission(Commission),
    safety_component(_),
    activity_pursuant_to(Commission, 'celex:32014L0090/oj#art_8/par_1'),
    adopts_technical_specifications_and_testing_standards(Commission, 'celex:32014L0090/oj#art_8/par_2'),
    adopts_technical_specifications_and_testing_standards(Commission, 'celex:32014L0090/oj#art_8/par_3'),
    Requirement = 'celex:32024R1689/oj#chp_3/sec_2'.

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').

references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_5').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_105', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_105', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
