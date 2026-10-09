% unit       : celex:32024R1689/oj#art_102
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : bb0b1c4cee78d559832bb382c7982a51276ff593591f82edc0f03dc4b02d2e85
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0661dc6dc9959a6cf9c701c7989d58b375fcc3f43f04e3c83a4f41dff8a896b6
% cached     : False
% title      : Amendment to <ref id="celex:32008R0300/oj"/>
:- pred adopts_detailed_measures_for_security_equipment/1,
    gloss('adopts detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems'),
    source('celex:32024R1689/oj#art_102').

:- pred must_take_into_account/2,
    gloss('obligation to take into account the requirements set out in Chapter 3 Section 2'),
    source('celex:32024R1689/oj#art_102').

must_take_into_account(Actor, requirement(chapter_3_section_2)) :-
    national_competent_authority(Actor),
    adopts_detailed_measures_for_security_equipment(Actor).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_102').

references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_102', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_102', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_102', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_102', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#chp_3/sec_2').
