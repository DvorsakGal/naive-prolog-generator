% unit       : celex:32024R1689/oj#art_103
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 349d00f858cb7b7b6fb22165cd81c15da3becf0b354b5ac180f4c3554f9dd300
% cached     : False
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
:- pred must_take_into_account/2, gloss('obligation to consider specified requirements when adopting delegated acts'), source('celex:32024R1689/oj#art_103').
:- pred delegated_act_concerning/2, gloss('delegated act concerning specified subject matter'), source('celex:32024R1689/oj#art_103').
:- pred artificial_intelligence_safety_component/1, gloss('AI system which is a safety component'), source('celex:32024R1689/oj#art_103').

artificial_intelligence_safety_component(S) :-
    ai_system(S),
    safety_component(S).

delegated_act_concerning(Act, artificial_intelligence_safety_component(S)) :-
    delegated_act(Act),
    artificial_intelligence_safety_component(S).

must_take_into_account(Adopter, requirements(chapter_3_section_2)) :-
    delegated_act_concerning(Act, artificial_intelligence_safety_component(_S)),
    adopts(Adopter, Act).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').
provenance(delegated_act_concerning/2, 'celex:32024R1689/oj#art_103').
provenance(artificial_intelligence_safety_component/1, 'celex:32024R1689/oj#art_103').

references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_103', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_103', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_103', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_103', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#chp_3/sec_2').
