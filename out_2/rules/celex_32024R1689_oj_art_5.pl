% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 913a78c4db059ef51f880f701d9c1b44599a0e3f3a06131d64a79f3f63966eed
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_subliminal_technique_ai_system/1, gloss('AI system that deploys subliminal or manipulative techniques'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_vulnerability_exploiting_ai_system/1, gloss('AI system that exploits vulnerabilities of persons or groups'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring_ai_system/1, gloss('AI system that performs social scoring of persons or groups'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_criminal_risk_assessment_ai_system/1, gloss('AI system that assesses criminal risk of natural persons based on profiling'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_facial_recognition_database_creation_ai_system/1, gloss('AI system that creates or expands facial recognition databases by untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference_ai_system/1, gloss('AI system that infers emotions of natural persons in workplace or education'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation_ai_system/1, gloss('AI system that categorises persons on protected attributes from biometric data'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_real_time_remote_biometric_identification_in_public_spaces/1, gloss('Real‑time remote biometric identification system used in publicly accessible spaces for law enforcement'), source('celex:32024R1689/oj#art_5').

:- pred permitted_use_for_objective/2, gloss('Exception permitting use of real‑time remote biometric ID for a specific law‑enforcement objective'), source('celex:32024R1689/oj#art_5').
:- pred permitted_emotion_inference_medical_safety/1, gloss('Exception permitting emotion‑inference AI for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred permitted_biometric_categorisation_for_law_enforcement/1, gloss('Exception permitting biometric categorisation for lawful law‑enforcement purposes'), source('celex:32024R1689/oj#art_5').

:- pred must_deploy_for_identity_confirmation/1, gloss('Deployment limited to confirming identity of a specifically targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred must_notify/2, gloss('Obligation to notify a competent authority of the use of a real‑time remote biometric ID system'), source('celex:32024R1689/oj#art_5').
:- pred must_submit/2, gloss('Obligation of national authorities to submit annual reports to the Commission'), source('celex:32024R1689/oj#art_5').
:- pred must_publish/2, gloss('Commission must publish annual reports'), source('celex:32024R1689/oj#art_5').
:- pred must_authorise/2, gloss('Prior authorisation required unless urgency'), source('celex:32024R1689/oj#art_5').
:- pred permitted_urgency/1, gloss('Exception allowing use in duly justified urgent cases'), source('celex:32024R1689/oj#art_5').

:- pred deploys_subliminal_technique/1, gloss('Deploys subliminal or manipulative techniques'), source('celex:32024R1689/oj#art_5').
:- pred exploits_vulnerability/1, gloss('Exploits vulnerability of a natural person or specific group'), source('celex:32024R1689/oj#art_5').
:- pred performs_social_scoring/1, gloss('Performs social scoring based on behaviour or inferred characteristics'), source('celex:32024R1689/oj#art_5').
:- pred performs_criminal_risk_assessment/1, gloss('Assesses criminal risk of a natural person based on profiling'), source('celex:32024R1689/oj#art_5').
:- pred creates_facial_recognition_database/1, gloss('Creates or expands facial‑recognition database by untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred infers_emotion/1, gloss('Infers emotions of a natural person'), source('celex:32024R1689/oj#art_5').
:- pred intended_for_medical_or_safety_reason/1, gloss('Use intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred infers_protected_attribute/1, gloss('Infers protected attribute from biometric data'), source('celex:32024R1689/oj#art_5').
:- pred data_protection_authority/1, gloss('National data‑protection authority'), source('celex:32024R1689/oj#art_5').

prohibited_subliminal_technique_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    deploys_subliminal_technique(S).
provenance(prohibited_subliminal_technique_ai_system/1, 'celex:32024R1689/oj#art_5').

prohibited_vulnerability_exploiting_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    exploits_vulnerability(S).
provenance(prohibited_vulnerability_exploiting_ai_system/1, 'celex:32024R1689/oj#art_5').

prohibited_social_scoring_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    performs_social_scoring(S).
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').

prohibited_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    performs_criminal_risk_assessment(S).
provenance(prohibited_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').

prohibited_facial_recognition_database_creation_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    creates_facial_recognition_database(S).
provenance(prohibited_facial_recognition_database_creation_ai_system/1, 'celex:32024R1689/oj#art_5').

prohibited_emotion_inference_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    infers_emotion(S),
    \+ permitted_emotion_inference_medical_safety(S).
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').

permitted_emotion_inference_medical_safety(S) :-
    ai_system(S),
    intended_for_medical_or_safety_reason(S).
provenance(permitted_emotion_inference_medical_safety/1, 'celex:32024R1689/oj#art_5').

prohibited_biometric_categorisation_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    infers_protected_attribute(S),
    \+ permitted_biometric_categorisation_for_law_enforcement(S).
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').

permitted_biometric_categorisation_for_law_enforcement(S) :-
    ai_system(S),
    law_enforcement_authority(_).
provenance(permitted_biometric_categorisation_for_law_enforcement/1, 'celex:32024R1689/oj#art_5').

prohibited_real_time_remote_biometric_identification_in_public_spaces(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(_),
    law_enforcement_authority(_),
    \+ permitted_use_for_objective(S, _).
provenance(prohibited_real_time_remote_biometric_identification_in_public_spaces/1, 'celex:32024R1689/oj#art_5').

permitted_use_for_objective(S, targeted_search) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_).
permitted_use_for_objective(S, threat_prevention) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_).
permitted_use_for_objective(S, suspect_localisation) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_).
provenance(permitted_use_for_objective/2, 'celex:32024R1689/oj#art_5').

must_deploy_for_identity_confirmation(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_),
    confirm_identity(S).
provenance(must_deploy_for_identity_confirmation/1, 'celex:32024R1689/oj#art_5').

must_notify(A, S) :-
    market_surveillance_authority(A),
    real_time_remote_biometric_identification_system(S).
must_notify(A, S) :-
    data_protection_authority(A),
    real_time_remote_biometric_identification_system(S).
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').

must_submit(A, annual_report(S)) :-
    (market_surveillance_authority(A) ; data_protection_authority(A)),
    real_time_remote_biometric_identification_system(S).
provenance(must_submit/2, 'celex:32024R1689/oj#art_5').

must_publish(commission, annual_report) :-
    true.
provenance(must_publish/2, 'celex:32024R1689/oj#art_5').

must_authorise(A, S) :-
    (market_surveillance_authority(A) ; data_protection_authority(A)),
    real_time_remote_biometric_identification_system(S),
    \+ permitted_urgency(S).
provenance(must_authorise/2, 'celex:32024R1689/oj#art_5').

permitted_urgency(S) :-
    real_time_remote_biometric_identification_system(S),
    urgency(S).
provenance(permitted_urgency/1, 'celex:32024R1689/oj#art_5').

% References
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5').
