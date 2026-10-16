% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 80727f65a7a3b2203feccd2e024de9fa18069c7dfbbe52a02c989794d0d370d2
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_internal_control/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').
:- pred verifies_quality_management_system/2, gloss('provider verifies quality management system complies with requirements'), source('celex:32024R1689/oj#anx_6').
:- pred assesses_technical_documentation_compliance/2, gloss('provider assesses AI system compliance with essential requirements via technical documentation'), source('celex:32024R1689/oj#anx_6').
:- pred verifies_design_and_monitoring_consistency/2, gloss('provider verifies design, development process, and post-market monitoring are consistent with technical documentation'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify/2, gloss('provider must verify compliance or consistency aspects'), source('celex:32024R1689/oj#anx_6').
:- pred must_assess/2, gloss('provider must assess compliance aspects'), source('celex:32024R1689/oj#anx_6').

% Point 1: Definition of conformity assessment based on internal control
conformity_assessment_internal_control(P) :-
    conformity_assessment(P),
    provider(Provider),
    ai_system(System),
    verifies_quality_management_system(Provider, System),
    assesses_technical_documentation_compliance(Provider, System),
    verifies_design_and_monitoring_consistency(Provider, System).

% Point 2: The provider verifies that the established quality management system complies with Article 17
must_verify(Provider, quality_management_system_compliance(System)) :-
    provider(Provider),
    ai_system(System).

verifies_quality_management_system(Provider, System) :-
    must_verify(Provider, quality_management_system_compliance(System)).

% Point 3: The provider examines the technical documentation to assess compliance of the AI system
must_assess(Provider, technical_documentation_compliance(System)) :-
    provider(Provider),
    ai_system(System).

assesses_technical_documentation_compliance(Provider, System) :-
    must_assess(Provider, technical_documentation_compliance(System)).

% Point 4: The provider verifies design/development and post-market monitoring consistency
must_verify(Provider, design_and_monitoring_consistency(System)) :-
    provider(Provider),
    ai_system(System).

verifies_design_and_monitoring_consistency(Provider, System) :-
    must_verify(Provider, design_and_monitoring_consistency(System)).

provenance(conformity_assessment_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(verifies_quality_management_system/2, 'celex:32024R1689/oj#anx_6').
provenance(must_assess/2, 'celex:32024R1689/oj#anx_6').
provenance(assesses_technical_documentation_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(verifies_design_and_monitoring_consistency/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
