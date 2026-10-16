% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a24bab15b2b4cc66b0267681fb0d3af14ff2472b9501318d168bbf4162bd55eb
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred must_take_into_account_requirements/2, gloss('obligation to consider requirements when adopting acts concerning AI safety components'), source('celex:32024R1689/oj#art_106').
:- pred delegated_act_concerning_ai_safety_component/1, gloss('delegated act pursuant to Directive 2016/797 Art 5(1) concerning AI systems that are safety components'), source('celex:32024R1689/oj#art_106').
:- pred implementing_act_concerning_ai_safety_component/1, gloss('implementing act pursuant to Directive 2016/797 Art 5(11) concerning AI systems that are safety components'), source('celex:32024R1689/oj#art_106').

must_take_into_account_requirements(commission, Act) :-
    delegated_act_concerning_ai_safety_component(Act).

must_take_into_account_requirements(commission, Act) :-
    implementing_act_concerning_ai_safety_component(Act).

delegated_act_concerning_ai_safety_component(Act) :-
    ai_system(S),
    safety_component(S).

implementing_act_concerning_ai_safety_component(Act) :-
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(delegated_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_106').
provenance(implementing_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_106').

references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').
