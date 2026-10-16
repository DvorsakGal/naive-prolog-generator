% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4fa33d4b4c8f1a6b9af25e737ef7362a1e9bdbd6081cf47760877ffb6f8c77e2
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
% This provision amends another regulation to require that when adopting delegated acts
% concerning AI systems that are safety components, the requirements of Chapter III Section 2
% of the AI Act must be taken into account.

:- pred must_take_into_account_requirements/2, gloss('when adopting delegated acts, must take into account requirements'), source('celex:32024R1689/oj#art_104').

must_take_into_account_requirements(adoption(delegated_act), requirements(chapter_3_section_2)) :-
    delegated_act_concerns(delegated_act, ai_system),
    safety_component(ai_system).

delegated_act_concerns(Act, ai_system) :-
    adoption_of_delegated_act(Act),
    concerns(Act, ai_system).

:- pred adoption_of_delegated_act/1, gloss('adoption of a delegated act'), source('celex:32024R1689/oj#art_104').
:- pred concerns/2, gloss('act concerns a subject matter'), source('celex:32024R1689/oj#art_104').

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(adoption_of_delegated_act/1, 'celex:32024R1689/oj#art_104').
provenance(concerns/2, 'celex:32024R1689/oj#art_104').

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
