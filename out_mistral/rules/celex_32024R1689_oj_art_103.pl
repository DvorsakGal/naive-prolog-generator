% unit       : celex:32024R1689/oj#art_103
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0d5672aaca1fa6378ce4f0f855e686713a8a0084d4f814644e529fa96e88af5d
% cached     : False
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
:- pred must_take_into_account_requirements(Commission, DelegatedAct) , gloss('Commission must take into account Chapter 3 Section 2 requirements when adopting delegated acts concerning AI systems that are safety components'), source('celex:32024R1689/oj#art_103').
:- pred delegated_act_concerning_safety_component_ai_system(DelegatedAct) , gloss('delegated act concerning artificial intelligence systems which are safety components'), source('celex:32024R1689/oj#art_103').
:- pred ai_system_safety_component(S) , gloss('AI system which is a safety component within the meaning of this Regulation'), source('celex:32024R1689/oj#art_103').

must_take_into_account_requirements(Commission, DelegatedAct) :-
    delegated_act_concerning_safety_component_ai_system(DelegatedAct),
    ai_system_safety_component(S),
    delegated_act_concerns(DelegatedAct, S).

delegated_act_concerning_safety_component_ai_system(DelegatedAct) :-
    delegated_act(DelegatedAct),
    ai_system_safety_component(S),
    delegated_act_concerns(DelegatedAct, S).

ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').
provenance(delegated_act_concerning_safety_component_ai_system/1, 'celex:32024R1689/oj#art_103').
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
