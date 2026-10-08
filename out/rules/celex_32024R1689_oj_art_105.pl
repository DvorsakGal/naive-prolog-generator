% unit       : celex:32024R1689/oj#art_105
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : gpt-oss:120b-cloud
% prompt sha : 467f451abdda95a5189cf2eeca6aaf48532c807700117c214aea1982ebf7d0a5
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_take_into_account/2, gloss('obligation for the Commission to take into account specified requirements'), source('celex:32024R1689/oj#art_105').
:- pred activity_pursuant_to_art_8_par_1_applies/1, gloss('the Commission is acting pursuant to article 8 paragraph 1'), source('celex:32024R1689/oj#art_105').
:- pred adopting_technical_specifications_art_8_par_2_3_applies/1, gloss('the Commission is adopting technical specifications and testing standards in accordance with article 8 paragraphs 2 and 3'), source('celex:32024R1689/oj#art_105').
:- pred requirement_set/1, gloss('requirements set out in chapter 3 section 2 of the Regulation'), source('celex:32024R1689/oj#art_105').

must_take_into_account(commission, Requirement) :-
    safety_component(_),
    activity_pursuant_to_art_8_par_1_applies(commission),
    adopting_technical_specifications_art_8_par_2_3_applies(commission),
    requirement_set(Requirement).

activity_pursuant_to_art_8_par_1_applies(commission).

adopting_technical_specifications_art_8_par_2_3_applies(commission).

requirement_set(chapter_3_section_2).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
provenance(activity_pursuant_to_art_8_par_1_applies/1, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_art_8_par_2_3_applies/1, 'celex:32024R1689/oj#art_105').
provenance(requirement_set/1, 'celex:32024R1689/oj#art_105').

references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_105', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_105', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
