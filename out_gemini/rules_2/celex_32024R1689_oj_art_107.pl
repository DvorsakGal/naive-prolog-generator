% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 675b9ccdfce699f2ccc0c2ac3a2a2405210b283f7a1006ca0dd7accd9713ab3b
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred delegated_act_pursuant_to_regulation_2018_858_art_5_par_3/1,
   gloss('delegated act adopted pursuant to Article 5(3) of Regulation (EU) 2018/858'),
   source('celex:32024R1689/oj#art_107').

:- pred must_take_into_account/2,
   gloss('actor must take into account specific requirements when acting'),
   source('celex:32024R1689/oj#art_107').

must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    commission(Actor),
    delegated_act_pursuant_to_regulation_2018_858_art_5_par_3(Act),
    concerns_ai_safety_component(Act).

provenance(delegated_act_pursuant_to_regulation_2018_858_art_5_par_3/1, 'celex:32024R1689/oj#art_107').
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
