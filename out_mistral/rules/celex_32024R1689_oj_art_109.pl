% unit       : celex:32024R1689/oj#art_109
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 6c43fea0ce514dd71b3b041b3b9a804b274e1a5d872893ddc09361fe03d618f4
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 85dcefb76e747df6c983a8cf1aa285117d5d78105b362aceaf48d5f424fa640e
% cached     : False
% title      : Amendment to <ref id="celex:32019R2144/oj"/>
:- pred must_take_into_account_requirements/2, gloss('Commission must take into account AI Act Chapter 3 Section 2 requirements when adopting implementing acts for AI safety components'), source('celex:32024R1689/oj#art_109').
:- pred adopting_implementing_acts/2, gloss('adopting implementing acts pursuant to a specific legal basis concerning a subject matter'), source('celex:32024R1689/oj#art_109').
:- pred ai_system_safety_component/1, gloss('AI system that is a safety component within the meaning of the AI Act'), source('celex:32024R1689/oj#art_109').

must_take_into_account_requirements(Commission, requirements(chapter_3, section_2)) :-
    adopting_implementing_acts(Commission, ai_systems_safety_components),
    ai_system_safety_component(S),
    safety_component(S).

ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).

adopting_implementing_acts(Commission, ai_systems_safety_components) :-
    ai_system_safety_component(_S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(adopting_implementing_acts/2, 'celex:32024R1689/oj#art_109').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_109').

references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_2').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_109', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_109', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_109', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#chp_3/sec_2').
