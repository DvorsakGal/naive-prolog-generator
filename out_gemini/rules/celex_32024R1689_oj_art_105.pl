% unit       : celex:32024R1689/oj#art_105
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d2c87c1b33a0c69829cdc109fb271e9688e87537f38d8b8fdcd5c5247a1cdb37
% cached     : False
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_105').
:- pred must_take_into_account(Actor, Object), gloss('actor must take an object or requirements into account'), source('celex:32024R1689/oj#art_105').
:- pred marine_equipment_activity/2, gloss('activity or adoption of specifications/standards under Directive 2014/90/EU Article 8'), source('celex:32024R1689/oj#art_105').

% Article 105: Amendment to Directive 2014/90/EU adding Article 8(5).
% For AI systems which are safety components, when carrying out activities under Art 8(1)
% or adopting technical specifications/testing standards under Art 8(2)-(3),
% the Commission shall take into account the requirements set out in Chapter III, Section 2.

must_take_into_account(Commission, requirements(chapter_3_section_2, System)) :-
    commission(Commission),
    ai_system(System),
    safety_component(System),
    marine_equipment_activity(Commission, System).

provenance(commission/1, 'celex:32024R1689/oj#art_105').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
provenance(marine_equipment_activity/2, 'celex:32024R1689/oj#art_105').

references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_5').
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
