% unit       : celex:32024R1689/oj#art_105
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 2c6a02b16a6852b75c4c45993e0c4ada7db39192027905b4fa529f347d0a0cd4
% cached     : False
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
:- pred must_take_into_account_ai_act_requirements/1, gloss('Commission takes into account requirements set out in Chapter III Section 2 of the AI Act when carrying out activities under Lifts Directive Article 8'), source('celex:32024R1689/oj#art_105').
:- pred ai_system_safety_component_lifts_directive/1, gloss('AI system that is a safety component within the meaning of the AI Act and subject to Lifts Directive'), source('celex:32024R1689/oj#art_105').
:- pred commission_activity_under_lifts_directive/1, gloss('Commission activity carried out pursuant to Lifts Directive Article 8(1) or adopting technical specifications and testing standards under Article 8(2) or 8(3)'), source('celex:32024R1689/oj#art_105').

ai_system_safety_component_lifts_directive(S) :-
    ai_system_safety_component(S),
    union_harmonisation_legislation_applies(S).

commission_activity_under_lifts_directive(A) :-
    commission_carries_out_activity_under_lifts_directive_par_1(A).
commission_activity_under_lifts_directive(A) :-
    commission_adopts_technical_specifications_under_lifts_directive_par_2(A).
commission_activity_under_lifts_directive(A) :-
    commission_adopts_testing_standards_under_lifts_directive_par_3(A).

must_take_into_account_ai_act_requirements(A) :-
    commission_activity_under_lifts_directive(A),
    ai_system_safety_component_lifts_directive(S),
    chapter_3_section_2_requirements_apply(S).

chapter_3_section_2_requirements_apply(S) :-
    high_risk_ai_system(S).

provenance(must_take_into_account_ai_act_requirements/1, 'celex:32024R1689/oj#art_105').
provenance(ai_system_safety_component_lifts_directive/1, 'celex:32024R1689/oj#art_105').
provenance(commission_activity_under_lifts_directive/1, 'celex:32024R1689/oj#art_105').

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
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
