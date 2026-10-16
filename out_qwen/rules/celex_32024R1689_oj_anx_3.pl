% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a61630d357feeedc92e69fd5062958def04dd134d6f7dfb896325def1218cd31
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system_annex_iii/1, gloss('AI system listed in Annex III as high-risk'), source('celex:32024R1689/oj#anx_3').
:- pred biometric_verification_only/1, gloss('system intended solely to confirm a specific person is who they claim to be'), source('celex:32024R1689/oj#anx_3').
:- pred financial_fraud_detection_purpose/1, gloss('purpose of detecting financial fraud'), source('celex:32024R1689/oj#anx_3').
:- pred travel_document_verification_purpose/1, gloss('purpose of verifying travel documents'), source('celex:32024R1689/oj#anx_3').
:- pred administrative_campaign_tool/1, gloss('tool used to organise or structure political campaigns administratively or logistically without direct exposure to voters'), source('celex:32024R1689/oj#anx_3').

high_risk_ai_system_annex_iii(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_only(S).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    biometric_categorisation(Purpose),
    sensitive_attribute_inference(Purpose).

high_risk_ai_system_annex_iii(S) :-
    emotion_recognition_system(S).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    safety_component(S),
    critical_infrastructure_management(S).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_access_determination(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    learning_outcome_evaluation(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_level_assessment(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    student_prohibited_behaviour_monitoring(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    recruitment_or_selection(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    work_relationship_decision(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    public_benefit_eligibility_evaluation(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    creditworthiness_evaluation(Purpose),
    \+ financial_fraud_detection_purpose(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    life_health_insurance_risk_assessment(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    emergency_call_dispatch_or_triage(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    law_enforcement_victim_risk_assessment(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    law_enforcement_polygraph(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    evidence_reliability_evaluation(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    offending_risk_assessment(Purpose),
    \+ solely_profiling_based(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    law_enforcement_profiling(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    migration_polygraph(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    migration_risk_assessment(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    asylum_visa_examination_assistance(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    migration_person_identification(Purpose),
    \+ travel_document_verification_purpose(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    judicial_assistance(Purpose).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    election_influence(Purpose),
    \+ administrative_campaign_tool(S).

biometric_verification_only(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    biometric_verification(Purpose),
    sole_purpose_confirm_identity(Purpose).

financial_fraud_detection_purpose(P) :-
    intended_purpose(_, P),
    purpose_is_financial_fraud_detection(P).

travel_document_verification_purpose(P) :-
    intended_purpose(_, P),
    purpose_is_travel_document_verification(P).

administrative_campaign_tool(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    campaign_administrative_logistics(Purpose),
    \+ direct_voter_exposure(S).

provenance(high_risk_ai_system_annex_iii/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_only/1, 'celex:32024R1689/oj#anx_3').
provenance(financial_fraud_detection_purpose/1, 'celex:32024R1689/oj#anx_3').
provenance(travel_document_verification_purpose/1, 'celex:32024R1689/oj#anx_3').
provenance(administrative_campaign_tool/1, 'celex:32024R1689/oj#anx_3').

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
