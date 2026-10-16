% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 011db574c7edb279e132a0cdd860a36f030b303a4e1207339c31dfc63048a7ca
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred delegated_act/1, gloss('delegated act adopted pursuant to Article 5(3) of Regulation (EU) 2018/858'), source('celex:32024R1689/oj#art_107').
:- pred concerns_ai_safety_component/1, gloss('act concerns AI systems which are safety components within the meaning of Regulation (EU) 2024/1689'), source('celex:32024R1689/oj#art_107').
:- pred must_take_into_account/2, gloss('entity adopting a measure must take into account specified requirements'), source('celex:32024R1689/oj#art_107').

% Article 107 amending Regulation (EU) 2018/858 by adding Article 5(4):
% When adopting delegated acts pursuant to Article 5(3) concerning AI systems
% which are safety components within the meaning of Regulation (EU) 2024/1689,
% the requirements set out in Chapter III, Section 2 shall be taken into account.
must_take_into_account(commission, requirements(chapter_iii_section_2, Act)) :-
    delegated_act(Act),
    concerns_ai_safety_component(Act).

concerns_ai_safety_component(Act) :-
    delegated_act(Act),
    ai_system(S),
    safety_component(S).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').
provenance(concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_107').

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
