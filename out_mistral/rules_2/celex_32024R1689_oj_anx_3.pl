% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 2d912c1eb1519855a47ed1aae72f077d601e89560fcbdd6918b02f233932e5f0
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high-risk'), source('reconciled').
:- pred annex_3_point_1/1, gloss('high-risk AI system referred to in Annex III point 1'), source('reconciled').
:- pred law_enforcement_area/1, gloss('high-risk AI system in law enforcement area per Annex III point 1'), source('reconciled').
:- pred high_risk_biometric_remote_identification/1, gloss('remote biometric identification system listed as high-risk in Annex III'), source('reconciled').

% Annex III point 1: Biometrics
high_risk_ai_system(S) :-
    ai_system(S),
    annex_3_point_1(S),
    remote_biometric_identification_system(S),
    \+ biometric_verification(S).

high_risk_ai_system(S) :-
    ai_system(S),
    annex_3_point_1(S),
    biometric_categorisation_system(S),
    based_on_sensitive_or_protected_attributes(S).

high_risk_ai_system(S) :-
    ai_system(S),
    annex_3_point_1(S),
    emotion_recognition_system(S).

% Annex III point 2: Critical infrastructure
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_safety_component(S),
    critical_infrastructure(S),
    manages_or_operates(S).

% Annex III point 3: Education and vocational training
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(determine_access_or_admission(S)),
    educational_or_vocational_training_institution(S).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_learning_outcomes(S)),
    educational_or_vocational_training_institution(S).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(assess_appropriate_education_level(S)),
    educational_or_vocational_training_institution(S).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(monitor_prohibited_behaviour_during_tests(S)),
    educational_or_vocational_training_institution(S).

% Annex III point 4: Employment, workers' management and access to self-employment
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(recruit_or_select_natural_persons(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(make_decisions_affecting_work_related_relationships(S)).

% Annex III point 5: Access to and enjoyment of essential private services and essential public services and benefits
high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(evaluate_eligibility_for_essential_public_benefits(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_creditworthiness_or_credit_score(S)),
    \+ intended_purpose(detect_financial_fraud(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(risk_assessment_and_pricing_life_health_insurance(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_and_classify_emergency_calls(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(dispatch_emergency_first_response_services(S)).

% Annex III point 6: Law enforcement
high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assess_risk_of_becoming_victim_of_criminal_offences(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(polygraph_or_similar_tool(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(evaluate_reliability_of_evidence(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assess_risk_of_offending_or_reoffending(S)),
    \+ solely_based_on_profiling(S).

high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(profiling_in_detection_investigation_prosecution(S)).

% Annex III point 7: Migration, asylum and border control management
high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(polygraph_or_similar_tool(S)),
    migration_asylum_border_control_context(S).

high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assess_risk_of_irregular_migration_or_health(S)),
    migration_asylum_border_control_context(S).

high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assist_examination_of_asylum_visa_residence_applications(S)),
    migration_asylum_border_control_context(S).

high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(detect_recognise_identify_natural_persons(S)),
    migration_asylum_border_control_context(S),
    \+ verification_of_travel_documents(S).

% Annex III point 8: Administration of justice and democratic processes
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(assist_judicial_authority_in_researching_interpreting_applying_law(S)).

high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(influence_outcome_of_election_or_referendum(S)),
    \+ administrative_logistical_political_campaign_tool(S).

% Specific predicate for Annex III point 1(a): remote biometric identification
high_risk_biometric_remote_identification(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    remote_biometric_identification_system(S).

% Law enforcement area classification
law_enforcement_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    law_enforcement_authority(_A),
    used_by_or_on_behalf_of_law_enforcement(S).

% Helper predicates for Annex III conditions
annex_3_point_1(S) :-
    high_risk_ai_system(S),
    biometric_related(S).

based_on_sensitive_or_protected_attributes(S) :-
    biometric_categorisation_system(S),
    special_categories_of_personal_data(D),
    uses_data(S, D).

manages_or_operates(S) :-
    ai_system_safety_component(S),
    critical_infrastructure(I),
    manages(S, I).

educational_or_vocational_training_institution(S) :-
    ai_system(S),
    intended_purpose(P),
    education_or_training_context(P).

migration_asylum_border_control_context(S) :-
    ai_system(S),
    intended_purpose(P),
    migration_asylum_border_context(P).

used_by_or_on_behalf_of_law_enforcement(S) :-
    law_enforcement_authority(A),
    used_by(S, A).

biometric_related(S) :-
    remote_biometric_identification_system(S).

biometric_related(S) :-
    biometric_categorisation_system(S).

biometric_related(S) :-
    emotion_recognition_system(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(annex_3_point_1/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_remote_identification/1, 'celex:32024R1689/oj#anx_3').
provenance(based_on_sensitive_or_protected_attributes/1, 'celex:32024R1689/oj#anx_3').
provenance(manages_or_operates/1, 'celex:32024R1689/oj#anx_3').
provenance(educational_or_vocational_training_institution/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_asylum_border_control_context/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_related/1, 'celex:32024R1689/oj#anx_3').

% References
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
