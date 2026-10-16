% unit       : celex:32024R1689/oj#art_102
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : bb0b1c4cee78d559832bb382c7982a51276ff593591f82edc0f03dc4b02d2e85
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 97e041214ba3860af6a4f2bb8566ad21630e56365a4cee886ee98d7fa4b17c6b
% cached     : False
% title      : Amendment to <ref id="celex:32008R0300/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting detailed measures for security equipment concerning AI systems, the requirements of Chapter 3 Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_102').

must_take_into_account_requirements(adopting_detailed_measures, requirements(chapter_3_section_2)) :-
    adopting_detailed_measures_for_security_equipment(S),
    security_equipment_concerning_ai_systems(S).

adopting_detailed_measures_for_security_equipment(S) :-
    adopting_detailed_measures(S),
    related_to_technical_specifications_and_procedures(S),
    for_approval_and_use_of_security_equipment(S).

security_equipment_concerning_ai_systems(S) :-
    security_equipment(S),
    concerning_ai_systems(S),
    ai_system(S).

adopting_detailed_measures(_).

:- pred adopting_detailed_measures/1, gloss('adopting detailed measures related to technical specifications and procedures'), source('celex:32024R1689/oj#art_102').
:- pred related_to_technical_specifications_and_procedures/1, gloss('related to technical specifications and procedures for approval and use'), source('celex:32024R1689/oj#art_102').
:- pred for_approval_and_use_of_security_equipment/1, gloss('for approval and use of security equipment'), source('celex:32024R1689/oj#art_102').
:- pred security_equipment/1, gloss('security equipment'), source('celex:32024R1689/oj#art_102').
:- pred concerning_ai_systems/1, gloss('concerning Artificial Intelligence systems within the meaning of the AI Act'), source('celex:32024R1689/oj#art_102').

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures_for_security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment_concerning_ai_systems/1, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures/1, 'celex:32024R1689/oj#art_102').
provenance(related_to_technical_specifications_and_procedures/1, 'celex:32024R1689/oj#art_102').
provenance(for_approval_and_use_of_security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(concerning_ai_systems/1, 'celex:32024R1689/oj#art_102').

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
