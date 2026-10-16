% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : ed0a8d64626bdf27abec01013535e1f9008eafc90e9ee402249ba4e06cb7fd2a
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_procedure_internal_control/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').

conformity_assessment_procedure_internal_control(S) :-
    ai_system(S),
    quality_management_system(Q),
    must_have_quality_management_system(P, S),
    provider(P),
    technical_documentation(T),
    post_market_monitoring_system(M),
    post_market_monitoring(P, S).

must_verify_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_procedure_internal_control(S),
    quality_management_system(Q),
    must_have_quality_management_system(P, S).

must_examine_technical_documentation(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_procedure_internal_control(S),
    technical_documentation(T),
    requirements_in_chapter_3_section_2(S).

must_verify_design_development_consistency(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_procedure_internal_control(S),
    technical_documentation(T),
    post_market_monitoring_system(M),
    post_market_monitoring(P, S).

provenance(conformity_assessment_procedure_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_consistency/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
