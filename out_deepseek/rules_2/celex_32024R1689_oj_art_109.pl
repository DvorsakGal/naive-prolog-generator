% unit       : celex:32024R1689/oj#art_109
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 6c43fea0ce514dd71b3b041b3b9a804b274e1a5d872893ddc09361fe03d618f4
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 42609520de280e1b56f244faead69345ea259d9303a875fa2346a1d9bead7fab
% cached     : False
% title      : Amendment to <ref id="celex:32019R2144/oj"/>
% Article 109 amends Regulation 2019/2144 to require that when adopting implementing acts
% concerning AI systems that are safety components, the requirements of Chapter III Section 2
% of the AI Act must be taken into account.

:- pred must_take_into_account_requirements/2, gloss('when adopting implementing acts, must take into account requirements'), source('celex:32024R1689/oj#art_109').

must_take_into_account_requirements(implementing_act(Act), requirements(chapter_3_section_2)) :-
    adopted_pursuant_to(Act, 'celex:32019R2144/oj#art_11/par_2'),
    concerns_ai_safety_components(Act).

concerns_ai_safety_components(Act) :-
    adopted_pursuant_to(Act, _),
    ai_system(S),
    safety_component(S),
    act_concerns(Act, S).

% Supporting predicates
:- pred adopted_pursuant_to/2, gloss('implementing act adopted pursuant to a provision'), source('celex:32024R1689/oj#art_109').
:- pred act_concerns/2, gloss('implementing act concerns a specific system'), source('celex:32024R1689/oj#art_109').

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(adopted_pursuant_to/2, 'celex:32024R1689/oj#art_109').
provenance(act_concerns/2, 'celex:32024R1689/oj#art_109').

references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11/par_2').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_109', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_109', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_109', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_109', 'celex:32020L1828/oj').
