% unit       : celex:32024R1689/oj#art_102
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : bb0b1c4cee78d559832bb382c7982a51276ff593591f82edc0f03dc4b02d2e85
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 956715117373387f303ca7d0874176a4b218d40f84122b7e18794d0853d44b44
% cached     : False
% title      : Amendment to <ref id="celex:32008R0300/oj"/>
:- pred must_take_into_account_requirements/2, gloss('actor adopting detailed measures must take into account AI Act Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_102').
:- pred detailed_measures/1, gloss('detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems'), source('celex:32024R1689/oj#art_102').
:- pred security_equipment_concerning_ai_systems/1, gloss('security equipment concerning Artificial Intelligence systems within the meaning of the AI Act'), source('celex:32024R1689/oj#art_102').
:- pred adopting_detailed_measures/2, gloss('actor adopting detailed measures'), source('celex:32024R1689/oj#art_102').

detailed_measures(M) :-
    security_equipment_concerning_ai_systems(M).

security_equipment_concerning_ai_systems(M) :-
    ai_system(S),
    security_equipment(M, S).

must_take_into_account_requirements(Actor, M) :-
    adopting_detailed_measures(Actor, M),
    detailed_measures(M),
    security_equipment_concerning_ai_systems(M).

adopting_detailed_measures(Actor, M) :-
    detailed_measures(M).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').
provenance(detailed_measures/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment_concerning_ai_systems/1, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures/2, 'celex:32024R1689/oj#art_102').

references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_102', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_102', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_102', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_102', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_102', 'celex:32020L1828/oj').
