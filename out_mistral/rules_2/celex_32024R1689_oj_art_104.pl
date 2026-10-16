% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : eb54cc33738e4c514e3b03c0cb9adca32649c2f8f9241bf920a961127eb120c0
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting delegated acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_104').

must_take_into_account_requirements(Commission, requirements(chapter_3_section_2)) :-
    adopting_delegated_acts(Commission, concerning(ai_systems_safety_components)).

adopting_delegated_acts(Commission, concerning(ai_systems_safety_components)) :-
    member_state(Commission),
    ai_system_safety_component(S),
    delegated_act_concerning_ai_safety_components(A),
    adopts(Commission, A).

ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_acts/2, 'celex:32024R1689/oj#art_104').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_104').

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
