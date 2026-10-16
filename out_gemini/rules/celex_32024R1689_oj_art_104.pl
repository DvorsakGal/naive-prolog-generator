% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2d41bacaa3bb3b1dba9232c7c5a1612f89937fd8d022972a90b0e4242ac71758
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
:- pred must_take_into_account/2, gloss('actor must take into account requirements when adopting acts'), source('celex:32024R1689/oj#art_104').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_104').
:- pred delegated_act/1, gloss('delegated act adopted pursuant to basic act'), source('celex:32024R1689/oj#art_104').
:- pred pursues_empowerment/2, gloss('delegated act is adopted pursuant to a specific legal basis'), source('celex:32024R1689/oj#art_104').
:- pred concerns_ai_safety_component/1, gloss('act concerns AI systems that are safety components'), source('celex:32024R1689/oj#art_104').

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').

must_take_into_account(Actor, requirements(high_risk_ai_systems)) :-
    commission(Actor),
    delegated_act(Act),
    pursues_empowerment(Act, 'celex:32013R0168/oj#art_22/par_5/unp_1'),
    concerns_ai_safety_component(Act).

concerns_ai_safety_component(Act) :-
    ai_system(S),
    safety_component(S),
    concerns_ai_safety_component(Act).

references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').
