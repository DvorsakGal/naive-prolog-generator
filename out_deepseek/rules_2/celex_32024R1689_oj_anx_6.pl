% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 08212b50dd8b192cdc1329453659eb02dd5d96ad099ace913edd5c9b5aaea60c
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_based_on_internal_control/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').

conformity_assessment_based_on_internal_control(P) :-
    provider(P),
    verifies_quality_management_system_compliance(P),
    examines_technical_documentation_compliance(P),
    verifies_design_and_monitoring_consistency(P).

verifies_quality_management_system_compliance(P) :-
    provider(P),
    must_verify_qms_compliance(P, quality_management_system).

examines_technical_documentation_compliance(P) :-
    provider(P),
    must_examine_technical_documentation(P, essential_requirements).

verifies_design_and_monitoring_consistency(P) :-
    provider(P),
    must_verify_design_and_monitoring(P, technical_documentation).

must_verify_qms_compliance(Provider, quality_management_system) :-
    provider(Provider).

must_examine_technical_documentation(Provider, essential_requirements) :-
    provider(Provider).

must_verify_design_and_monitoring(Provider, technical_documentation) :-
    provider(Provider).

provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(verifies_quality_management_system_compliance/1, 'celex:32024R1689/oj#anx_6').
provenance(examines_technical_documentation_compliance/1, 'celex:32024R1689/oj#anx_6').
provenance(verifies_design_and_monitoring_consistency/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_qms_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_and_monitoring/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
