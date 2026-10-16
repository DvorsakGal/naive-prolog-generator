% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 492ed0b8d3674342634cec0bf6cb56f35e578923d57c645fa6532949ae4b52c1
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred must_take_into_account_ai_safety_component_requirements/2, gloss('when adopting delegated or implementing acts concerning AI safety components, the requirements in Chapter 3 Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_106').

must_take_into_account_ai_safety_component_requirements(Actor, delegated_act_concerning(S)) :-
    ai_safety_component(S),
    delegated_act(delegated_act_concerning(S)),
    actor_adopting_delegated_act(Actor, delegated_act_concerning(S)),
    requirements_in_chapter_3_section_2(S).

must_take_into_account_ai_safety_component_requirements(Actor, implementing_act_concerning(S)) :-
    ai_safety_component(S),
    implementing_act(implementing_act_concerning(S)),
    actor_adopting_implementing_act(Actor, implementing_act_concerning(S)),
    requirements_in_chapter_3_section_2(S).

% The provision amends Directive (EU) 2016/797 by adding paragraph 12 to its Article 5.
% The actor is the Commission (implied by "when adopting delegated acts... and implementing acts").
% We use a generic actor variable since the EU regulation context implies the Commission,
% but the provision does not explicitly name the actor in the text given.

actor_adopting_delegated_act(commission, _).
actor_adopting_implementing_act(commission, _).

provenance(must_take_into_account_ai_safety_component_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(actor_adopting_delegated_act/2, 'celex:32024R1689/oj#art_106').
provenance(actor_adopting_implementing_act/2, 'celex:32024R1689/oj#art_106').

references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').
