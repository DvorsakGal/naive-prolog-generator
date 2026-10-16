% unit       : celex:32024R1689/oj#art_102
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : bb0b1c4cee78d559832bb382c7982a51276ff593591f82edc0f03dc4b02d2e85
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 59b79f063280bef408577f4a0915010c348a0f508d0243a4c5ee4a87f739591a
% cached     : False
% title      : Amendment to <ref id="celex:32008R0300/oj"/>
:- pred must_take_into_account_amended_requirements/2, gloss('when adopting detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems, the requirements in Chapter 3 Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_102').

must_take_into_account_amended_requirements(AdoptingBody, security_equipment_ai_measures(Measures)) :-
    adopting_detailed_measures(AdoptingBody, Measures),
    technical_specifications_and_procedures(Measures),
    approval_and_use_of_security_equipment(Measures),
    concerning_ai_system(Measures),
    requirements_in_chapter_3_section_2(Requirements).

adopting_detailed_measures(AdoptingBody, Measures) :-
    union_institution(AdoptingBody).

technical_specifications_and_procedures(Measures) :-
    measures(Measures).

approval_and_use_of_security_equipment(Measures) :-
    measures(Measures),
    security_equipment(SecurityEquipment),
    concerns(Measures, SecurityEquipment).

concerning_ai_system(Measures) :-
    measures(Measures),
    ai_system(AISystem),
    concerns(Measures, AISystem).

measures(Measures) :-
    security_equipment_ai_measures(Measures).

security_equipment_ai_measures(Measures) :-
    measures(Measures).

concerns(Measures, Thing) :-
    measures(Measures),
    (ai_system(Thing) ; security_equipment(Thing)).

provenance(must_take_into_account_amended_requirements/2, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures/2, 'celex:32024R1689/oj#art_102').
provenance(technical_specifications_and_procedures/1, 'celex:32024R1689/oj#art_102').
provenance(approval_and_use_of_security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(concerning_ai_system/1, 'celex:32024R1689/oj#art_102').
provenance(measures/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment_ai_measures/1, 'celex:32024R1689/oj#art_102').
provenance(concerns/2, 'celex:32024R1689/oj#art_102').

references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#art_102').
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
