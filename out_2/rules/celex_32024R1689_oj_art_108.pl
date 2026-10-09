% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6a535b09e6b0f10f63a3bd1d719f3a6532ac2be9ad3b4d469e63458a5a05cab5
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred safety_component_ai_system/1, gloss('AI system that is a safety component'), source('celex:32024R1689/oj#art_108').
:- pred act_concerns_ai_system/2, gloss('act concerns a given AI system'), source('celex:32024R1689/oj#art_108').
:- pred implementing_act/1, gloss('implementing act adopted pursuant to the regulation'), source('celex:32024R1689/oj#art_108').
:- pred delegated_act/1, gloss('delegated act adopted pursuant to the regulation'), source('celex:32024R1689/oj#art_108').
:- pred act_concerns_safety_component_ai_system/1, gloss('act concerns an AI system that is a safety component'), source('celex:32024R1689/oj#art_108').
:- pred required_requirements_chapter_3_section_2/1, gloss('act must take into account the requirements set out in chapter 3 section 2'), source('celex:32024R1689/oj#art_108').

safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).

act_concerns_ai_system(Act, S) :-
    % placeholder: the act is linked to the AI system S
    % concrete linking would be defined elsewhere
    true.

act_concerns_safety_component_ai_system(Act) :-
    act_concerns_ai_system(Act, S),
    safety_component_ai_system(S).

required_requirements_chapter_3_section_2(Act) :-
    (implementing_act(Act) ; delegated_act(Act)),
    act_concerns_safety_component_ai_system(Act).

provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(act_concerns_ai_system/2, 'celex:32024R1689/oj#art_108').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_108').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_108').
provenance(act_concerns_safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(required_requirements_chapter_3_section_2/1, 'celex:32024R1689/oj#art_108').

references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_17/par_1').
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
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').
