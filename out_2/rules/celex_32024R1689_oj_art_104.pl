% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ac0f1316682fd31beece84f7ca7ba35331907162719712e4735ef675d1711405
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
:- pred must_take_into_account/2, gloss('obligation to consider requirements when adopting delegated acts'), source('celex:32024R1689/oj#art_104').
:- pred safety_component_ai_system/1, gloss('AI system that is a safety component'), source('celex:32024R1689/oj#art_104').
:- pred adopting_delegated_act/2, gloss('entity adopting a delegated act concerning an AI system'), source('celex:32024R1689/oj#art_104').

must_take_into_account(Actor, requirement(chapter_3_section_2)) :-
    adopting_delegated_act(Actor, _AI),
    safety_component_ai_system(_AI).

safety_component_ai_system(AI) :-
    ai_system(AI),
    safety_component(AI).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_act/2, 'celex:32024R1689/oj#art_104').

references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').
