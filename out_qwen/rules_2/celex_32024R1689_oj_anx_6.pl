% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : b1bb68462c49a6b0ada9a1ae353ab5e7b1e297a98471e74ad2846f7ee345be03
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_based_on_internal_control/1, gloss('conformity assessment procedure based on internal control as set out in Annex VI'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_quality_management_system_compliance/2, gloss('provider verifies that the established quality management system complies with Article 17'), source('celex:32024R1689/oj#anx_6').
:- pred must_examine_technical_documentation_for_compliance/2, gloss('provider examines technical documentation to assess compliance with essential requirements of Chapter III Section 2'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_design_and_development_consistency/2, gloss('provider verifies that design and development process and post-market monitoring are consistent with technical documentation'), source('celex:32024R1689/oj#anx_6').

conformity_assessment_based_on_internal_control(S) :-
    ai_system(S),
    must_verify_quality_management_system_compliance(_P, S),
    must_examine_technical_documentation_for_compliance(_P, S),
    must_verify_design_and_development_consistency(_P, S).

must_verify_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S),
    requirements_of_chapter_3_section_2(S).

must_examine_technical_documentation_for_compliance(P, S) :-
    provider(P),
    ai_system(S),
    requirements_of_chapter_3_section_2(S).

must_verify_design_and_development_consistency(P, S) :-
    provider(P),
    ai_system(S),
    post_market_monitoring_system(S).

provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation_for_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_and_development_consistency/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
