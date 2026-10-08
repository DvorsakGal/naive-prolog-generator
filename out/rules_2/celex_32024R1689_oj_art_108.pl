% unit       : celex:32024R1689/oj#art_108
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : gpt-oss:120b-cloud
% prompt sha : 6b5625cccbeccbd0fc2aeecb14b0bc668b9ea008d387ddf9cec65a8b590952f1
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred adopt_implementing_act/2, gloss('adopting implementing act'), source('celex:32024R1689/oj#art_108').
:- pred adopt_delegated_act/2, gloss('adopting delegated act'), source('celex:32024R1689/oj#art_108').
:- pred concerns/2, gloss('act concerns AI system'), source('celex:32024R1689/oj#art_108').
:- pred safety_component_ai_system/1, gloss('AI system that is a safety component'), source('celex:32024R1689/oj#art_108').
:- pred required_consider_requirements/2, gloss('required to consider requirements of chapter 3 section 2'), source('celex:32024R1689/oj#art_108').

% AI system that is a safety component
safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).

% Requirement to consider chapter‑3 section‑2 requirements when adopting implementing acts
required_consider_requirements(Actor, Act) :-
    adopt_implementing_act(Actor, Act),
    adopt_implementing_act(Actor, Act),
    concerns(Act, S),
    safety_component_ai_system(S).

% Requirement to consider chapter‑3 section‑2 requirements when adopting delegated acts
required_consider_requirements(Actor, Act) :-
    adopt_delegated_act(Actor, Act),
    adopt_delegated_act(Actor, Act),
    concerns(Act, S),
    safety_component_ai_system(S).

provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(required_consider_requirements/2, 'celex:32024R1689/oj#art_108').

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
