% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9b7b7c7b4f367751aaa7cc301587fa0cb2e51ba85ca18585c09976b6d13f78ca
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred delegated_act/1, gloss('delegated act concerning AI systems'), source('celex:32024R1689/oj#art_107').
:- pred adopts_delegated_act/2, gloss('entity adopts a delegated act'), source('celex:32024R1689/oj#art_107').
:- pred pursuant_to/2, gloss('act is pursuant to a legal provision'), source('celex:32024R1689/oj#art_107').
:- pred concerning_ai_system/2, gloss('act concerns an AI system'), source('celex:32024R1689/oj#art_107').
:- pred must_take_into_account/2, gloss('actor must take into account the specified requirements'), source('celex:32024R1689/oj#art_107').

must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    delegated_act(Act),
    adopts_delegated_act(Actor, Act),
    pursuant_to(Act, art_5_par_3),
    concerning_ai_system(Act, S),
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').

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
