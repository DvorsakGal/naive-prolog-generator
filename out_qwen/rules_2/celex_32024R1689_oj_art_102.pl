% unit       : celex:32024R1689/oj#art_102
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : bb0b1c4cee78d559832bb382c7982a51276ff593591f82edc0f03dc4b02d2e85
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 2a0798c086dc1b5454c37f536135c8955728ae74ea00522432301a2b020596a9
% cached     : False
% title      : Amendment to <ref id="celex:32008R0300/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting detailed measures for AI security equipment, requirements of Chapter III Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_102').

must_take_into_account_requirements(Actor, Measure) :-
    adopting_detailed_measures_for_ai_security_equipment(Actor, Measure).

adopting_detailed_measures_for_ai_security_equipment(_Actor, Measure) :-
    detailed_measure(Measure),
    related_to_technical_specifications_and_procedures(Measure),
    concerns_ai_system_security_equipment(Measure).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').

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
