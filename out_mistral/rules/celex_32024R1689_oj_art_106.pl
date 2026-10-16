% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a017af5dee0fdd09c4a9dda472f463f1d406c1b2666d773958854a8104534910
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred must_take_into_account_requirements/2, gloss('obligation to consider Chapter 3 Section 2 requirements when adopting delegated or implementing acts concerning AI systems that are safety components'), source('celex:32024R1689/oj#art_106').
:- pred ai_system_safety_component/1, gloss('AI system that is a safety component within the meaning of the AI Act'), source('celex:32024R1689/oj#art_106').
:- pred delegated_or_implementing_act/1, gloss('delegated act or implementing act adopted under Regulation 2016/797'), source('celex:32024R1689/oj#art_106').

ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).

delegated_or_implementing_act(A) :-
    delegated_act(A).
delegated_or_implementing_act(A) :-
    implementing_act(A).

must_take_into_account_requirements(A, S) :-
    delegated_or_implementing_act(A),
    ai_system_safety_component(S),
    act_concerns(A, S).

act_concerns(A, S) :-
    adopts_delegated_act_under(A, 'celex:32016L0797/oj#art_5/par_1'),
    concerns_ai_system_safety_component(A, S).
act_concerns(A, S) :-
    adopts_implementing_act_under(A, 'celex:32016L0797/oj#art_5/par_11'),
    concerns_ai_system_safety_component(A, S).

concerns_ai_system_safety_component(A, S) :-
    ai_system_safety_component(S),
    subject_matter(A, S).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_106').
provenance(delegated_or_implementing_act/1, 'celex:32024R1689/oj#art_106').

references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
