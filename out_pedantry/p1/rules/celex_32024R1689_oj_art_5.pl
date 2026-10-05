% unit      : celex:32024R1689/oj#art_5
% source    : celex:32024R1689%2Foj#art_5.xml
% model     : gpt-oss:120b-cloud
% pedantry  : 1
% prompt sha: 23bbcc71fcf71e2c18c85b07ba852428ecd04a2823a4e1aed23b1fa59a42623a
% signature: 9a545085be0feeadb8cbc09496f41df50bf4ee2fa5f0349daf74e28549a48022
% cached    : False
:- pred prohibited_ai_practice/1, gloss('AI practice prohibited under Art 5'), source('celex:32024R1689/oj#art_5').

:- pred deploys_subliminal_or_deceptive_technique/1, gloss('AI system deploys subliminal or purposefully manipulative/deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred materially_distorts_behavior/1, gloss('AI system materially distorts the behaviour of a person or group'), source('celex:32024R1689/oj#art_5').
:- pred causes_significant_harm/1, gloss('Resulting in significant harm to a person or group'), source('celex:32024R1689/oj#art_5').

:- pred exploits_vulnerability/1, gloss('AI system exploits vulnerabilities of a natural person or specific group'), source('celex:32024R1689/oj#art_5').

:- pred performs_social_scoring/1, gloss('AI system evaluates or classifies persons over time based on social behaviour leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').

:- pred makes_risk_assessment_using_profiling/1, gloss('AI system assesses risk of a natural person committing a criminal offence based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred permitted_support_human_assessment/1, gloss('AI system used to support human assessment based on objective, verifiable facts'), source('celex:32024R1689/oj#art_5').

:- pred creates_facial_recognition_database_untargeted/1, gloss('AI system creates or expands facial‑recognition databases by untargeted scraping'), source('celex:32024R1689/oj#art_5').

:- pred infers_emotions_in_workplace_or_education/1, gloss('AI system infers emotions of a natural person in workplace or education contexts'), source('celex:32024R1689/oj#art_5').
:- pred intended_for_medical_or_safety/1, gloss('AI system intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').

:- pred infers_protected_attributes/1, gloss('Biometric categorisation system infers race, political opinion, trade‑union membership, religious/philosophical belief, sex life or sexual orientation'), source('celex:32024R1689/oj#art_5').
:- pred exception_lawful_dataset_labelling/1, gloss('Exception for lawful dataset labelling or filtering in law‑enforcement context'), source('celex:32024R1689/oj#art_5').

:- pred publicly_accessible_space/1, gloss('Space accessible to an undetermined number of persons'), source('celex:32024R1689/oj#art_5').
:- pred law_enforcement_purpose/1, gloss('Use for law‑enforcement purposes'), source('celex:32024R1689/oj#art_5').
:- pred permitted_objective_h/1, gloss('Use strictly necessary for one of the listed law‑enforcement objectives'), source('celex:32024R1689/oj#art_5').

% Prohibited practices (sub‑paragraphs a–h)

prohibited_ai_practice(S) :-
    ai_system(S),
    deploys_subliminal_or_deceptive_technique(S),
    materially_distorts_behavior(S),
    causes_significant_harm(S).

prohibited_ai_practice(S) :-
    ai_system(S),
    exploits_vulnerability(S),
    causes_significant_harm(S).

prohibited_ai_practice(S) :-
    ai_system(S),
    performs_social_scoring(S).

prohibited_ai_practice(S) :-
    ai_system(S),
    makes_risk_assessment_using_profiling(S),
    \+ permitted_support_human_assessment(S).

prohibited_ai_practice(S) :-
    ai_system(S),
    creates_facial_recognition_database_untargeted(S).

prohibited_ai_practice(S) :-
    ai_system(S),
    infers_emotions_in_workplace_or_education(S),
    \+ intended_for_medical_or_safety(S).

prohibited_ai_practice(S) :-
    biometric_categorisation_system(S),
    infers_protected_attributes(S),
    \+ exception_lawful_dataset_labelling(S).

prohibited_ai_practice(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    \+ permitted_objective_h(S).

% Provenance
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_5').

% References
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5').
