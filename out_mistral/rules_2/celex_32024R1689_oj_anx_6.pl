% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 69d7515588434ffd1c238818b79a6cb158ff4ae94d12ae6f0d9cc09046df5774
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_based_on_internal_control/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').
:- pred verifies_quality_management_system_compliance/2, gloss('provider verifies that the established quality management system is in compliance with the requirements of Article 17'), source('celex:32024R1689/oj#anx_6').
:- pred examines_technical_documentation/2, gloss('provider examines the information contained in the technical documentation to assess compliance of the AI system with the relevant essential requirements'), source('celex:32024R1689/oj#anx_6').
:- pred verifies_design_development_post_market_monitoring_consistency/2, gloss('provider verifies that the design and development process and post-market monitoring is consistent with the technical documentation'), source('celex:32024R1689/oj#anx_6').

conformity_assessment_based_on_internal_control(S) :-
    ai_system(S),
    conformity_assessment_procedure(S),
    based_on_internal_control(S).

verifies_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S),
    quality_management_system_established(P, S),
    article_17_requirements(R),
    compliant_with_requirements(quality_management_system(P, S), R).

examines_technical_documentation(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S),
    technical_documentation_contains_information(S, Info),
    examines(P, Info),
    assesses_compliance_with_essential_requirements(S, Info).

verifies_design_development_post_market_monitoring_consistency(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S),
    design_and_development_process(S, Process),
    post_market_monitoring_system(S),
    technical_documentation(S, Doc),
    consistent_with(Process, Doc),
    consistent_with(post_market_monitoring(S), Doc).

must_verify_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S).

must_examine_technical_documentation(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S).

must_verify_design_development_post_market_monitoring_consistency(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S).

provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(verifies_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(examines_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(verifies_design_development_post_market_monitoring_consistency/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_post_market_monitoring_consistency/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
