% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 48b6491a930d5b81f802a0c3b562afc3e8cd171d9f11c690f4271d3f77cc8fee
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting delegated acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_107').
:- pred adopting_delegated_acts_concerning_ai_safety_components/1, gloss('adopting delegated acts pursuant to Article 5(3) of Regulation 2018/858 concerning AI systems which are safety components'), source('celex:32024R1689/oj#art_107').

must_take_into_account_requirements(Act, chapter_3_section_2_requirements) :-
    adopting_delegated_acts_concerning_ai_safety_components(Act).

adopting_delegated_acts_concerning_ai_safety_components(Act) :-
    delegated_act_concerning_ai_safety_components(Act),
    ai_system_safety_component(S),
    Act = delegated_act(S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_107').
provenance(adopting_delegated_acts_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_107').

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
