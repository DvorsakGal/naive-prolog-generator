% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b6d77319c5d0af5fb51eb16f9c1415f41cab1f9db3bc94f38685d5cc7ff4eb99
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred adopted_act/1, gloss('act adopted pursuant to directive 2016/797'), source('celex:32024R1689/oj#art_106').
:- pred takes_into_account/2, gloss('adoption of an act takes into account specified requirements'), source('celex:32024R1689/oj#art_106').

% Article 106 adds paragraph 12 to Article 5 of Directive (EU) 2016/797:
% When adopting delegated acts pursuant to paragraph 1 and implementing acts pursuant
% to paragraph 11 concerning AI systems which are safety components within the meaning
% of this Regulation, the requirements set out in Chapter III, Section 2 shall be taken into account.

must_comply(Act, take_into_account(chapter_3_section_2)) :-
    adopted_act(Act),
    concerns_ai_safety_component(Act).

takes_into_account(Act, chapter_3_section_2) :-
    adopted_act(Act),
    concerns_ai_safety_component(Act).

provenance(must_comply/2, 'celex:32024R1689/oj#art_106').
provenance(takes_into_account/2, 'celex:32024R1689/oj#art_106').

references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').
