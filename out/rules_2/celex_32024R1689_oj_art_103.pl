% unit       : celex:32024R1689/oj#art_103
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : gpt-oss:120b-cloud
% prompt sha : a5fa00dbb0e5b5c1235199a858fbfa05cc8f0d0b641ae71281e7aefa02d3a2f1
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred delegated_act/1, gloss('delegated act adopted pursuant to the AI regulation'), source('celex:32024R1689/oj#art_103').
:- pred act_concerns_ai_system/2, gloss('delegated act concerns a given AI system'), source('celex:32024R1689/oj#art_103').
:- pred act_is_delegated/1, gloss('act is a delegated act'), source('celex:32024R1689/oj#art_103').
:- pred concerning_safety_component_ai_system/1, gloss('delegated act concerns an AI system that is a safety component'), source('celex:32024R1689/oj#art_103').
:- pred required_consideration_of_requirements_chapter_3_section_2/1, gloss('requirements of chapter 3 section 2 shall be taken into account'), source('celex:32024R1689/oj#art_103').

act_is_delegated(Act) :-
    delegated_act(Act).

concerning_safety_component_ai_system(Act) :-
    act_is_delegated(Act),
    act_concerns_ai_system(Act, S),
    safety_component(S).

required_consideration_of_requirements_chapter_3_section_2(Act) :-
    delegated_act(Act),
    concerning_safety_component_ai_system(Act).

provenance(act_is_delegated/1, 'celex:32024R1689/oj#art_103').
provenance(concerning_safety_component_ai_system/1, 'celex:32024R1689/oj#art_103').
provenance(required_consideration_of_requirements_chapter_3_section_2/1, 'celex:32024R1689/oj#art_103').

references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_103', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_103', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_103', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_103', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#chp_3/sec_2').
