% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 788b5df1aa25bde7d75b4c5ea99302c2746f8855c8deead29e10d70294584f73
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting delegated acts, must take into account AI requirements'), source('celex:32024R1689/oj#art_107').

must_take_into_account_requirements(Commission, safety_component_ai_system(S)) :-
    safety_component(S),
    ai_system(S),
    adopting_delegated_act(Commission, S).

adopting_delegated_act(Commission, S) :-
    % The provision refers to delegated acts adopted pursuant to Article 5(3) of Regulation (EU) 2018/858
    % concerning AI systems which are safety components.
    true.

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_107').

references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
