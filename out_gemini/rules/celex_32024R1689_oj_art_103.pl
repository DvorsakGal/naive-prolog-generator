% unit       : celex:32024R1689/oj#art_103
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ec4336fc1f25bd94751383b68ad058a27fe671d83cebe17466b3c50dafc13fa7
% cached     : False
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
:- pred delegated_act/1, gloss('act adopted by the Commission pursuant to delegated powers'), source('celex:32024R1689/oj#art_103').
:- pred adopts_delegated_act/2, gloss('authority adopts a delegated act concerning a specific scope'), source('celex:32024R1689/oj#art_103').
:- pred concerns_ai_safety_component/1, gloss('delegated act concerns AI systems that are safety components'), source('celex:32024R1689/oj#art_103').
:- pred must_take_into_account/2, gloss('actor must take into account requirements or considerations in an act'), source('celex:32024R1689/oj#art_103').

concerns_ai_safety_component(Act) :-
    delegated_act(Act),
    ai_system(S),
    safety_component(S).

must_take_into_account(Actor, requirements(chapter_iii_section_2)) :-
    adopts_delegated_act(Actor, Act),
    concerns_ai_safety_component(Act).

provenance(concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_103').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').

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
