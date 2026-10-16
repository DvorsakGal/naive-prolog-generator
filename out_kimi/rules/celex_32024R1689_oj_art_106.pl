% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4f2472c5587c914d5b4983c39adf8ebbd170182f99924d611407402c780d1019
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred added_paragraph/2, gloss('paragraph added by amendment'), source('celex:32024R1689/oj#art_106').
:- pred delegated_act_concerning/1, gloss('delegated act concerning AI safety components'), source('celex:32024R1689/oj#art_106').
:- pred implementing_act_concerning/1, gloss('implementing act concerning AI safety components'), source('celex:32024R1689/oj#art_106').
:- pred must_take_into_account/2, gloss('obligation to take requirements into account'), source('celex:32024R1689/oj#art_106').

added_paragraph('celex:32016L0797/oj#art_5', 'celex:32024R1689/oj#art_5/par_12').

delegated_act_concerning(Act) :-
    Act = delegated_act('celex:32016L0797/oj#art_5/par_1', ai_safety_component).

implementing_act_concerning(Act) :-
    Act = implementing_act('celex:32016L0797/oj#art_5/par_11', ai_safety_component).

ai_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    within_meaning_of(S, 'celex:32024R1689/oj').

must_take_into_account(Authority, requirements('celex:32024R1689/oj#chp_3/sec_2')) :-
    delegated_act_concerning(Act),
    adopting(Authority, Act).

must_take_into_account(Authority, requirements('celex:32024R1689/oj#chp_3/sec_2')) :-
    implementing_act_concerning(Act),
    adopting(Authority, Act).

provenance(added_paragraph/2, 'celex:32024R1689/oj#art_106').
provenance(delegated_act_concerning/1, 'celex:32024R1689/oj#art_106').
provenance(implementing_act_concerning/1, 'celex:32024R1689/oj#art_106').
provenance(ai_safety_component/1, 'celex:32024R1689/oj#art_106').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_106').

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
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').
