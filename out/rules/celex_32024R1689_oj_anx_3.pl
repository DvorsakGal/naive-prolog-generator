% unit       : celex:32024R1689/oj#anx_3
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : gpt-oss:120b-cloud
% prompt sha : d515cfc28fcfd6e4f753ca2f3ed6d7407582e85793182a5432f8dc787fbcbcbf
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high‑risk'), source('celex:32024R1689/oj#anx_3').
:- pred intended_for_biometric_verification_only/1, gloss('AI system intended solely for biometric verification to confirm identity'), source('celex:32024R1689/oj#anx_3').
:- pred critical_infrastructure_ai_system/1, gloss('AI system intended as safety component in critical infrastructure'), source('celex:32024R1689/oj#anx_3').
:- pred education_ai_system/1, gloss('AI system intended for use in education or vocational training'), source('celex:32024R1689/oj#anx_3').
:- pred employment_ai_system/1, gloss('AI system intended for use in employment, workers’ management or self‑employment'), source('celex:32024R1689/oj#anx_3').
:- pred essential_private_service_ai_system/1, gloss('AI system intended for use in essential private or public services and benefits'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_ai_system/1, gloss('AI system intended for use by law‑enforcement authorities'), source('celex:32024R1689/oj#anx_3').
:- pred migration_ai_system/1, gloss('AI system intended for use in migration, asylum or border‑control management'), source('celex:32024R1689/oj#anx_3').
:- pred administration_of_justice_ai_system/1, gloss('AI system intended for use in administration of justice or democratic processes'), source('celex:32024R1689/oj#anx_3').
:- pred intended_for_education/1, gloss('AI system intended for education‑related purposes'), source('celex:32024R1689/oj#anx_3').
:- pred intended_for_employment/1, gloss('AI system intended for employment‑related purposes'), source('celex:32024R1689/oj#anx_3').
:- pred intended_for_essential_service/1, gloss('AI system intended for essential private or public services'), source('celex:32024R1689/oj#anx_3').
:- pred intended_for_law_enforcement/1, gloss('AI system intended for law‑enforcement purposes'), source('celex:32024R1689/oj#anx_3').
:- pred intended_for_migration/1, gloss('AI system intended for migration, asylum or border‑control purposes'), source('celex:32024R1689/oj#anx_3').
:- pred intended_for_administration_of_justice/1, gloss('AI system intended for administration of justice or democratic processes'), source('celex:32024R1689/oj#anx_3').

high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ intended_for_biometric_verification_only(S).

high_risk_ai_system(S) :-
    biometric_categorisation_system(S).

high_risk_ai_system(S) :-
    emotion_recognition_system(S).

high_risk_ai_system(S) :-
    critical_infrastructure_ai_system(S).

high_risk_ai_system(S) :-
    education_ai_system(S).

high_risk_ai_system(S) :-
    employment_ai_system(S).

high_risk_ai_system(S) :-
    essential_private_service_ai_system(S).

high_risk_ai_system(S) :-
    law_enforcement_ai_system(S).

high_risk_ai_system(S) :-
    migration_ai_system(S).

high_risk_ai_system(S) :-
    administration_of_justice_ai_system(S).

critical_infrastructure_ai_system(S) :-
    safety_component(S),
    critical_infrastructure(_I),
    safety_component(S).

education_ai_system(S) :-
    intended_for_education(S),
    intended_for_education(S).

employment_ai_system(S) :-
    intended_for_employment(S),
    intended_for_employment(S).

essential_private_service_ai_system(S) :-
    intended_for_essential_service(S),
    intended_for_essential_service(S).

law_enforcement_ai_system(S) :-
    intended_for_law_enforcement(S),
    intended_for_law_enforcement(S).

migration_ai_system(S) :-
    intended_for_migration(S),
    intended_for_migration(S).

administration_of_justice_ai_system(S) :-
    intended_for_administration_of_justice(S),
    intended_for_administration_of_justice(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_biometric_verification_only/1, 'celex:32024R1689/oj#anx_3').
provenance(critical_infrastructure_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_private_service_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(administration_of_justice_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_education/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_employment/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_essential_service/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_migration/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_administration_of_justice/1, 'celex:32024R1689/oj#anx_3').

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
