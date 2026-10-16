% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : ea3a86634f69e3c1dc237f176c543beaf17401ecd8f8ba2f01f9071be971bee4
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting acts concerning AI safety components, the requirements of Chapter III Section 2 must be taken into account'), source('celex:32024R1689/oj#art_106').

must_take_into_account_requirements(Commission, ai_safety_component_system(S)) :-
    adopting_delegated_act(Commission, S),
    ai_system(S),
    safety_component(S).

must_take_into_account_requirements(Commission, ai_safety_component_system(S)) :-
    adopting_implementing_act(Commission, S),
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').

references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
