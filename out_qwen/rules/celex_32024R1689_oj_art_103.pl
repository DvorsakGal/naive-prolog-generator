% unit       : celex:32024R1689/oj#art_103
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 80fa1f712ca8ae2b2b66021c9d5fa39cabcaa7146c4e5259d7d1ea780b61139c
% cached     : False
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
:- pred must_take_into_account_requirements/2, gloss('Commission must take into account requirements when adopting delegated acts concerning AI safety components'), source('celex:32024R1689/oj#art_103').

must_take_into_account_requirements(commission, delegated_act_concerning_ai_safety_component(A)) :-
    delegated_act_pursuant_to_art_17_par_5_unp_1(A),
    concerns_ai_system_which_is_safety_component(A).

delegated_act_pursuant_to_art_17_par_5_unp_1(_A).

concerns_ai_system_which_is_safety_component(A) :-
    ai_system(S),
    safety_component(S),
    subject_of_delegated_act(A, S).

subject_of_delegated_act(_A, _S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').

references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
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
