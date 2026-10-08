% unit       : celex:32024R1689/oj#art_104
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : gpt-oss:120b-cloud
% prompt sha : 90519fa5439797fba268034c044a0ecbb0cfeff3eecd9843be6b1361672f6417
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred safety_component_ai_system/1, gloss('AI system that is a safety component'), source('celex:32024R1689/oj#art_104').
:- pred adopt_delegated_act/2, gloss('adoption of a delegated act concerning an AI system'), source('celex:32024R1689/oj#art_104').
:- pred required_consideration_of_requirements/2, gloss('requirement to take into account specific requirements when adopting delegated acts'), source('celex:32024R1689/oj#art_104').
:- pred requirement_chapter3_section2/1, gloss('requirements set out in chapter 3 section 2'), source('celex:32024R1689/oj#art_104').
:- pred delegated_act/1, gloss('delegated act pursuant to the AI Regulation'), source('celex:32024R1689/oj#art_104').

safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).

adopt_delegated_act(_Actor, Act) :-
    delegated_act(Act).

required_consideration_of_requirements(Actor, Req) :-
    adopt_delegated_act(Actor, Act),
    safety_component_ai_system(Act),
    requirement_chapter3_section2(Req).

requirement_chapter3_section2(requirements_ch3_sec2).

delegated_act(_).

provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_104').
provenance(adopt_delegated_act/2, 'celex:32024R1689/oj#art_104').
provenance(required_consideration_of_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(requirement_chapter3_section2/1, 'celex:32024R1689/oj#art_104').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_104').

references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').
