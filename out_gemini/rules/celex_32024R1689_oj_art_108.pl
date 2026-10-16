% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c7d2dd87c0b8ee195069c4650dc6604752b0799223a3937ee6bd754003f15fec
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred must_take_into_account/2, gloss('actor must take into account requirements when adopting acts'), source('celex:32024R1689/oj#art_108').
:- pred adopts_act/2, gloss('authority adopts an implementing or delegated act concerning an AI system'), source('celex:32024R1689/oj#art_108').
:- pred safety_component_ai_system/1, gloss('AI system which is a safety component'), source('celex:32024R1689/oj#art_108').

safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).

must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = implementing_act_article_17_regulation_2018_1139(S),
    safety_component_ai_system(S).

must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = delegated_act_article_19_regulation_2018_1139(S),
    safety_component_ai_system(S).

must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = implementing_act_article_43_regulation_2018_1139(S),
    safety_component_ai_system(S).

must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = delegated_act_article_47_regulation_2018_1139(S),
    safety_component_ai_system(S).

must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = implementing_act_article_57_regulation_2018_1139(S),
    safety_component_ai_system(S).

must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = delegated_act_article_58_regulation_2018_1139(S),
    safety_component_ai_system(S).

provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_108').

references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').
