% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c3a31dc0dfc00269a8d5d2e184b1e19f3c3955ff36fc025a129c30081c10d984
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_based_on_internal_control/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_quality_management_system_compliance/2, gloss('provider verifies quality management system complies with Article 17'), source('celex:32024R1689/oj#anx_6').
:- pred must_examine_technical_documentation/2, gloss('provider examines technical documentation to assess compliance with essential requirements'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_design_and_development_consistency/2, gloss('provider verifies design and development process and post-market monitoring are consistent with technical documentation'), source('celex:32024R1689/oj#anx_6').

conformity_assessment_based_on_internal_control(S) :-
    ai_system(S),
    must_verify_quality_management_system_compliance(_P, S),
    must_examine_technical_documentation(_P, S),
    must_verify_design_and_development_consistency(_P, S).

must_verify_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S).

must_examine_technical_documentation(P, S) :-
    provider(P),
    ai_system(S).

must_verify_design_and_development_consistency(P, S) :-
    provider(P),
    ai_system(S).

provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_and_development_consistency/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
