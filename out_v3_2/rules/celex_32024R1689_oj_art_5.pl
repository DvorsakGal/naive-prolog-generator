% unit      : celex:32024R1689/oj#art_5
% source    : celex:32024R1689%2Foj#art_5.xml
% model     : gpt-oss:120b-cloud
% prompt sha: cd9fac824488dc3621569ee00c5826f31ca09eceb44f6cf34c02c3522b2afc01
% signature: 5a505f3da956f61957e66c01dbcf90e9fc05776918032a15a3fc75b49d8c5e61
% cached    : False
%--- Prohibited AI practices (Article 5) ---

% (a) Subliminal or manipulative techniques that materially distort behaviour and cause significant harm
prohibited_subliminal_manipulation_ai_system/1 :-
    ai_system(S),
    (places_on_market(_,S) ; puts_into_service(_,S)),
    deploys_subliminal_techniques(S),
    materially_distorts_behaviour(S),
    causes_significant_harm(S).
provenance(prohibited_subliminal_manipulation_ai_system/1, 'celex:32024R1689/oj#art_5').

% (b) Exploitation of vulnerabilities (age, disability, social/economic situation) causing significant harm
prohibited_exploitation_of_vulnerabilities_ai_system/1 :-
    ai_system(S),
    (places_on_market(_,S) ; puts_into_service(_,S)),
    exploits_vulnerabilities(S),
    causes_significant_harm(S).
provenance(prohibited_exploitation_of_vulnerabilities_ai_system/1, 'celex:32024R1689/oj#art_5').

% (c) Social scoring leading to detrimental or disproportionate treatment
prohibited_social_scoring_ai_system/1 :-
    ai_system(S),
    (places_on_market(_,S) ; puts_into_service(_,S)),
    performs_social_scoring(S),
    leads_to_detrimental_treatment(S).
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').

% (d) Risk assessment of natural persons based solely on profiling or personality traits,
%     except when used to support a human assessment based on objective, verifiable facts
prohibited_risk_assessment_ai_system/1 :-
    ai_system(S),
    (places_on_market(_,S) ; puts_into_service(_,S)),
    used_for_risk_assessment_of_natural_person(S),
    \+ permitted_support_human_assessment(S).
provenance(prohibited_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').

% Permission for the exception in (d)
permitted_support_human_assessment/1 :-
    ai_system(S),
    used_to_support_human_assessment(S),
    based_on_objective_verifiable_facts(S).
provenance(permitted_support_human_assessment/1, 'celex:32024R1689/oj#art_5').

% (e) Creation or expansion of facial‑recognition databases by untargeted scraping
prohibited_facial_recognition_database_ai_system/1 :-
    ai_system(S),
    (places_on_market(_,S) ; puts_into_service(_,S)),
    creates_or_expands_facial_recognition_database(S).
provenance(prohibited_facial_recognition_database_ai_system/1, 'celex:32024R1689/oj#art_5').

% (f) Inference of emotions in workplace or education, except for medical or safety reasons
prohibited_emotion_inference_ai_system/1 :-
    ai_system(S),
    (places_on_market(_,S) ; puts_into_service(_,S)),
    infers_emotions_in_workplace_or_education(S),
    \+ intended_for_medical_or_safety(S).
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').

% (g) Biometric categorisation that deduces protected attributes, except lawful labelling/filtering for law enforcement
prohibited_biometric_categorisation_ai_system/1 :-
    ai_system(S),
    (places_on_market(_,S) ; puts_into_service(_,S)),
    biometric_categorisation_system(S),
    deduces_protected_attributes(S),
    \+ permitted_law_enforcement_labeling(S).
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').

% Permission for the exception in (g)
permitted_law_enforcement_labeling/1 :-
    ai_system(S),
    lawful_labeling_or_filtering_of_biometric_dataset(S),
    performed_by_law_enforcement(S).
provenance(permitted_law_enforcement_labeling/1, 'celex:32024R1689/oj#art_5').

% (h) Real‑time remote biometric identification in publicly accessible spaces for law‑enforcement,
%     prohibited unless strictly necessary for one of the listed objectives
prohibited_real_time_remote_biometric_identification_system/1 :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Sp),
    law_enforcement_authority(A),
    uses_for_law_enforcement(S, A, Sp),
    \+ permitted_rt_rbi_use_for_objective(S, _).
provenance(prohibited_real_time_remote_biometric_identification_system/1, 'celex:32024R1689/oj#art_5').

% Permission for the limited objectives in (h)
permitted_rt_rbi_use_for_objective/2 :-
    real_time_remote_biometric_identification_system(S),
    objective_targeted_search_victims(S).
permitted_rt_rbi_use_for_objective/2 :-
    real_time_remote_biometric_identification_system(S),
    objective_prevent_imminent_threat(S).
permitted_rt_rbi_use_for_objective/2 :-
    real_time_remote_biometric_identification_system(S),
    objective_localise_suspect(S).
provenance(permitted_rt_rbi_use_for_objective/2, 'celex:32024R1689/oj#art_5').

%--- Auxiliary predicates (invented) ---

:- pred deploys_subliminal_techniques/1, gloss('AI system uses subliminal or manipulative techniques beyond consciousness'), source('art_5/a').
:- pred materially_distorts_behaviour/1, gloss('AI system materially distorts the behaviour of a person or group'), source('art_5/a').
:- pred causes_significant_harm/1, gloss('The effect is likely to cause significant harm to a person or group'), source('art_5/a').

:- pred exploits_vulnerabilities/1, gloss('AI system exploits age, disability or social/economic vulnerability'), source('art_5/b').

:- pred performs_social_scoring/1, gloss('AI system evaluates or classifies persons based on social behaviour or inferred characteristics'), source('art_5/c').
:- pred leads_to_detrimental_treatment/1, gloss('Resulting in unfavourable treatment unrelated to original context or disproportionate'), source('art_5/c').

:- pred used_for_risk_assessment_of_natural_person/1, gloss('AI system assesses or predicts criminal risk based solely on profiling'), source('art_5/d').
:- pred used_to_support_human_assessment/1, gloss('AI system assists a human assessment based on objective, verifiable facts'), source('art_5/d').
:- pred based_on_objective_verifiable_facts/1, gloss('Assessment is grounded in objective evidence'), source('art_5/d').

:- pred creates_or_expands_facial_recognition_database/1, gloss('AI system creates or expands facial‑recognition databases via untargeted scraping'), source('art_5/e').

:- pred infers_emotions_in_workplace_or_education/1, gloss('AI system infers emotions of natural persons in workplace or education settings'), source('art_5/f').
:- pred intended_for_medical_or_safety/1, gloss('System is placed on the market for medical or safety reasons'), source('art_5/f').

:- pred biometric_categorisation_system/1, gloss('AI system categorises individuals based on biometric data'), source('art_5/g').
:- pred deduces_protected_attributes/1, gloss('System infers race, political opinion, trade‑union membership, religious belief, sex life or sexual orientation'), source('art_5/g').
:- pred lawful_labeling_or_filtering_of_biometric_dataset/1, gloss('Labelling or filtering of lawfully acquired biometric data'), source('art_5/g').
:- pred performed_by_law_enforcement/1, gloss('Action performed by law‑enforcement authorities'), source('art_5/g').

:- pred uses_for_law_enforcement/3, gloss('System is used by a law‑enforcement authority in a publicly accessible space'), source('art_5/h').
:- pred objective_targeted_search_victims/1, gloss('Objective: targeted search for victims of abduction, trafficking or sexual exploitation'), source('art_5/h').
:- pred objective_prevent_imminent_threat/1, gloss('Objective: prevent a substantial and imminent threat to life or safety, or a terrorist attack'), source('art_5/h').
:- pred objective_localise_suspect/1, gloss('Objective: localise or identify a suspect for criminal investigation or prosecution'), source('art_5/h').

%--- Provenance for auxiliary predicates (optional, can be omitted if not required) ---

%--- References ---
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
