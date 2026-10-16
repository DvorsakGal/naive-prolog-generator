% unit       : celex:32024R1689/oj#art_109
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 6c43fea0ce514dd71b3b041b3b9a804b274e1a5d872893ddc09361fe03d618f4
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 70fe4f3ea7eb092669a7c7db8be5de6352bc4438bf6d43bd13df430da8409eb3
% cached     : False
% title      : Amendment to <ref id="celex:32019R2144/oj"/>
:- pred must_take_into_account_requirements/2, gloss('Commission must consider Chapter III Section 2 requirements when adopting implementing acts for AI safety components'), source('celex:32024R1689/oj#art_109').
:- pred implementing_act_concerns_ai_safety_component/1, gloss('Implementing act under Regulation 2019/2144 Art 11(2) concerns an AI system that is a safety component'), source('celex:32024R1689/oj#art_109').

must_take_into_account_requirements(commission, implementing_act(A)) :-
    implementing_act_concerns_ai_safety_component(A).

implementing_act_concerns_ai_safety_component(A) :-
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(implementing_act_concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_109').

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
