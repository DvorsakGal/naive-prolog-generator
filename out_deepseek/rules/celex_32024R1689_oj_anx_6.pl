% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 131c3403233f27275c35db301108731c31424c2f236bc4cea79385499db3620c
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_procedure_based_on_internal_control/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').

conformity_assessment_procedure_based_on_internal_control(P) :-
    provider(P),
    must_verify_qms_compliance(P),
    must_examine_technical_documentation(P),
    must_verify_design_consistency(P).

must_verify_qms_compliance(P) :-
    provider(P),
    quality_management_system_established(P).

must_examine_technical_documentation(P) :-
    provider(P),
    technical_documentation_contains_information(P).

must_verify_design_consistency(P) :-
    provider(P),
    design_and_development_process_consistent_with_technical_documentation(P),
    post_market_monitoring_consistent_with_technical_documentation(P).

provenance(conformity_assessment_procedure_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_qms_compliance/1, 'celex:32024R1689/oj#anx_6/pnt_2').
provenance(must_examine_technical_documentation/1, 'celex:32024R1689/oj#anx_6/pnt_3').
provenance(must_verify_design_consistency/1, 'celex:32024R1689/oj#anx_6/pnt_4').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
