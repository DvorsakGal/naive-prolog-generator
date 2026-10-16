% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ee049a9f3a549e2eadb77d75edba8b8972e3918bc7a31c109c9660584df85d61
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred must_take_into_account_requirements(Commission, Regulation, AI_System), gloss('Commission must take into account Chapter 3 Section 2 requirements when adopting delegated acts concerning AI systems that are safety components'), source('celex:32024R1689/oj#art_107').
:- pred delegated_act_concerning_safety_component_ai_system(Act, AI_System), gloss('delegated act adopted under Regulation 2018/858 art 5(3) concerning AI systems that are safety components'), source('celex:32024R1689/oj#art_107').
:- pred ai_system_safety_component_of_regulation(AI_System, Regulation), gloss('AI system is a safety component within the meaning of the AI Act in relation to a given regulation'), source('celex:32024R1689/oj#art_107').

must_take_into_account_requirements(Commission, 'celex:32018R0858/oj', S) :-
    commission(Commission),
    delegated_act_concerning_safety_component_ai_system(_Act, S),
    ai_system_safety_component_of_regulation(S, 'celex:32024R1689/oj').

delegated_act_concerning_safety_component_ai_system(Act, S) :-
    adopted_delegated_act(Act, 'celex:32018R0858/oj#art_5/par_3'),
    concerns(Act, S),
    ai_system(S),
    safety_component(S).

ai_system_safety_component_of_regulation(S, 'celex:32024R1689/oj') :-
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account_requirements/3, 'celex:32024R1689/oj#art_107').
provenance(delegated_act_concerning_safety_component_ai_system/2, 'celex:32024R1689/oj#art_107').
provenance(ai_system_safety_component_of_regulation/2, 'celex:32024R1689/oj#art_107').

references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
