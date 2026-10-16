% unit       : celex:32024R1689/oj#art_105
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : fa5df8ea673817e213f08dd26e602a4109f40f28f518cfb805d49d1aa451312f
% cached     : False
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
:- pred must_take_into_account_requirements/2, gloss('Commission shall take into account requirements set out in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_105').

must_take_into_account_requirements(commission, requirements_in_chapter_3_section_2(S)) :-
    ai_safety_component(S),
    carrying_out_activities_pursuant_art_8_par_1(commission),
    adopting_technical_specifications_and_testing_standards(commission, S).

adopting_technical_specifications_and_testing_standards(commission, S) :-
    ai_safety_component(S),
    adopts(commission, technical_specifications(S)),
    adopts(commission, testing_standards(S)),
    in_accordance_with(art_8_par_2, S),
    in_accordance_with(art_8_par_3, S).

carrying_out_activities_pursuant_art_8_par_1(commission).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_and_testing_standards/2, 'celex:32024R1689/oj#art_105').
provenance(carrying_out_activities_pursuant_art_8_par_1/1, 'celex:32024R1689/oj#art_105').

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
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
