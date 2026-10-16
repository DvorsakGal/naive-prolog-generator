% unit       : celex:32024R1689/oj#art_104
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d0780b2fe5f94a9292d9acbbd5752ed119937d0ee0392aaf8ce9d029e768a095
% cached     : False
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
:- pred must_take_into_account_requirements(Commission, delegated_act) :- true.
:- pred delegated_act_concerning_ai_safety_components(delegated_act) :- true.
:- pred ai_safety_component_within_meaning_of_ai_act(S) :- true.

must_take_into_account_requirements(Commission, Act) :-
    delegated_act_concerning_ai_safety_components(Act),
    adopted_by(Commission, Act),
    pursuant_to('celex:32013R0168/oj#art_22/par_5/unp_1').

delegated_act_concerning_ai_safety_components(Act) :-
    concerns(Act, S),
    ai_safety_component_within_meaning_of_ai_act(S).

ai_safety_component_within_meaning_of_ai_act(S) :-
    ai_system(S),
    safety_component(S).

adopted_by(Commission, Act) :-
    commission(Commission),
    adopts(Commission, Act).

concerns(Act, S) :-
    subject_matter(Act, S).

subject_matter(Act, S) :-
    about(Act, S).

about(Act, S) :-
    act_concerns(Act, S).

act_concerns(Act, S) :-
    delegated_act(Act),
    ai_system(S),
    safety_component(S).

commission(commission).

delegated_act(_Act).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(delegated_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_104').
provenance(ai_safety_component_within_meaning_of_ai_act/1, 'celex:32024R1689/oj#art_104').

references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').
