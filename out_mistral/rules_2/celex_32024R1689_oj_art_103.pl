% unit       : celex:32024R1689/oj#art_103
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : da0f15f2876bd7c9a01fc5af0da25a2d65815619aeeb6c19d872038c7de283b3
% cached     : False
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting delegated acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_103').

must_take_into_account_requirements(adopting_delegated_acts, requirements(chapter_3_section_2)) :-
    ai_system_safety_component(S),
    delegated_act_concerning_ai_safety_components(A),
    concerns(A, S).

concerns(A, S) :-
    adopting_delegated_acts(A),
    ai_system_safety_component(S).

adopting_delegated_acts(A) :-
    delegated_act_concerning_ai_safety_components(A).

ai_system_safety_component(S) :-
    safety_component(S),
    ai_system(S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').
provenance(concerns/2, 'celex:32024R1689/oj#art_103').
provenance(adopting_delegated_acts/1, 'celex:32024R1689/oj#art_103').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_103').

references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
references('celex:32024R1689/oj#art_103', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_103', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_103', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_103', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_103', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#chp_3/sec_2').
