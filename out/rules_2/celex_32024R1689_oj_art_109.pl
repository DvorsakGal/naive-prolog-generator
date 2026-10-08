% unit       : celex:32024R1689/oj#art_109
% title      : Amendment to <ref id="celex:32019R2144/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 6c43fea0ce514dd71b3b041b3b9a804b274e1a5d872893ddc09361fe03d618f4
% model      : gpt-oss:120b-cloud
% prompt sha : 7940b3afc19df2636d01fa5e55a805ef8591dedc96fac0f68fbd5d9961bcaad6
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred safety_component_ai_system/1, gloss('AI system that is a safety component'), source('celex:32024R1689/oj#art_109').
:- pred adopting_implementing_act/1, gloss('implementing act adopted pursuant to article 11 paragraph 2'), source('celex:32024R1689/oj#art_109').
:- pred concerns/2, gloss('implementing act concerns AI system'), source('celex:32024R1689/oj#art_109').
:- pred required_take_into_account_requirements/2, gloss('requirements must be taken into account when adopting implementing act'), source('celex:32024R1689/oj#art_109').

safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).

required_take_into_account_requirements(Act, requirement_chapter_3_section_2) :-
    adopting_implementing_act(Act),
    safety_component_ai_system(S),
    concerns(Act, S).

provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_109').
provenance(adopting_implementing_act/1, 'celex:32024R1689/oj#art_109').
provenance(concerns/2, 'celex:32024R1689/oj#art_109').
provenance(required_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').

references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11/par_2').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_109', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_109', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_109', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_109', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#chp_3/sec_2').
