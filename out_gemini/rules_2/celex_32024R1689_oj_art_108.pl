% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 16ad20c2604e5f7d920d3b6aab8b053668833184ae0a33066da53ff2e807800f
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred must_take_into_account/2, gloss('actor adopting act must take specified requirements into account'), source('celex:32024R1689/oj#art_108').
:- pred implementing_act_pursuant_to/2, gloss('act is an implementing act adopted pursuant to specified provision'), source('celex:32024R1689/oj#art_108').
:- pred delegated_act_pursuant_to/2, gloss('act is a delegated act adopted pursuant to specified provision'), source('celex:32024R1689/oj#art_108').
:- pred adopts_act/2, gloss('actor adopts an act'), source('celex:32024R1689/oj#art_108').

% Article 108(1): Regulation (EU) 2018/1139 Article 17(3)
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    implementing_act_pursuant_to(Act, 'celex:32018R1139/oj#art_17/par_1'),
    concerns_ai_safety_component(Act).

% Article 108(2): Regulation (EU) 2018/1139 Article 19(4)
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    ( delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_19/par_1')
    ; delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_19/par_2')
    ),
    concerns_ai_safety_component(Act).

% Article 108(3): Regulation (EU) 2018/1139 Article 43(4)
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    implementing_act_pursuant_to(Act, 'celex:32018R1139/oj#art_43/par_1'),
    concerns_ai_safety_component(Act).

% Article 108(4): Regulation (EU) 2018/1139 Article 47(3)
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    ( delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_47/par_1')
    ; delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_47/par_2')
    ),
    concerns_ai_safety_component(Act).

% Article 108(5): Regulation (EU) 2018/1139 Article 57
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    implementing_act_pursuant_to(Act, 'celex:32018R1139/oj#art_57'),
    concerns_ai_safety_component(Act).

% Article 108(6): Regulation (EU) 2018/1139 Article 58(3)
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    ( delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_58/par_1')
    ; delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_58/par_2')
    ),
    concerns_ai_safety_component(Act).

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
