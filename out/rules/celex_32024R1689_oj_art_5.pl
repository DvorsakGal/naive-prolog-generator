% unit       : celex:32024R1689/oj#art_5
% title      : Prohibited AI practices
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : gpt-oss:120b-cloud
% prompt sha : 13472eb14a0d02542f45be05b9e1417b55c5b56313e6391ca1a19aeed66febac
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred use_ai_system/2, gloss('actor uses an AI system'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_subliminal_manipulative_ai_system/1, gloss('AI system using subliminal or manipulative techniques that distort behaviour'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_vulnerability_exploiting_ai_system/1, gloss('AI system exploiting vulnerabilities of persons'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring_ai_system/1, gloss('AI system performing social scoring leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_risk_assessment_ai_system/1, gloss('AI system assessing risk of criminal offence based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred permitted_support_human_assessment/1, gloss('AI system used to support human assessment based on objective facts'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_facial_recognition_database_ai_system/1, gloss('AI system creating or expanding facial recognition databases by untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference_ai_system/1, gloss('AI system inferring emotions in workplace or education, except for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred permitted_medical_or_safety_use/1, gloss('exception for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation_ai_system/1, gloss('AI system categorising persons by biometric data to infer sensitive attributes'), source('celex:32024R1689/oj#art_5').
:- pred permitted_lawful_dataset_labeling/1, gloss('exception for lawful dataset labelling in law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_real_time_remote_biometric_identification_system/1, gloss('real‑time remote biometric identification in public spaces for law enforcement, unless specific objectives are met'), source('celex:32024R1689/oj#art_5').
:- pred permitted_use_rt_rbi/3, gloss('permitted use of real‑time remote biometric identification for law enforcement objectives'), source('celex:32024R1689/oj#art_5').
:- pred objective_targeted_search/1, gloss('objective of targeted search for victims or missing persons'), source('celex:32024R1689/oj#art_5').
:- pred objective_prevent_threat/1, gloss('objective of preventing imminent threat to life or safety'), source('celex:32024R1689/oj#art_5').
:- pred objective_localisation/1, gloss('objective of locating or identifying a suspect'), source('celex:32024R1689/oj#art_5').
:- pred necessary_and_proportionate/1, gloss('use is necessary and proportionate'), source('celex:32024R1689/oj#art_5').
:- pred urgency/1, gloss('urgency justification'), source('celex:32024R1689/oj#art_5').
:- pred required_fundamental_rights_impact_assessment/2, gloss('fundamental rights impact assessment required'), source('celex:32024R1689/oj#art_5').
:- pred required_registration/1, gloss('registration in EU database required'), source('celex:32024R1689/oj#art_5').
:- pred required_authorisation/1, gloss('prior authorisation required'), source('celex:32024R1689/oj#art_5').
:- pred must_notify/2, gloss('notification to authority required'), source('celex:32024R1689/oj#art_5').
:- pred required_annual_report/2, gloss('annual report submission required'), source('celex:32024R1689/oj#art_5').
:- pred subliminal_manipulative/1, gloss('uses subliminal or manipulative techniques'), source('celex:32024R1689/oj#art_5').
:- pred objective_distort_behavior/1, gloss('objective to materially distort behaviour'), source('celex:32024R1689/oj#art_5').
:- pred vulnerability_exploiting/1, gloss('exploits vulnerabilities of persons'), source('celex:32024R1689/oj#art_5').
:- pred social_scoring/1, gloss('performs social scoring'), source('celex:32024R1689/oj#art_5').
:- pred risk_assessment_of_natural_person/1, gloss('assesses risk of criminal offence based on profiling'), source('celex:32024R1689/oj#art_5').
:- pred untargeted_scraping/1, gloss('untargeted scraping of facial images'), source('celex:32024R1689/oj#art_5').
:- pred infer_emotions/1, gloss('infers emotions'), source('celex:32024R1689/oj#art_5').
:- pred context_workplace_education/1, gloss('context is workplace or education'), source('celex:32024R1689/oj#art_5').
:- pred infer_sensitive_attributes/1, gloss('infers race, political opinion, etc.'), source('celex:32024R1689/oj#art_5').
:- pred data_protection_authority/1, gloss('national data protection authority'), source('celex:32024R1689/oj#art_5').

% Prohibited practices (a) – (g)
prohibited_subliminal_manipulative_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    subliminal_manipulative(S),
    objective_distort_behavior(S).

prohibited_vulnerability_exploiting_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    vulnerability_exploiting(S),
    objective_distort_behavior(S).

prohibited_social_scoring_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    social_scoring(S).

prohibited_risk_assessment_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    risk_assessment_of_natural_person(S),
    \+ permitted_support_human_assessment(S).

prohibited_facial_recognition_database_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    untargeted_scraping(S).

prohibited_emotion_inference_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    infer_emotions(S),
    context_workplace_education(S),
    \+ permitted_medical_or_safety_use(S).

prohibited_biometric_categorisation_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    biometric_categorisation_system(S),
    infer_sensitive_attributes(S),
    \+ permitted_lawful_dataset_labeling(S).

% Prohibited practice (h) with permitted objectives
prohibited_real_time_remote_biometric_identification_system(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_authority(Authority),
    \+ permitted_use_rt_rbi(S, Authority, Space).

permitted_use_rt_rbi(S, Authority, Space) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(Authority),
    publicly_accessible_space(Space),
    (objective_targeted_search(S) ; objective_prevent_threat(S) ; objective_localisation(S)),
    necessary_and_proportionate(S).

% Obligations and requirements
must_notify(market_surveillance_authority, S) :-
    prohibited_real_time_remote_biometric_identification_system(S).

must_notify(data_protection_authority, S) :-
    prohibited_real_time_remote_biometric_identification_system(S).

required_fundamental_rights_impact_assessment(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S).

required_registration(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ urgency(S).

required_authorisation(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ urgency(S).

required_annual_report(Authority, S) :-
    market_surveillance_authority(Authority),
    real_time_remote_biometric_identification_system(S).

% Provenance
provenance(use_ai_system/2, 'celex:32024R1689/oj#art_5').
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploiting_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_support_human_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_medical_or_safety_use/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_lawful_dataset_labeling/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_use_rt_rbi/3, 'celex:32024R1689/oj#art_5').
provenance(objective_targeted_search/1, 'celex:32024R1689/oj#art_5').
provenance(objective_prevent_threat/1, 'celex:32024R1689/oj#art_5').
provenance(objective_localisation/1, 'celex:32024R1689/oj#art_5').
provenance(necessary_and_proportionate/1, 'celex:32024R1689/oj#art_5').
provenance(urgency/1, 'celex:32024R1689/oj#art_5').
provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_5').
provenance(required_registration/1, 'celex:32024R1689/oj#art_5').
provenance(required_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
provenance(required_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(subliminal_manipulative/1, 'celex:32024R1689/oj#art_5').
provenance(objective_distort_behavior/1, 'celex:32024R1689/oj#art_5').
provenance(vulnerability_exploiting/1, 'celex:32024R1689/oj#art_5').
provenance(social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(risk_assessment_of_natural_person/1, 'celex:32024R1689/oj#art_5').
provenance(untargeted_scraping/1, 'celex:32024R1689/oj#art_5').
provenance(infer_emotions/1, 'celex:32024R1689/oj#art_5').
provenance(context_workplace_education/1, 'celex:32024R1689/oj#art_5').
provenance(infer_sensitive_attributes/1, 'celex:32024R1689/oj#art_5').
provenance(data_protection_authority/1, 'celex:32024R1689/oj#art_5').

% References
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5').
