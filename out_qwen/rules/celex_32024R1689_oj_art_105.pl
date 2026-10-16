% unit       : celex:32024R1689/oj#art_105
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a068d4510d77fea754e67e3407fc06587bbd7a4c942e4d41a651c56f3635a145
% cached     : False
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
:- pred must_take_into_account_requirements/2, gloss('Commission shall take into account requirements when carrying out activities or adopting standards'), source('celex:32024R1689/oj#art_105').
:- pred ai_system_safety_component/1, gloss('AI system which is a safety component within the meaning of this Regulation'), source('celex:32024R1689/oj#art_105').
:- pred commission_activity_pursuant_to_art_8_par_1/1, gloss('activity carried out by the Commission pursuant to Article 8(1) of Directive 2014/90/EU'), source('celex:32024R1689/oj#art_105').
:- pred adopting_technical_specifications_and_testing_standards/1, gloss('adopting technical specifications and testing standards in accordance with Article 8(2) and (3) of Directive 2014/90/EU'), source('celex:32024R1689/oj#art_105').

ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).

commission_activity_pursuant_to_art_8_par_1(A) :-
    ai_system_safety_component(_S),
    activity_pursuant_to_directive_2014_90_art_8_par_1(A).

adopting_technical_specifications_and_testing_standards(A) :-
    ai_system_safety_component(_S),
    adoption_of_technical_specifications_or_testing_standards_under_directive_2014_90_art_8(A).

must_take_into_account_requirements(commission, requirements_of_chapter_3_section_2) :-
    commission_activity_pursuant_to_art_8_par_1(_A).

must_take_into_account_requirements(commission, requirements_of_chapter_3_section_2) :-
    adopting_technical_specifications_and_testing_standards(_A).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_105').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_105').
provenance(commission_activity_pursuant_to_art_8_par_1/1, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_and_testing_standards/1, 'celex:32024R1689/oj#art_105').

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
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
