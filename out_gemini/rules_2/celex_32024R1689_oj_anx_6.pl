% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 8d2467f44d32611e6136690f57e8b8ff4fa006035dfdd5536ce1ca8dac3bd72f
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred conformity_assessment_internal_control/2, gloss('Conformity assessment procedure based on internal control carried out by provider for an AI system'), source('celex:32024R1689/oj#anx_6').
:- pred verifies_quality_management_system/2, gloss('Provider verifies that the established quality management system complies with Article 17'), source('celex:32024R1689/oj#anx_6').
:- pred examines_technical_documentation_compliance/2, gloss('Provider examines technical documentation to assess compliance with Chapter III Section 2'), source('celex:32024R1689/oj#anx_6').
:- pred verifies_consistency_with_technical_documentation/2, gloss('Provider verifies design, development, and post-market monitoring are consistent with technical documentation'), source('celex:32024R1689/oj#anx_6').

% Point 1: The conformity assessment procedure based on internal control is based on points 2, 3 and 4.
conformity_assessment_internal_control(Provider, System) :-
    conformity_assessment(System),
    provider(Provider),
    verifies_quality_management_system(Provider, System),
    examines_technical_documentation_compliance(Provider, System),
    verifies_consistency_with_technical_documentation(Provider, System).

% Point 2: The provider verifies that the established quality management system complies with Article 17.
must_verify(Provider, quality_management_system_compliance(System)) :-
    provider(Provider),
    ai_system(System).

% Point 3: The provider examines technical documentation to assess compliance with Chapter III Section 2.
must_examine(Provider, technical_documentation_compliance(System)) :-
    provider(Provider),
    ai_system(System),
    technical_documentation(System).

% Point 4: The provider verifies design and development process and post-market monitoring consistency.
must_verify(Provider, consistency_with_technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    technical_documentation(System).

provenance(conformity_assessment_internal_control/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
