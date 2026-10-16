% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : e37292af28f0048c803e4ff65cfc0c13850ad3aaf03e784bae769a27191ca9bd
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_subliminal_manipulation/1, gloss('AI system deploying subliminal or manipulative techniques causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_vulnerability_exploitation/1, gloss('AI system exploiting vulnerabilities due to age, disability or social situation causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring/1, gloss('AI system for social scoring leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_criminal_risk_assessment/1, gloss('AI system assessing criminal offence risk based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_untargeted_facial_scraping/1, gloss('AI system creating facial recognition databases via untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference/1, gloss('AI system inferring emotions in workplace or education institutions'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation/1, gloss('Biometric categorisation system deducing sensitive attributes'), source('celex:32024R1689/oj#art_5').
:- pred permitted_law_enforcement_rbi_use/2, gloss('Permitted use of real-time RBI in public spaces for law enforcement objectives'), source('celex:32024R1689/oj#art_5').
:- pred must_obtain_prior_authorisation_for_rbi/2, gloss('Law enforcement authority must obtain prior authorisation for RBI use'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_rbi_use/2, gloss('Authority must notify market surveillance and data protection authorities of RBI use'), source('celex:32024R1689/oj#art_5').
:- pred must_submit_annual_report_on_rbi/2, gloss('National authority must submit annual report on RBI use to Commission'), source('celex:32024R1689/oj#art_5').
:- pred must_publish_annual_report_on_rbi/1, gloss('Commission must publish annual report on RBI use'), source('celex:32024R1689/oj#art_5').
:- pred exempt_criminal_risk_assessment/1, gloss('Exemption for AI systems supporting human assessment based on objective facts'), source('celex:32024R1689/oj#art_5').
:- pred exempt_emotion_inference/1, gloss('Exemption for emotion inference intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred exempt_biometric_categorisation/1, gloss('Exemption for labelling or filtering lawfully acquired datasets in law enforcement'), source('celex:32024R1689/oj#art_5').

prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).

prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).

prohibited_social_scoring(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).

prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    placing_on_market(S),
    \+ exempt_criminal_risk_assessment(S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    putting_into_service(S),
    \+ exempt_criminal_risk_assessment(S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S),
    \+ exempt_criminal_risk_assessment(S).

exempt_criminal_risk_assessment(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_facts(S).

prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).

prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    placing_on_market(S),
    \+ exempt_emotion_inference(S).
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    putting_into_service(S),
    \+ exempt_emotion_inference(S).
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    deployer(_D),
    uses_system(_D, S),
    \+ exempt_emotion_inference(S).

exempt_emotion_inference(S) :-
    emotion_recognition_system(S),
    intended_for_medical_or_safety_reasons(S).

prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    placing_on_market(S),
    \+ exempt_biometric_categorisation(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    putting_into_service(S),
    \+ exempt_biometric_categorisation(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    deployer(_D),
    uses_system(_D, S),
    \+ exempt_biometric_categorisation(S).

exempt_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    law_enforcement_context(S),
    lawfully_acquired_dataset_labelling(S).

permitted_law_enforcement_rbi_use(S, targeted_search_for_victims) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space_deployment(S),
    law_enforcement_purpose(S).
permitted_law_enforcement_rbi_use(S, prevention_of_imminent_threat) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space_deployment(S),
    law_enforcement_purpose(S).
permitted_law_enforcement_rbi_use(S, localisation_of_suspect) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space_deployment(S),
    law_enforcement_purpose(S).

must_obtain_prior_authorisation_for_rbi(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    permitted_law_enforcement_rbi_use(S, _Objective),
    \+ urgency_applies(S).

must_notify_rbi_use(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    permitted_law_enforcement_rbi_use(S, _Objective).

must_submit_annual_report_on_rbi(Authority, commission) :-
    market_surveillance_authority(Authority),
    notified_of_rbi_use(Authority).
must_submit_annual_report_on_rbi(Authority, commission) :-
    national_data_protection_authority(Authority),
    notified_of_rbi_use(Authority).

must_publish_annual_report_on_rbi(commission) :-
    received_annual_reports_from_member_states.

provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploitation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_scraping/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rbi_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_obtain_prior_authorisation_for_rbi/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_rbi_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report_on_rbi/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report_on_rbi/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').

references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
