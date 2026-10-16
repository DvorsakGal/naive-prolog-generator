% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 5e7b02f28c0a12293cdd48eb433da1e94dc02ca0382c25707ea6b32fd7f248f3
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system/1, gloss('AI system considered high-risk under Article 6(2) and Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_area_biometrics/1, gloss('AI system listed in Annex III point 1 (biometrics)'), source('celex:32024R1689/oj#anx_3').
:- pred biometrics_annex_3_1_b/1, gloss('AI system listed in Annex III point 1(b) (biometric categorisation)'), source('celex:32024R1689/oj#anx_3').
:- pred biometrics_annex_3_1_c/1, gloss('AI system listed in Annex III point 1(c) (emotion recognition)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_area_education/1, gloss('AI system listed in Annex III point 3 (education and vocational training)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_area_employment/1, gloss('AI system listed in Annex III point 4 (employment and worker management)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_area_essential_services/1, gloss('AI system listed in Annex III point 5 (essential private and public services)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_area_law_enforcement/1, gloss('AI system listed in Annex III point 6 (law enforcement)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_area_migration/1, gloss('AI system listed in Annex III point 7 (migration, asylum and border control)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_area_justice_democratic/1, gloss('AI system listed in Annex III point 8 (administration of justice and democratic processes)'), source('celex:32024R1689/oj#anx_3').

:- pred intended_use/2, gloss('AI system has an intended use for a given purpose or context'), source('celex:32024R1689/oj#anx_3').
:- pred sole_purpose_biometric_verification/1, gloss('AI system intended solely for 1-to-1 biometric verification'), source('celex:32024R1689/oj#anx_3').
:- pred permitted_use_under_law/1, gloss('use of AI system is permitted under relevant Union or national law'), source('celex:32024R1689/oj#anx_3').
:- pred intended_user/2, gloss('AI system is intended to be used by or on behalf of a specific actor'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_high_risk_annex_3/1, gloss('AI system exempted from high-risk classification under Annex III'), source('celex:32024R1689/oj#anx_3').

% Annex III high-risk classification
high_risk_ai_system(S) :-
    ai_system(S),
    \+ exempt_high_risk_annex_3(S),
    ( high_risk_area_biometrics(S)
    ; annex_3_point_2_system(S)
    ; high_risk_area_education(S)
    ; high_risk_area_employment(S)
    ; high_risk_area_essential_services(S)
    ; high_risk_area_law_enforcement(S)
    ; high_risk_area_migration(S)
    ; high_risk_area_justice_democratic(S)
    ).

% Point 1: Biometrics
high_risk_area_biometrics(S) :-
    permitted_use_under_law(S),
    ( biometrics_annex_3_1_a(S)
    ; biometrics_annex_3_1_b(S)
    ; biometrics_annex_3_1_c(S)
    ).

biometrics_annex_3_1_a(S) :-
    remote_biometric_identification_system(S),
    \+ sole_purpose_biometric_verification(S).

biometrics_annex_3_1_b(S) :-
    intended_use(S, biometric_categorisation(sensitive_or_protected_attributes)).

biometrics_annex_3_1_c(S) :-
    intended_use(S, emotion_recognition).

% Point 2: Critical infrastructure
annex_3_point_2_system(S) :-
    safety_component(S),
    ( intended_use(S, management_and_operation(critical_digital_infrastructure))
    ; intended_use(S, management_and_operation(road_traffic))
    ; intended_use(S, supply(water))
    ; intended_use(S, supply(gas))
    ; intended_use(S, supply(heating))
    ; intended_use(S, supply(electricity))
    ).

% Point 3: Education and vocational training
high_risk_area_education(S) :-
    ( intended_use(S, determine_access_or_admission(educational_institution))
    ; intended_use(S, evaluate_learning_outcomes(educational_institution))
    ; intended_use(S, assessing_appropriate_education_level(educational_institution))
    ; intended_use(S, monitoring_prohibited_behaviour_students(educational_institution))
    ).

% Point 4: Employment, workers' management and access to self-employment
high_risk_area_employment(S) :-
    ( intended_use(S, recruitment_or_selection)
    ; intended_use(S, decisions_affecting_terms_of_work)
    ; intended_use(S, allocate_tasks_based_on_traits)
    ; intended_use(S, monitor_and_evaluate_work_performance)
    ).

% Point 5: Essential private services and essential public services and benefits
high_risk_area_essential_services(S) :-
    ( ( intended_user(S, public_authority), intended_use(S, evaluate_eligibility_essential_public_services) )
    ; intended_use(S, evaluate_creditworthiness_or_score)
    ; intended_use(S, risk_assessment_and_pricing(insurance))
    ; intended_use(S, evaluate_and_classify_emergency_calls)
    ; intended_use(S, dispatch_emergency_services)
    ; intended_use(S, emergency_patient_triage)
    ).

% Point 6: Law enforcement
high_risk_area_law_enforcement(S) :-
    permitted_use_under_law(S),
    law_enforcement_or_support_user(S),
    ( intended_use(S, assess_victim_risk)
    ; intended_use(S, polygraph_or_similar)
    ; intended_use(S, evaluate_evidence_reliability)
    ; intended_use(S, assess_offending_risk)
    ; intended_use(S, assess_personality_traits_or_criminal_behaviour)
    ; intended_use(S, profiling_in_criminal_proceedings)
    ).

% Point 7: Migration, asylum and border control management
high_risk_area_migration(S) :-
    permitted_use_under_law(S),
    migration_or_support_user(S),
    ( intended_use(S, polygraph_or_similar)
    ; intended_use(S, assess_migration_or_security_risk)
    ; intended_use(S, assist_examination_asylum_visa_residence)
    ; intended_use(S, detect_recognise_identify_in_migration)
    ).

% Point 8: Administration of justice and democratic processes
high_risk_area_justice_democratic(S) :-
    ( intended_user(S, judicial_authority), intended_use(S, assist_research_and_interpretation_of_law)
    ; intended_use(S, alternative_dispute_resolution)
    ; intended_use(S, influence_election_or_referendum)
    ).

% Exceptions within Annex III
exempt_high_risk_annex_3(S) :-
    intended_use(S, evaluate_creditworthiness_or_score),
    intended_use(S, detect_financial_fraud).

exempt_high_risk_annex_3(S) :-
    intended_use(S, detect_recognise_identify_in_migration),
    intended_use(S, verify_travel_documents).

exempt_high_risk_annex_3(S) :-
    intended_use(S, influence_election_or_referendum),
    intended_use(S, purely_administrative_or_logistical_campaign_tool).

% User helper clauses
law_enforcement_or_support_user(S) :-
    intended_user(S, law_enforcement_authority).
law_enforcement_or_support_user(S) :-
    intended_user(S, on_behalf_of(law_enforcement_authority)).
law_enforcement_or_support_user(S) :-
    union_institution_body_office_agency(U),
    intended_user(S, support_of(law_enforcement_authority, U)).

migration_or_support_user(S) :-
    intended_user(S, competent_public_authority).
migration_or_support_user(S) :-
    intended_user(S, on_behalf_of(competent_public_authority)).
migration_or_support_user(S) :-
    union_institution_body_office_agency(U),
    intended_user(S, U).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_biometrics/1, 'celex:32024R1689/oj#anx_3').
provenance(biometrics_annex_3_1_a/1, 'celex:32024R1689/oj#anx_3').
provenance(biometrics_annex_3_1_b/1, 'celex:32024R1689/oj#anx_3').
provenance(biometrics_annex_3_1_c/1, 'celex:32024R1689/oj#anx_3').
provenance(annex_3_point_2_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_education/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_employment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_essential_services/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_migration/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_justice_democratic/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_high_risk_annex_3/1, 'celex:32024R1689/oj#anx_3').

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
