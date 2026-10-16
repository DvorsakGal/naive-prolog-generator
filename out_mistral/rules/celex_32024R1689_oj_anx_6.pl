% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3ff930e8b08928295048b30a32df6e666cca7707ec8b6d84d76baae6f56ced99
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_based_on_internal_control/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_quality_management_system_compliance/2, gloss('provider must verify quality management system compliance with requirements'), source('celex:32024R1689/oj#anx_6').
:- pred must_examine_technical_documentation/2, gloss('provider must examine technical documentation for compliance with essential requirements'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_design_development_and_post_market_monitoring/2, gloss('provider must verify design, development and post-market monitoring consistency with technical documentation'), source('celex:32024R1689/oj#anx_6').

conformity_assessment_based_on_internal_control(P) :-
    provider(P),
    must_verify_quality_management_system_compliance(P, art_17_requirements),
    must_examine_technical_documentation(P, chapter_3_section_2_essential_requirements),
    must_verify_design_development_and_post_market_monitoring(P, technical_documentation).

must_verify_quality_management_system_compliance(P, art_17_requirements) :-
    provider(P).

must_examine_technical_documentation(P, chapter_3_section_2_essential_requirements) :-
    provider(P).

must_verify_design_development_and_post_market_monitoring(P, technical_documentation) :-
    provider(P).

provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_and_post_market_monitoring/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
