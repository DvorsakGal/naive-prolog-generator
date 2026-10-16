% unit       : celex:32024R1689/oj#art_105
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e24d570cb7c087ecb6e2447b0eb0fac3046dea77c5bbefb5304e0c66e15bbcc4
% cached     : False
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
:- pred must_take_into_account/2, gloss('Commission must take into account AI Act requirements when carrying out activities and adopting specifications'), source('celex:32024R1689/oj#art_105').
:- pred ai_system_safety_component/1, gloss('AI system that is a safety component within the meaning of the AI Act'), source('celex:32024R1689/oj#art_105').

ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).

must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90),
    adopting_technical_specifications(commission, art_8_par_2, directive_2014_90),
    adopting_testing_standards(commission, art_8_par_3, directive_2014_90).

must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90),
    adopting_technical_specifications(commission, art_8_par_2, directive_2014_90).

must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90),
    adopting_testing_standards(commission, art_8_par_3, directive_2014_90).

must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_105').

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
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
