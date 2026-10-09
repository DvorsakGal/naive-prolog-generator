% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1e75ad3f0e81abb30f1e21eebf74c613eb62e30e095975806faa3da4cf0c1b8c
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred required_conformity_assessment_procedure_based_on_internal_control/1,
    gloss('conformity assessment procedure based on internal control'), source('anx_6').

:- pred must_verify/2,
    gloss('obligation for provider to verify a condition'), source('anx_6').

:- pred must_examine/2,
    gloss('obligation for provider to examine technical documentation'), source('anx_6').

required_conformity_assessment_procedure_based_on_internal_control(internal_control_procedure).

must_verify(P, compliance(quality_management_system, art_17)) :-
    provider(P).

must_examine(P, examine(technical_documentation,
                         assess_compliance(S, essential_requirements(chp_3_sec_2)))) :-
    provider(P),
    ai_system(S).

must_verify(P, consistency(design_and_development_process(S),
                          post_market_monitoring(S),
                          technical_documentation)) :-
    provider(P),
    ai_system(S).

provenance(required_conformity_assessment_procedure_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
