% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4bedcf66ca1e3b8d173a589ab54b6a7981ec567ad6ef93951fedb22f70ae184a
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_subliminal_manipulation/1, gloss('AI system using subliminal or manipulative techniques causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_exploitation_of_vulnerabilities/1, gloss('AI system exploiting vulnerabilities causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring/1, gloss('AI system for social scoring leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_criminal_risk_assessment/1, gloss('AI system assessing criminal risk based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_untargeted_facial_scraping/1, gloss('AI system creating facial recognition databases via untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference/1, gloss('AI system inferring emotions in workplace or education'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation/1, gloss('AI system categorising persons by sensitive attributes via biometrics'), source('celex:32024R1689/oj#art_5').
:- pred permitted_law_enforcement_rbi/1, gloss('Real-time remote biometric ID for specific law enforcement objectives'), source('celex:32024R1689/oj#art_5').
:- pred must_confirm_targeted_identity/2, gloss('Deployer must use RBI only to confirm identity of targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred must_complete_fria_before_use/2, gloss('Authority must complete fundamental rights impact assessment before RBI use'), source('celex:32024R1689/oj#art_5').
:- pred must_register_in_eu_database/2, gloss('Authority must register RBI system in EU database'), source('celex:32024R1689/oj#art_5').
:- pred must_obtain_prior_authorisation/2, gloss('Authority must obtain prior authorisation for RBI use'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_rbi_use/2, gloss('Authority must notify market surveillance and DPA of RBI use'), source('celex:32024R1689/oj#art_5').
:- pred must_submit_annual_report/2, gloss('National authority must submit annual report on RBI use to Commission'), source('celex:32024R1689/oj#art_5').
:- pred must_publish_annual_report/1, gloss('Commission must publish annual report on RBI use'), source('celex:32024R1689/oj#art_5').
:- pred exempt_criminal_risk_assessment/1, gloss('Criminal risk AI supporting human assessment based on objective facts'), source('celex:32024R1689/oj#art_5').
:- pred exempt_emotion_inference/1, gloss('Emotion inference intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred exempt_biometric_categorisation/1, gloss('Labelling or filtering of lawfully acquired biometric datasets for law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred urgency_applies/1, gloss('Duly justified case of urgency permitting deferred registration or authorisation'), source('celex:32024R1689/oj#art_5').

prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deploys_subliminal_or_manipulative_techniques(S),
    materially_distorts_behaviour(S),
    causes_significant_harm(S).

prohibited_exploitation_of_vulnerabilities(S) :-
    ai_system(S),
    exploits_vulnerability(S),
    materially_distorts_behaviour(S),
    causes_significant_harm(S).

prohibited_social_scoring(S) :-
    ai_system(S),
    evaluates_social_behaviour_or_characteristics(S),
    leads_to_detrimental_treatment(S).

prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    assesses_criminal_offence_risk(S),
    based_solely_on_profiling_or_personality(S),
    \+ exempt_criminal_risk_assessment(S).

exempt_criminal_risk_assessment(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_verifiable_facts(S).

prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping(S).

prohibited_emotion_inference(S) :-
    ai_system(S),
    infers_emotions(S),
    used_in_workplace_or_education(S),
    \+ exempt_emotion_inference(S).

exempt_emotion_inference(S) :-
    ai_system(S),
    intended_for_medical_or_safety_reasons(S).

prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    deduces_sensitive_attribute(S),
    \+ exempt_biometric_categorisation(S).

exempt_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    labelling_or_filtering_lawful_dataset(S),
    law_enforcement_context(S).

permitted_law_enforcement_rbi(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    law_enforcement_purpose(S),
    strictly_necessary_objective(S).

must_confirm_targeted_identity(D, S) :-
    deployer(D),
    permitted_law_enforcement_rbi(S),
    deployment(S, confirm_identity(_Target)).

must_complete_fria_before_use(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S),
    \+ urgency_applies(S).

must_register_in_eu_database(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S),
    \+ urgency_applies(S).

must_obtain_prior_authorisation(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S),
    \+ urgency_applies(S).

must_notify_rbi_use(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S).

must_submit_annual_report(NationalAuthority, commission) :-
    national_competent_authority(NationalAuthority),
    notified_of_rbi_use(NationalAuthority, _S).

must_publish_annual_report(commission) :-
    true.

provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerabilities/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_scraping/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rbi/1, 'celex:32024R1689/oj#art_5').
provenance(must_confirm_targeted_identity/2, 'celex:32024R1689/oj#art_5').
provenance(must_complete_fria_before_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_5').
provenance(must_obtain_prior_authorisation/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_rbi_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(urgency_applies/1, 'celex:32024R1689/oj#art_5').

references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
