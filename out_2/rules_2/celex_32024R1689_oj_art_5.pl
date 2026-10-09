% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : eae874d9f9ca9247a20ccb7e41276ecce4805ef678c407f750c732967498ec45
% cached     : False
% title      : Prohibited AI practices
:- pred employs_subliminal_techniques/1, gloss('AI system uses subliminal techniques beyond consciousness'), source('art_5_a').
:- pred manipulative_or_deceptive/1, gloss('AI system employs purposefully manipulative or deceptive techniques'), source('art_5_a').
:- pred materially_distorts_behavior/1, gloss('AI system materially distorts the behaviour of a person or group'), source('art_5_a').
:- pred likely_causes_significant_harm/1, gloss('AI system is reasonably likely to cause significant harm'), source('art_5_a').

:- pred exploits_vulnerability/1, gloss('AI system exploits vulnerabilities of a natural person or specific group'), source('art_5_b').
:- pred socially_scoring_ai_system/1, gloss('AI system evaluates or classifies persons over time based on social behaviour or inferred characteristics'), source('art_5_c').
:- pred leads_to_unfavourable_treatment/1, gloss('AI system leads to detrimental or unfavourable treatment'), source('art_5_c').

:- pred makes_risk_assessment_of_person/1, gloss('AI system makes risk assessments of natural persons for criminal offence prediction'), source('art_5_d').
:- pred based_on_profiling/1, gloss('AI system bases assessment solely on profiling or personality traits'), source('art_5_d').
:- pred supports_human_assessment/1, gloss('AI system is used to support human assessment of criminal involvement'), source('art_5_d').

:- pred creates_or_expands_facial_recognition_database/1, gloss('AI system creates or expands facial‑recognition databases via untargeted scraping'), source('art_5_e').
:- pred untargeted_scraping/1, gloss('AI system obtains facial images untargeted from internet or CCTV'), source('art_5_e').

:- pred infers_emotions/1, gloss('AI system infers emotions of a natural person'), source('art_5_f').
:- pred context_workplace_education/1, gloss('Inference takes place in workplace or education institutions'), source('art_5_f').
:- pred intended_for_medical_or_safety/1, gloss('Use is intended for medical or safety reasons'), source('art_5_f').

:- pred biometric_categorisation_system/1, gloss('AI system categorises persons based on biometric data'), source('art_5_g').
:- pred infers_race_political/1, gloss('System deduces race, political opinions, trade‑union membership, religious beliefs, sex life or sexual orientation'), source('art_5_g').
:- pred law_enforcement_dataset_labeling/1, gloss('Labelling or filtering of lawfully acquired biometric datasets for law‑enforcement'), source('art_5_g').

:- pred real_time_remote_biometric_identification_system/1, gloss('remote biometric ID system with no significant delay'), source('42').
:- pred law_enforcement_purpose/1, gloss('Use for law‑enforcement purposes'), source('art_5_h').
:- pred objective_targeted_search/1, gloss('Targeted search for victims of abduction, trafficking or sexual exploitation'), source('art_5_h_i').
:- pred objective_prevention_imminent_threat/1, gloss('Prevention of a substantial and imminent threat to life or safety, or a terrorist attack'), source('art_5_h_ii').
:- pred objective_localisation_of_suspect/1, gloss('Localisation or identification of a suspect for criminal investigation or prosecution'), source('art_5_h_iii').

:- pred permitted_objective/2, gloss('Use of real‑time remote biometric ID system is permitted for the listed objective'), source('art_5_h').

:- pred must_submit/2, gloss('Authority must submit object'), source('art_5_6').
:- pred must_publish/2, gloss('Commission must publish object'), source('art_5_7').
:- pred must_provide/2, gloss('Commission must provide object'), source('art_5_6').

% -----------------------------------------------------------------
% Prohibitions
prohibited_subliminal_manipulative_ai_system(S) :-
    ai_system(S),
    employs_subliminal_techniques(S),
    manipulative_or_deceptive(S),
    materially_distorts_behavior(S),
    likely_causes_significant_harm(S).

prohibited_exploit_vulnerable_person_ai_system(S) :-
    ai_system(S),
    exploits_vulnerability(S),
    likely_causes_significant_harm(S).

prohibited_social_scoring_ai_system(S) :-
    ai_system(S),
    socially_scoring_ai_system(S),
    leads_to_unfavourable_treatment(S).

prohibited_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    makes_risk_assessment_of_person(S),
    based_on_profiling(S),
    likely_causes_significant_harm(S),
    \+ supports_human_assessment(S).

prohibited_untargeted_facial_recognition_database_ai_system(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping(S).

prohibited_emotion_inference_ai_system(S) :-
    ai_system(S),
    infers_emotions(S),
    context_workplace_education(S),
    \+ intended_for_medical_or_safety(S).

prohibited_biometric_categorisation_race_political_ai_system(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    infers_race_political(S).

prohibited_use_of_rt_rbi_in_public_space_for_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    publicly_accessible_space(_),
    \+ permitted_objective(S, _).

% -----------------------------------------------------------------
% Permissions (exceptions)
permitted_human_assisted_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    supports_human_assessment(S).

permitted_medical_or_safety_emotion_inference_ai_system(S) :-
    ai_system(S),
    infers_emotions(S),
    intended_for_medical_or_safety(S).

permitted_law_enforcement_biometric_dataset_labeling(S) :-
    ai_system(S),
    law_enforcement_dataset_labeling(S).

permitted_objective(S, targeted_search) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    objective_targeted_search(_).

permitted_objective(S, prevention_imminent_threat) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    objective_prevention_imminent_threat(_).

permitted_objective(S, localisation_of_suspect) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    objective_localisation_of_suspect(_).

% -----------------------------------------------------------------
% Obligations
must_submit(Authority, annual_report(S)) :-
    national_market_surveillance_authority(Authority);
    national_data_protection_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    notified_use(Authority, S).

must_provide(Commission, report_template) :-
    commission(Commission).

must_publish(Commission, aggregated_annual_report) :-
    commission(Commission).

% -----------------------------------------------------------------
% Provenance
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploit_vulnerable_person_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_recognition_database_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_race_political_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_use_of_rt_rbi_in_public_space_for_law_enforcement/1, 'celex:32024R1689/oj#art_5').

provenance(permitted_human_assisted_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_medical_or_safety_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_biometric_dataset_labeling/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_objective/2, 'celex:32024R1689/oj#art_5').

provenance(must_submit/2, 'celex:32024R1689/oj#art_5').
provenance(must_provide/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish/2, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% References
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
