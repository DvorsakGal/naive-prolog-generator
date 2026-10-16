% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 66200a55dce248fed92e4961c54378da609af74a304fdfb82ccec6d6f0a2ba49
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting delegated and implementing acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_106').
:- pred ai_system_safety_component_of_ai_act/1, gloss('AI system which is a safety component within the meaning of the AI Act'), source('celex:32024R1689/oj#art_106').

ai_system_safety_component_of_ai_act(S) :-
    ai_system(S),
    safety_component(S),
    ai_system_safety_component(S).

must_take_into_account_requirements(adopting_delegated_or_implementing_acts, chapter_3_section_2_requirements) :-
    ai_system_safety_component_of_ai_act(S),
    concerning(S, adopting_delegated_or_implementing_acts).

concerning(S, adopting_delegated_or_implementing_acts) :-
    delegated_act_concerning_ai_safety_components(S).

concerning(S, adopting_delegated_or_implementing_acts) :-
    implementing_act_concerning_ai_safety_components(S).

:- pred delegated_act_concerning_ai_safety_components/1, gloss('delegated act concerning AI systems which are safety components'), source('celex:32024R1689/oj#art_106').
:- pred implementing_act_concerning_ai_safety_components/1, gloss('implementing act concerning AI systems which are safety components'), source('celex:32024R1689/oj#art_106').

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(ai_system_safety_component_of_ai_act/1, 'celex:32024R1689/oj#art_106').
provenance(delegated_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_106').
provenance(implementing_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_106').

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
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
