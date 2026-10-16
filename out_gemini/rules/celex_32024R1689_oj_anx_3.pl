% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0f6b83c85907242897a94fa9b3695ce7720f8384308a0ea39ecc7cae1f329582
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system/1, gloss('AI system considered high-risk under Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred permitted_use_under_law/1, gloss('Use of AI system is permitted under relevant Union or national law'), source('celex:32024R1689/oj#anx_3').
:- pred biometric_categorisation_inference/2, gloss('System infers sensitive or protected attributes or characteristics'), source('celex:32024R1689/oj#anx_3').
:- pred critical_infrastructure_area/1, gloss('Area of critical infrastructure management or supply'), source('celex:32024R1689/oj#anx_3').
:- pred judicial_authority/1, gloss('Public authority administering justice'), source('celex:32024R1689/oj#anx_3').
:- pred competent_public_authority/1, gloss('Competent authority in migration, asylum, border control'), source('celex:32024R1689/oj#anx_3').
:- pred union_institution_body_office_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#anx_3').
:- pred acting_for_or_supporting/2, gloss('Entity acting on behalf of or in support of another entity'), source('celex:32024R1689/oj#anx_3').

% Point 1: Biometrics
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    permitted_use_under_law(S),
    \+ intended_purpose(biometric_verification_sole_confirm_identity(S)).

high_risk_ai_system(S) :-
    biometric_categorisation_system(S),
    permitted_use_under_law(S),
    biometric_categorisation_inference(S, sensitive_or_protected_attributes).

high_risk_ai_system(S) :-
    emotion_recognition_system(S),
    permitted_use_under_law(S).

% Point 2: Critical infrastructure
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(safety_component_in(S, Area)),
    critical_infrastructure_area(Area).

% Point 3: Education and vocational training
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_admissions_or_assignment(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_evaluating_learning_outcomes(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_assessing_appropriate_level(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_monitoring_prohibited_behaviour_during_tests(S)).

% Point 4: Employment, workers' management and access to self-employment
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(recruitment_or_selection(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(work_relationship_decisions_or_monitoring(S)).

% Point 5: Essential private services and essential public services and benefits
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluating_eligibility_public_assistance(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluating_creditworthiness(S)),
    \+ intended_purpose(detecting_financial_fraud(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(risk_assessment_and_pricing_life_health_insurance(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(emergency_call_dispatch_or_triage(S)).

% Point 6: Law enforcement
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_victim_risk_assessment(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_polygraph(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_evidence_reliability_evaluation(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_offending_risk_or_traits(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_profiling(S)).

% Point 7: Migration, asylum and border control management
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_polygraph(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_risk_assessment(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_asylum_visa_application_examination(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_detection_or_identification(S)),
    \+ intended_purpose(travel_document_verification(S)).

% Point 8: Administration of justice and democratic processes
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(judicial_research_interpretation_or_dispute_resolution(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(influencing_election_referendum_voting(S)),
    \+ intended_purpose(political_campaign_purely_logistical_or_administrative(S)).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% References
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
