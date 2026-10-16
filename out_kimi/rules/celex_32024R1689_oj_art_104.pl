% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0c998a99fc2ac618b23b939e9d22ed0c74d34c7d335a397031b99761c8701f30
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
:- pred must_take_into_account/2, gloss('authority must take requirements into account when adopting delegated acts'), source('celex:32024R1689/oj#art_104').
:- pred delegated_act/1, gloss('act adopted under delegated powers'), source('celex:32024R1689/oj#art_104').
:- pred safety_component_of_ai_system/1, gloss('AI system that is a safety component within the meaning of the AI Act'), source('celex:32024R1689/oj#art_104').

must_take_into_account(Authority, requirements(Chapter3Section2)) :-
    delegated_act(Act),
    adopted_under(Act, 'celex:32013R0168/oj#art_22/par_5/unp_1'),
    concerning(Act, S),
    safety_component_of_ai_system(S),
    requirements(Chapter3Section2),
    chapter_3_section_2(Chapter3Section2).

safety_component_of_ai_system(S) :-
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_104').
provenance(safety_component_of_ai_system/1, 'celex:32024R1689/oj#art_104').

references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#art_104').
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
