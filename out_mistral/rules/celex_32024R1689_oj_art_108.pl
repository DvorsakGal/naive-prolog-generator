% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dd39a779313e1567d285813d576ee781ececed6cab2fb43bee9cd808a4c07205
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred must_take_into_account/2, gloss('requirements of AI Act Chapter 3 Section 2 must be taken into account when adopting specified acts concerning AI safety components'), source('celex:32024R1689/oj#art_108').
:- pred ai_safety_component/1, gloss('AI system which is a safety component within the meaning of the AI Act'), source('celex:32024R1689/oj#art_108').
:- pred adopting_implementing_act/2, gloss('adopting an implementing act pursuant to a specified legal basis concerning AI safety components'), source('celex:32024R1689/oj#art_108').
:- pred adopting_delegated_act/2, gloss('adopting a delegated act pursuant to a specified legal basis concerning AI safety components'), source('celex:32024R1689/oj#art_108').

ai_safety_component(S) :-
    ai_system(S),
    safety_component(S).

must_take_into_account(adopting_implementing_act(Act, Basis), requirements(chp_3, sec_2)) :-
    adopting_implementing_act(Act, Basis),
    concerns_ai_safety_components(Act).

must_take_into_account(adopting_delegated_act(Act, Basis), requirements(chp_3, sec_2)) :-
    adopting_delegated_act(Act, Basis),
    concerns_ai_safety_components(Act).

adopting_implementing_act(act, 'celex:32018R1139/oj#art_17/par_1') :-
    concerns_ai_safety_components(act).

adopting_implementing_act(act, 'celex:32024R1689/oj#art_43/par_1') :-
    concerns_ai_safety_components(act).

adopting_implementing_act(act, 'celex:32018R1139/oj#art_57/unp_1') :-
    concerns_ai_safety_components(act).

adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_1') :-
    concerns_ai_safety_components(act).

adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_2') :-
    concerns_ai_safety_components(act).

adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_1') :-
    concerns_ai_safety_components(act).

adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_2') :-
    concerns_ai_safety_components(act).

adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_1') :-
    concerns_ai_safety_components(act).

adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_2') :-
    concerns_ai_safety_components(act).

concerns_ai_safety_components(Act) :-
    concerns(Act, S),
    ai_safety_component(S).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_108').
provenance(ai_safety_component/1, 'celex:32024R1689/oj#art_108').
provenance(adopting_implementing_act/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_delegated_act/2, 'celex:32024R1689/oj#art_108').

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
