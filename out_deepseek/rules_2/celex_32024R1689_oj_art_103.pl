% unit       : celex:32024R1689/oj#art_103
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 3ebadcec5dfd8f3bedb21a6c0950e6a2bc5bbb6f8ac6940b62543b5c852295e5
% cached     : False
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting delegated acts concerning AI safety components, must take into account Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_103').

must_take_into_account_requirements(Commission, ai_safety_component_system(S)) :-
    safety_component(S),
    ai_system(S),
    adopting_delegated_act(Commission, S).

adopting_delegated_act(Commission, S) :-
    % The Commission adopts delegated acts pursuant to Regulation 167/2013 Art 17(5)
    true.

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').

references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_103', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_103', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_103', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_103', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_103', 'celex:32020L1828/oj').
