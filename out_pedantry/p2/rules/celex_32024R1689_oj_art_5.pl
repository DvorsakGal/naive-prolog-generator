% unit      : celex:32024R1689/oj#art_5
% source    : celex:32024R1689%2Foj#art_5.xml
% model     : gpt-oss:120b-cloud
% pedantry  : 2
% prompt sha: 1f972e4f483b3783264579b379c1fa9231c110621ada9a4b2437ded05d5edc4f
% signature: 9a545085be0feeadb8cbc09496f41df50bf4ee2fa5f0349daf74e28549a48022
% cached    : False
:- pred deploys_subliminal_technique/1, gloss('AI system deploys subliminal techniques beyond consciousness'), source('celex:32024R1689/oj#art_5').
:- pred manipulative_deceptive_technique/1, gloss('AI system uses purposefully manipulative or deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred materially_distorts_behaviour/1, gloss('AI system materially distorts the behaviour of a person or group'), source('celex:32024R1689/oj#art_5').
:- pred causes_significant_harm/1, gloss('The distortion is likely to cause significant harm'), source('celex:32024R1689/oj#art_5').
:- pred exploits_vulnerability/1, gloss('AI system exploits vulnerability due to age, disability or socio‑economic situation'), source('celex:32024R1689/oj#art_5').
:- pred evaluation_classification_over_time/1, gloss('AI system evaluates or classifies persons over time based on social behaviour or inferred characteristics'), source('celex:32024R1689/oj#art_5').
:- pred leads_to_detrimental_treatment/1, gloss('The evaluation leads to detrimental or unfavourable treatment'), source('celex:32024R1689/oj#art_5').
:- pred risk_assessment_criminal_offence/1, gloss('AI system makes risk assessments of persons for criminal offence prediction based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred creates_facial_recognition_database/1, gloss('AI system creates or expands facial recognition databases'), source('celex:32024R1689/oj#art_5').
:- pred untargeted_scraping/1, gloss('Database is built by untargeted scraping of images or CCTV footage'), source('celex:32024R1689/oj#art_5').
:- pred infers_emotion/1, gloss('AI system infers emotions of a natural person'), source('celex:32024R1689/oj#art_5').
:- pred not_intended_medical_or_safety/1, gloss('The system is not intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred deduces_protected_attributes/1, gloss('System deduces race, political opinions, trade‑union membership, religious beliefs, sex life or sexual orientation'), source('celex:32024R1689/oj#art_5').
:- pred law_enforcement_purpose/1, gloss('Use of the system is for law‑enforcement purposes'), source('celex:32024R1689/oj#art_5').
:- pred uses/2, gloss('Use of an AI system by a deployer or other actor'), source('celex:32024R1689/oj#art_5').

prohibited_ai_practice(S) :-
    (   places_on_market(S, _)
    ;   putting_into_service(S, _)
    ;   uses(S, _)
    ),
    (   (   deploys_subliminal_technique(S)
        ;   manipulative_deceptive_technique(S)
        ),
        materially_distorts_behaviour(S),
        causes_significant_harm(S)
    ;   exploits_vulnerability(S),
        materially_distorts_behaviour(S),
        causes_significant_harm(S)
    ;   evaluation_classification_over_time(S),
        leads_to_detrimental_treatment(S)
    ;   risk_assessment_criminal_offence(S)
    ;   creates_facial_recognition_database(S),
        untargeted_scraping(S)
    ;   infers_emotion(S),
        not_intended_medical_or_safety(S)
    ;   biometric_categorisation_system(S),
        deduces_protected_attributes(S)
    ;   real_time_remote_biometric_identification_system(S),
        publicly_accessible_space(S),
        law_enforcement_purpose(S)
    ).

provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_5').

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
