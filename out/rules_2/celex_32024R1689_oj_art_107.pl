% unit       : celex:32024R1689/oj#art_107
% title      : Amendment to <ref id="celex:32018R0858/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 252bcf2d33a8d8aad7380816fd04d66b5b1fd7c67e88bb011658e4aaaac866a1
% model      : gpt-oss:120b-cloud
% prompt sha : 1b548dd97eeee12300f500477ceb6733cc940f1916ba7b77f6d6bb22f8756a34
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred delegated_act/1, gloss('delegated act adopted pursuant to article 5 paragraph 3 concerning AI systems which are safety components'), source('celex:32024R1689/oj#art_107').
:- pred concerns/2, gloss('delegated act concerns a given AI system'), source('celex:32024R1689/oj#art_107').
:- pred required_take_into_account_requirements/1, gloss('when adopting a delegated act, the requirements set out in chapter 3 section 2 shall be taken into account'), source('celex:32024R1689/oj#art_107').
:- pred requirements_chapter_3_section_2_applies/0, gloss('requirements set out in chapter 3 section 2 are applicable'), source('celex:32024R1689/oj#art_107').

required_take_into_account_requirements(DA) :-
    delegated_act(DA),
    concerns(DA, S),
    safety_component(S),
    ai_system(S),
    requirements_chapter_3_section_2_applies.

requirements_chapter_3_section_2_applies.

provenance(required_take_into_account_requirements/1, 'celex:32024R1689/oj#art_107').
provenance(requirements_chapter_3_section_2_applies/0, 'celex:32024R1689/oj#art_107').

references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').
