% unit       : celex:32024R1689/oj#art_105
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : da055a89d0e0430b53a17ff1f06f1aca831f08f17f0845594e37e0587b21755e
% cached     : False
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
:- pred activity_pursuant_to/1, gloss('activity pursuant to a referenced provision'), source('celex:32024R1689/oj#art_105').
:- pred adopting_technical_specifications/1, gloss('adopting technical specifications in accordance with a referenced provision'), source('celex:32024R1689/oj#art_105').
:- pred adopting_testing_standards/1, gloss('adopting testing standards in accordance with a referenced provision'), source('celex:32024R1689/oj#art_105').
:- pred must_take_into_account/2, gloss('Commission must take into account the specified requirements'), source('celex:32024R1689/oj#art_105').

must_take_into_account(Commission, requirements(chapter_3_section_2, S)) :-
    ai_office(Commission),
    safety_component(S),
    activity_pursuant_to('celex:32014L0090/oj#art_8/par_1'),
    adopting_technical_specifications('celex:32014L0090/oj#art_8/par_2'),
    adopting_testing_standards('celex:32014L0090/oj#art_8/par_3').

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').

references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_5').
references('celex:32024R1689/oj#art_105', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_105', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
