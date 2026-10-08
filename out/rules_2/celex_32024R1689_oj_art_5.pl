% unit       : celex:32024R1689/oj#art_5
% title      : Prohibited AI practices
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : gpt-oss:120b-cloud
% prompt sha : ec70abc53e1370fe8533f98f130d81586960fdc7030fa9ae00d741c43c7b8561
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
% ---------- new predicate declarations ----------
:- pred use/1, gloss('use of an AI system'), source('celex:32024R1689/oj#art_5').
:- pred deploys_subliminal_techniques/1, gloss('deploys subliminal techniques beyond consciousness'), source('celex:32024R1689/oj#art_5').
:- pred manipulative_deceptive_techniques/1, gloss('uses manipulative or deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred materially_distorts_behavior/1, gloss('materially distorts the behaviour of a person or group'), source('celex:32024R1689/oj#art_5').
:- pred causes_significant_harm/1, gloss('causes or is likely to cause significant harm'), source('celex:32024R1689/oj#art_5').

:- pred exploits_vulnerabilities/1, gloss('exploits vulnerabilities of a natural person or specific group'), source('celex:32024R1689/oj#art_5').

:- pred social_scoring/1, gloss('produces a social score based on behaviour or characteristics'), source('celex:32024R1689/oj#art_5').
:- pred detrimental_treatment/1, gloss('leads to detrimental or unfavourable treatment'), source('celex:32024R1689/oj#art_5').

:- pred makes_risk_assessment/1, gloss('makes risk assessments of natural persons'), source('celex:32024R1689/oj#art_5').
:- pred based_on_profiling/1, gloss('based solely on profiling or personality traits'), source('celex:32024R1689/oj#art_5').
:- pred permitted_human_assisted_assessment_ai_system/1, gloss('AI system used to support human assessment based on objective facts'), source('celex:32024R1689/oj#art_5').

:- pred creates_facial_database/1, gloss('creates or expands facial recognition databases via untargeted scraping'), source('celex:32024R1689/oj#art_5').

:- pred infers_emotions/1, gloss('infers emotions of a natural person'), source('celex:32024R1689/oj#art_5').
:- pred workplace_or_education/1, gloss('used in workplace or education institutions'), source('celex:32024R1689/oj#art_5').
:- pred permitted_medical_or_safety_reason_ai_system/1, gloss('AI system intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').

:- pred biometric_categorisation_system/1, gloss('categorises persons based on biometric data'), source('celex:32024R1689/oj#art_5').
:- pred deduces_protected_attributes/1, gloss('deduces race, political opinions, trade union membership, religious beliefs, sex life or sexual orientation'), source('celex:32024R1689/oj#art_5').
:- pred permitted_law_enforcement_labeling_ai_system/1, gloss('lawful labelling or filtering of biometric datasets for law enforcement'), source('celex:32024R1689/oj#art_5').

:- pred law_enforcement_use/1, gloss('used for law enforcement purposes'), source('celex:32024R1689/oj#art_5').
:- pred strictly_necessary_objective/1, gloss('strictly necessary for one of the listed objectives'), source('celex:32024R1689/oj#art_5').
:- pred confirm_identity_of_targeted_individual/1, gloss('confirms identity of specifically targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred permitted_when_objectives_met/1, gloss('use permitted when objectives and safeguards are satisfied'), source('celex:32024R1689/oj#art_5').

% ---------- prohibitions ----------
prohibited_subliminal_manipulative_ai_system(S) :-
    ai_system(S),
    deploys_subliminal_techniques(S),
    manipulative_deceptive_techniques(S),
    materially_distorts_behavior(S),
    causes_significant_harm(S),
    (placing_on_market(S); putting_into_service(S); use(S)).

prohibited_exploit_vulnerable_persons_ai_system(S) :-
    ai_system(S),
    exploits_vulnerabilities(S),
    causes_significant_harm(S),
    (placing_on_market(S); putting_into_service(S); use(S)).

prohibited_social_scoring_ai_system(S) :-
    ai_system(S),
    social_scoring(S),
    detrimental_treatment(S),
    (placing_on_market(S); putting_into_service(S); use(S)).

prohibited_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    makes_risk_assessment(S),
    based_on_profiling(S),
    causes_significant_harm(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_human_assisted_assessment_ai_system(S).

prohibited_untargeted_facial_database_ai_system(S) :-
    ai_system(S),
    creates_facial_database(S),
    (placing_on_market(S); putting_into_service(S); use(S)).

prohibited_emotion_inference_ai_system(S) :-
    ai_system(S),
    infers_emotions(S),
    workplace_or_education(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_medical_or_safety_reason_ai_system(S).

prohibited_biometric_categorisation_ai_system(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    deduces_protected_attributes(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_law_enforcement_labeling_ai_system(S).

prohibited_real_time_remote_biometric_identification_use(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_when_objectives_met(S).

% ---------- permissions (exceptions) ----------
permitted_human_assisted_assessment_ai_system(S) :-
    ai_system(S),
    used_to_support_human_assessment(S).

permitted_medical_or_safety_reason_ai_system(S) :-
    ai_system(S),
    intended_for_medical_or_safety_reason(S).

permitted_law_enforcement_labeling_ai_system(S) :-
    ai_system(S),
    law_enforcement_labeling(S).

permitted_when_objectives_met(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    strictly_necessary_objective(S),
    confirm_identity_of_targeted_individual(S).

% ---------- provenance ----------
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploit_vulnerable_persons_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_database_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_use/1, 'celex:32024R1689/oj#art_5').

provenance(permitted_human_assisted_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_medical_or_safety_reason_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_labeling_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_when_objectives_met/1, 'celex:32024R1689/oj#art_5').

% ---------- references ----------
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
