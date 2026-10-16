% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2a8f367b1a3af3c45de23b7c20f0c5fffbfc6b8fbf49240ec52a69fb9eb01adc
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred biometric_verification_system/1, gloss('AI system for confirming claimed identity'), source('celex:32024R1689/oj#anx_3/par_1/pnt_a').
:- pred biometric_categorisation_system/1, gloss('AI system assigning persons to categories based on biometric data'), source('celex:32024R1689/oj#anx_3/par_1/pnt_b').
:- pred emotion_recognition_system/1, gloss('AI system identifying emotions from biometric data'), source('celex:32024R1689/oj#anx_3/par_1/pnt_c').
:- pred safety_component_of_critical_infrastructure/1, gloss('AI system as safety component in critical infrastructure management'), source('celex:32024R1689/oj#anx_3/par_2').
:- pred access_or_admission_to_education/1, gloss('AI system for determining access to educational institutions'), source('celex:32024R1689/oj#anx_3/par_3/pnt_a').
:- pred evaluate_learning_outcomes/1, gloss('AI system for evaluating learning outcomes'), source('celex:32024R1689/oj#anx_3/par_3/pnt_b').
:- pred assess_appropriate_education_level/1, gloss('AI system for assessing appropriate education level'), source('celex:32024R1689/oj#anx_3/par_3/pnt_c').
:- pred monitor_student_test_behaviour/1, gloss('AI system for monitoring prohibited student behaviour during tests'), source('celex:32024R1689/oj#anx_3/par_3/pnt_d').
:- pred recruitment_or_selection/1, gloss('AI system for recruitment or selection of persons'), source('celex:32024R1689/oj#anx_3/par_4/pnt_a').
:- pred work_related_decisions/1, gloss('AI system affecting work-related relationships'), source('celex:32024R1689/oj#anx_3/par_4/pnt_b').
:- pred evaluate_public_benefits_eligibility/1, gloss('AI system for evaluating eligibility for public benefits'), source('celex:32024R1689/oj#anx_3/par_5/pnt_a').
:- pred evaluate_creditworthiness/1, gloss('AI system for evaluating creditworthiness or credit score'), source('celex:32024R1689/oj#anx_3/par_5/pnt_b').
:- pred risk_assessment_life_health_insurance/1, gloss('AI system for risk assessment and pricing in life and health insurance'), source('celex:32024R1689/oj#anx_3/par_5/pnt_c').
:- pred emergency_call_evaluation_or_dispatch/1, gloss('AI system for evaluating or dispatching emergency response'), source('celex:32024R1689/oj#anx_3/par_5/pnt_d').
:- pred assess_victimisation_risk/1, gloss('AI system for assessing risk of becoming victim of criminal offences'), source('celex:32024R1689/oj#anx_3/par_6/pnt_a').
:- pred polygraph_or_similar_law_enforcement/1, gloss('AI system used as polygraph or similar tool by law enforcement'), source('celex:32024R1689/oj#anx_3/par_6/pnt_b').
:- pred evaluate_evidence_reliability/1, gloss('AI system for evaluating reliability of evidence in criminal proceedings'), source('celex:32024R1689/oj#anx_3/par_6/pnt_c').
:- pred assess_reoffending_risk/1, gloss('AI system for assessing risk of offending or re-offending'), source('celex:32024R1689/oj#anx_3/par_6/pnt_d').
:- pred profiling_in_criminal_investigation/1, gloss('AI system for profiling in detection, investigation or prosecution of criminal offences'), source('celex:32024R1689/oj#anx_3/par_6/pnt_e').
:- pred polygraph_or_similar_migration/1, gloss('AI system used as polygraph or similar tool in migration context'), source('celex:32024R1689/oj#anx_3/par_7/pnt_a').
:- pred assess_migration_risk/1, gloss('AI system for assessing risk posed by person entering Member State territory'), source('celex:32024R1689/oj#anx_3/par_7/pnt_b').
:- pred assist_asylum_visa_residence_examination/1, gloss('AI system for assisting examination of asylum, visa or residence applications'), source('celex:32024R1689/oj#anx_3/par_7/pnt_c').
:- pred detect_recognise_identify_in_migration/1, gloss('AI system for detecting, recognising or identifying persons in migration context'), source('celex:32024R1689/oj#anx_3/par_7/pnt_d').
:- pred judicial_research_and_interpretation/1, gloss('AI system for assisting judicial authority in researching and interpreting facts and law'), source('celex:32024R1689/oj#anx_3/par_8/pnt_a').
:- pred influence_election_or_voting_behaviour/1, gloss('AI system for influencing election outcome or voting behaviour'), source('celex:32024R1689/oj#anx_3/par_8/pnt_b').

high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_system(S).

high_risk_ai_system(S) :-
    biometric_categorisation_system(S),
    sensitive_or_protected_attributes(S).

high_risk_ai_system(S) :-
    emotion_recognition_system(S).

high_risk_ai_system(S) :-
    safety_component_of_critical_infrastructure(S).

high_risk_ai_system(S) :-
    access_or_admission_to_education(S).

high_risk_ai_system(S) :-
    evaluate_learning_outcomes(S).

high_risk_ai_system(S) :-
    assess_appropriate_education_level(S).

high_risk_ai_system(S) :-
    monitor_student_test_behaviour(S).

high_risk_ai_system(S) :-
    recruitment_or_selection(S).

high_risk_ai_system(S) :-
    work_related_decisions(S).

high_risk_ai_system(S) :-
    evaluate_public_benefits_eligibility(S).

high_risk_ai_system(S) :-
    evaluate_creditworthiness(S),
    \+ detect_financial_fraud(S).

high_risk_ai_system(S) :-
    risk_assessment_life_health_insurance(S).

high_risk_ai_system(S) :-
    emergency_call_evaluation_or_dispatch(S).

high_risk_ai_system(S) :-
    assess_victimisation_risk(S).

high_risk_ai_system(S) :-
    polygraph_or_similar_law_enforcement(S).

high_risk_ai_system(S) :-
    evaluate_evidence_reliability(S).

high_risk_ai_system(S) :-
    assess_reoffending_risk(S),
    \+ solely_based_on_profiling(S).

high_risk_ai_system(S) :-
    profiling_in_criminal_investigation(S).

high_risk_ai_system(S) :-
    polygraph_or_similar_migration(S).

high_risk_ai_system(S) :-
    assess_migration_risk(S).

high_risk_ai_system(S) :-
    assist_asylum_visa_residence_examination(S).

high_risk_ai_system(S) :-
    detect_recognise_identify_in_migration(S),
    \+ verify_travel_documents(S).

high_risk_ai_system(S) :-
    judicial_research_and_interpretation(S).

high_risk_ai_system(S) :-
    influence_election_or_voting_behaviour(S),
    \+ not_directly_exposed_to_natural_persons(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_system/1, 'celex:32024R1689/oj#anx_3/par_1/pnt_a').
provenance(biometric_categorisation_system/1, 'celex:32024R1689/oj#anx_3/par_1/pnt_b').
provenance(emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3/par_1/pnt_c').
provenance(safety_component_of_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3/par_2').
provenance(access_or_admission_to_education/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_a').
provenance(evaluate_learning_outcomes/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_b').
provenance(assess_appropriate_education_level/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_c').
provenance(monitor_student_test_behaviour/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_d').
provenance(recruitment_or_selection/1, 'celex:32024R1689/oj#anx_3/par_4/pnt_a').
provenance(work_related_decisions/1, 'celex:32024R1689/oj#anx_3/par_4/pnt_b').
provenance(evaluate_public_benefits_eligibility/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_a').
provenance(evaluate_creditworthiness/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_b').
provenance(risk_assessment_life_health_insurance/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_c').
provenance(emergency_call_evaluation_or_dispatch/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_d').
provenance(assess_victimisation_risk/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_a').
provenance(polygraph_or_similar_law_enforcement/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_b').
provenance(evaluate_evidence_reliability/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_c').
provenance(assess_reoffending_risk/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_d').
provenance(profiling_in_criminal_investigation/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_e').
provenance(polygraph_or_similar_migration/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_a').
provenance(assess_migration_risk/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_b').
provenance(assist_asylum_visa_residence_examination/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_c').
provenance(detect_recognise_identify_in_migration/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_d').
provenance(judicial_research_and_interpretation/1, 'celex:32024R1689/oj#anx_3/par_8/pnt_a').
provenance(influence_election_or_voting_behaviour/1, 'celex:32024R1689/oj#anx_3/par_8/pnt_b').

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
