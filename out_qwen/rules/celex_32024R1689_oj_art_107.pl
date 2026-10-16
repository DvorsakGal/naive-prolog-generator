% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ad87ec98990acbec31c13fd8ed1a3553ec7c23526dd7ac7215a4cd623d239c2e
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred must_take_into_account_requirements/2, gloss('Commission must consider requirements when adopting delegated acts'), source('celex:32024R1689/oj#art_107').
:- pred delegated_act_concerning_ai_safety_component/1, gloss('delegated act pursuant to Regulation 2018/858 Art 5(3) concerning AI safety components'), source('celex:32024R1689/oj#art_107').

must_take_into_account_requirements(commission, delegated_act_concerning_ai_safety_component(A)) :-
    delegated_act_concerning_ai_safety_component(A).

delegated_act_concerning_ai_safety_component(A) :-
    adopted_pursuant_to_art_5_par_3_of_2018_858(A),
    concerns_ai_system_as_safety_component(A).

concerns_ai_system_as_safety_component(A) :-
    ai_system(S),
    safety_component(S),
    subject_matter(A, S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_107').
provenance(delegated_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_107').

references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').
