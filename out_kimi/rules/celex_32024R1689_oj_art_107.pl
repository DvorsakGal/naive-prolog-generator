% unit       : celex:32024R1689/oj#art_107
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ffff91e985300e19e2ae5dc68ad95ff642abeee85a59ae984e8458f36ea69fbc
% cached     : False
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
:- pred must_take_into_account/2, gloss('obligation to consider requirements when adopting delegated acts'), source('celex:32024R1689/oj#art_107').
:- pred delegated_act/1, gloss('act adopted under delegated powers'), source('celex:32024R1689/oj#art_107').
:- pred concerning_ai_safety_component/1, gloss('delegated act concerning AI systems as safety components under this Regulation'), source('celex:32024R1689/oj#art_107').
:- pred requirements_chapter_3_section_2/1, gloss('requirements set out in Chapter 3 Section 2 of this Regulation'), source('celex:32024R1689/oj#art_107').

must_take_into_account(Authority, requirements_chapter_3_section_2(AiSystem)) :-
    adopting_delegated_act(Authority, Act),
    delegated_act(Act),
    concerning_ai_safety_component(Act),
    ai_system(AiSystem),
    safety_component(AiSystem),
    pursuant_to(Act, 'celex:32018R0858/oj#art_5/par_3').

concerning_ai_safety_component(Act) :-
    delegated_act(Act),
    subject_matter(Act, AiSystem),
    ai_system(AiSystem),
    safety_component(AiSystem),
    within_meaning_of(AiSystem, 'celex:32024R1689/oj').

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').
provenance(concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_107').

references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').
