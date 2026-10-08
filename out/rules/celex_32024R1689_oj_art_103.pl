% unit       : celex:32024R1689/oj#art_103
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : gpt-oss:120b-cloud
% prompt sha : 5727901d7dee522995dd37907af99841ab577e9b53f50f7acd35b1c12762c172
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_take_into_account/2, gloss('obligation to consider specific requirements when adopting delegated acts'), source('celex:32024R1689/oj#art_103').
:- pred adopt_delegated_act/2, gloss('adoption of a delegated act concerning an AI system'), source('celex:32024R1689/oj#art_103').
:- pred delegated_act_concerning/2, gloss('delegated act that concerns a particular AI system'), source('celex:32024R1689/oj#art_103').
:- pred requirement_set/1, gloss('requirements set out in chapter 3 section 2 of the AI Regulation'), source('celex:32024R1689/oj#art_103').

must_take_into_account(Actor, Requirement) :-
    adopt_delegated_act(Actor, DelegatedAct),
    delegated_act_concerning(DelegatedAct, AI_System),
    safety_component(AI_System),
    requirement_set(Requirement).

requirement_set('celex:32024R1689/oj#chp_3/sec_2').

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').
provenance(requirement_set/1, 'celex:32024R1689/oj#art_103').

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
