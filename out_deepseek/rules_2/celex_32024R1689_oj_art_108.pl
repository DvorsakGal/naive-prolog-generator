% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : f5c5bb7c92b7c8abfe5afac2b596f258e683e62f1f1ec0115e700d416418a04c
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred must_take_into_account_chapter_3_section_2_requirements/1, gloss('when adopting acts concerning AI systems that are safety components, the requirements of Chapter 3 Section 2 must be taken into account'), source('celex:32024R1689/oj#art_108').

must_take_into_account_chapter_3_section_2_requirements(Act) :-
    adopting_act_concerning_ai_safety_component(Act).

adopting_act_concerning_ai_safety_component(Act) :-
    implementing_act(Act),
    concerns_ai_safety_component(Act).

adopting_act_concerning_ai_safety_component(Act) :-
    delegated_act(Act),
    concerns_ai_safety_component(Act).

concerns_ai_safety_component(Act) :-
    concerns(Act, System),
    ai_system(System),
    safety_component(System).

provenance(must_take_into_account_chapter_3_section_2_requirements/1, 'celex:32024R1689/oj#art_108').
provenance(adopting_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_108').
provenance(concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_108').

references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').
