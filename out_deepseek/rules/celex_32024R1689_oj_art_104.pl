% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 41a4c289dec7c797b0a9f37f8e070e12b044e3b1fd8e2a9ec206b92b0a116429
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
:- pred must_take_into_account/2, gloss('entity adopting delegated acts must take into account AI requirements'), source('celex:32024R1689/oj#art_104').

must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_delegated_acts(Commission, safety_components_ai_systems).

adopting_delegated_acts(Commission, safety_components_ai_systems) :-
    delegated_acts_pursuant_to(Commission, 'celex:32013R0168/oj#art_22/par_5/unp_1'),
    safety_component(S),
    ai_system(S).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_acts/2, 'celex:32024R1689/oj#art_104').

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
