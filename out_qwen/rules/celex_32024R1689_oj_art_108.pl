% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 72e76778d4bab0fa6caf55c691e1503fee1e622632451fcede9bb100b95fda67
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred must_take_into_account_requirements/2, gloss('obligation to consider requirements when adopting acts concerning AI safety components'), source('celex:32024R1689/oj#art_108').
:- pred adopting_act_concerning_ai_safety_component/2, gloss('adoption of an act concerning an AI system that is a safety component'), source('celex:32024R1689/oj#art_108').
:- pred ai_safety_component/1, gloss('AI system which is a safety component within the meaning of this Regulation'), source('celex:32024R1689/oj#art_108').
:- pred requirements_of_chapter_3_section_2/1, gloss('requirements set out in Chapter III Section 2 of this Regulation'), source('celex:32024R1689/oj#art_108').

ai_safety_component(S) :-
    ai_system(S),
    safety_component(S).

requirements_of_chapter_3_section_2(req_ch3_sec2).

adopting_act_concerning_ai_safety_component(Act, S) :-
    ai_safety_component(S),
    atom(Act).

must_take_into_account_requirements(_Actor, Act) :-
    adopting_act_concerning_ai_safety_component(Act, _S),
    requirements_of_chapter_3_section_2(_Req).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_act_concerning_ai_safety_component/2, 'celex:32024R1689/oj#art_108').
provenance(ai_safety_component/1, 'celex:32024R1689/oj#art_108').
provenance(requirements_of_chapter_3_section_2/1, 'celex:32024R1689/oj#art_108').

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
