% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b4b00146d9e9a3b1000d7e30edb07dbb1206dbc568b273b8bcc342fc896a3c71
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
:- pred must_take_into_account_requirements/2, gloss('obligation to consider requirements when adopting delegated acts'), source('celex:32024R1689/oj#art_104').
:- pred adopting_delegated_act_concerning_safety_component_ai_system/2, gloss('adoption of delegated act concerning AI system that is a safety component'), source('celex:32024R1689/oj#art_104').

must_take_into_account_requirements(Actor, requirements(chapter_3_section_2)) :-
    adopting_delegated_act_concerning_safety_component_ai_system(Actor, S),
    ai_system(S),
    safety_component(S).

adopting_delegated_act_concerning_safety_component_ai_system(_Actor, _S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_act_concerning_safety_component_ai_system/2, 'celex:32024R1689/oj#art_104').

references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').
