% unit      : celex:32024R1689/oj#art_5
% source    : celex:32024R1689%2Foj#art_5.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 02894d55e2dcf3d9d0f45504af5d72c78fa577c85663b239860b78ddfe13e786
% signature: 00ee7559e3c3d18f1bb6c455d54ec6ce4a9521a52c53862ea62ebe810e003bb1
% cached    : False
% ==== New predicates (invented) ====
:- pred employs_subliminal_techniques/1, gloss('AI system uses subliminal techniques beyond consciousness'), source('celex:32024R1689/oj#art_5').
:- pred employs_manipulative_techniques/1, gloss('AI system uses manipulative or deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred objective_materially_distort_behavior/1, gloss('Objective or effect is to materially distort behaviour of a person or group'), source('celex:32024R1689/oj#art_5').
:- pred causes_significant_harm/1, gloss('The distortion is reasonably likely to cause significant harm'), source('celex:32024R1689/oj#art_5').

:- pred exploits_vulnerabilities/1, gloss('AI system exploits vulnerabilities due to age, disability or specific social/economic situation'), source('celex:32024R1689/oj#art_5').

:- pred evaluates_social_score/1, gloss('AI system evaluates or classifies persons based on social behaviour or inferred characteristics'), source('celex:32024R1689/oj#art_5').
:- pred leads_to_detrimental_treatment/1, gloss('Resulting social score leads to detrimental or unfavourable treatment'), source('celex:32024R1689/oj#art_5').

:- pred risk_assessment_of_criminal_offence/1, gloss('AI system makes risk assessments of persons for committing a criminal offence based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred supports_human_assessment/1, gloss('AI system is used to support human assessment based on objective, verifiable facts'), source('celex:32024R1689/oj#art_5').

:- pred creates_facial_recognition_database/1, gloss('AI system creates or expands facial recognition databases by untargeted scraping'), source('celex:32024R1689/oj#art_5').

:- pred infers_emotions_in_workplace_education/1, gloss('AI system infers emotions of a natural person in workplace or education contexts'), source('celex:32024R1689/oj#art_5').
:- pred intended_for_medical_or_safety/1, gloss('AI system is intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').

:- pred categorises_biometric_data_for_sensitive_attributes/1, gloss('AI system categorises persons based on biometric data for race, political opinions, trade union membership, religious beliefs, sex life or sexual orientation'), source('celex:32024R1689/oj#art_5').
:- pred law_enforcement_labeling_exception/1, gloss('Exception for law‑enforcement labelling or filtering of lawfully acquired biometric datasets'), source('celex:32024R1689/oj#art_5').

:- pred use_ai_system/2, gloss('Actor uses the AI system'), source('celex:32024R1689/oj#art_5').
:- pred law_enforcement_purpose/1, gloss('Use of the system is for law‑enforcement purposes'), source('celex:32024R1689/oj#art_5').

:- pred objective_targeted_search/1, gloss('Objective: targeted search for victims of abduction, trafficking or sexual exploitation'), source('celex:32024R1689/oj#art_5').
:- pred objective_prevent_threat/1, gloss('Objective: prevent a substantial and imminent threat to life or safety, or a terrorist attack'), source('celex:32024R1689/oj#art_5').
:- pred objective_localisation_identification/1, gloss('Objective: localisation or identification of a person suspected of a criminal offence'), source('celex:32024R1689/oj#art_5').

:- pred urgent_use/1, gloss('Use is justified by urgency'), source('celex:32024R1689/oj#art_5').

% ==== Prohibited AI practices ====

% (a) Subliminal / manipulative techniques
prohibited_subliminal_manipulative_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    employs_subliminal_techniques(S),
    employs_manipulative_techniques(S),
    objective_materially_distort_behavior(S),
    causes_significant_harm(S).

% (b) Exploitation of vulnerabilities
prohibited_exploit_vulnerabilities_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    exploits_vulnerabilities(S),
    objective_materially_distort_behavior(S),
    causes_significant_harm(S).

% (c) Social scoring
prohibited_social_scoring_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    evaluates_social_score(S),
    leads_to_detrimental_treatment(S).

% (d) Risk assessment of criminal offence – with exception
prohibited_risk_assessment_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    risk_assessment_of_criminal_offence(S),
    \+ permitted_risk_assessment_ai_system(S).

permitted_risk_assessment_ai_system(S) :-
    use_ai_system(U,S),
    supports_human_assessment(S).

% (e) Creation / expansion of facial‑recognition databases
prohibited_facial_recognition_database_creation_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    creates_facial_recognition_database(S).

% (f) Emotion inference in workplace / education, except medical/safety
prohibited_emotion_inference_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    infers_emotions_in_workplace_education(S),
    \+ intended_for_medical_or_safety(S).

% (g) Biometric categorisation for sensitive attributes, with law‑enforcement exception
prohibited_biometric_categorisation_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    categorises_biometric_data_for_sensitive_attributes(S),
    \+ law_enforcement_labeling_exception(S).

% (h) Real‑time remote biometric identification in publicly accessible spaces for law enforcement
prohibited_real_time_remote_biometric_identification_in_public_spaces(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S),
    \+ permitted_real_time_remote_biometric_identification_in_public_spaces(S).

permitted_real_time_remote_biometric_identification_in_public_spaces(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    (   objective_targeted_search(S)
    ;   objective_prevent_threat(S)
    ;   objective_localisation_identification(S)
    ).

% ==== Obligations / duties ====

must_notify(market_surveillance_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).

must_notify(data_protection_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).

must_conduct_fundamental_rights_impact_assessment(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).

must_register(eu_database, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S),
    \+ urgent_use(S).

must_submit_annual_report(national_market_surveillance_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).

must_submit_annual_report(national_data_protection_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).

must_publish_annual_report(commission, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).

% ==== Provenance ====
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploit_vulnerabilities_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_creation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_in_public_spaces/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification_in_public_spaces/1, 'celex:32024R1689/oj#art_5').

provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
provenance(must_conduct_fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(must_register/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').

% ==== References ====
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5/par_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5/par_3', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5/par_5', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5/par_6', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5').
