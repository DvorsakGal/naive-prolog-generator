% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0787540443d9eb77481ae1ea66fba1890fab26f871e7290c97def50d3c5709c9
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_ai_practice/1, gloss('AI practice prohibited under Article 5'), source('celex:32024R1689/oj#art_5').
:- pred deploys_subliminal_or_manipulative_techniques/1, gloss('system deploys subliminal, manipulative, or deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred impairs_informed_decision_causing_significant_harm/1, gloss('materially distorts behaviour impairing informed decision and causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred exploits_vulnerabilities_causing_significant_harm/1, gloss('exploits vulnerabilities of a person/group causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred social_scoring_leading_to_detriment/1, gloss('evaluates/classifies persons over time based on social behaviour leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred criminal_risk_assessment_based_solely_on_profiling/1, gloss('assesses risk of criminal offence based solely on profiling or personality traits'), source('celex:32024R1689/oj#art_5').
:- pred exempt_human_assessment_support/1, gloss('exempt AI system supporting human assessment of criminal involvement based on objective verifiable facts'), source('celex:32024R1689/oj#art_5').
:- pred creates_or_expands_facial_recognition_database_via_untargeted_scraping/1, gloss('creates or expands facial recognition databases via untargeted scraping of internet or CCTV'), source('celex:32024R1689/oj#art_5').
:- pred infers_emotions_in_workplace_or_education/1, gloss('infers emotions in workplace or education institutions'), source('celex:32024R1689/oj#art_5').
:- pred exempt_medical_or_safety_reasons/1, gloss('exempt use for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred categorises_deducing_sensitive_traits/1, gloss('categorises persons based on biometric data to deduce sensitive traits'), source('celex:32024R1689/oj#art_5').
:- pred exempt_law_enforcement_biometric_labelling/1, gloss('exempt labelling or filtering of lawfully acquired biometric data for law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred used_in_publicly_accessible_space/1, gloss('AI system used in a publicly accessible space'), source('celex:32024R1689/oj#art_5').
:- pred used_for_law_enforcement/1, gloss('AI system used for the purposes of law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred permitted_real_time_remote_biometric_identification/1, gloss('use of real-time remote biometric identification strictly necessary for permitted objectives'), source('celex:32024R1689/oj#art_5').
:- pred objective_search_for_victims_or_missing_persons/1, gloss('targeted search for specific victims of abduction/trafficking or missing persons'), source('celex:32024R1689/oj#art_5').
:- pred objective_prevent_imminent_threat_or_terrorist_attack/1, gloss('prevention of specific substantial imminent threat to life/safety or terrorist attack'), source('celex:32024R1689/oj#art_5').
:- pred objective_locate_or_identify_suspect_of_serious_crime/1, gloss('localisation/identification of suspect of Annex II offence punishable by at least four years'), source('celex:32024R1689/oj#art_5').
:- pred confirms_identity_of_specifically_targeted_individual/1, gloss('deployed only to confirm identity of specifically targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred authorised_by_competent_authority/1, gloss('prior authorisation granted by judicial or independent administrative authority'), source('celex:32024R1689/oj#art_5').
:- pred completed_fundamental_rights_impact_assessment/1, gloss('fundamental rights impact assessment completed under Article 27'), source('celex:32024R1689/oj#art_5').
:- pred registered_in_eu_database/1, gloss('system registered in EU database under Article 49'), source('celex:32024R1689/oj#art_5').
:- pred urgency_applies/1, gloss('duly justified situation of urgency'), source('celex:32024R1689/oj#art_5').
:- pred must_notify/2, gloss('actor must notify body of system use'), source('celex:32024R1689/oj#art_5').
:- pred must_submit_annual_report/2, gloss('actor must submit annual report on use to recipient'), source('celex:32024R1689/oj#art_5').
:- pred must_publish_annual_report/2, gloss('actor must publish annual report on use'), source('celex:32024R1689/oj#art_5').

% Paragraph 1(a): Subliminal, manipulative or deceptive techniques causing significant harm
prohibited_ai_practice(S) :-
    ai_system(S),
    deploys_subliminal_or_manipulative_techniques(S),
    impairs_informed_decision_causing_significant_harm(S).

% Paragraph 1(b): Exploiting vulnerabilities causing significant harm
prohibited_ai_practice(S) :-
    ai_system(S),
    exploits_vulnerabilities_causing_significant_harm(S).

% Paragraph 1(c): Social scoring
prohibited_ai_practice(S) :-
    ai_system(S),
    social_scoring_leading_to_detriment(S).

% Paragraph 1(d): Risk assessments of natural persons committing criminal offences
prohibited_ai_practice(S) :-
    ai_system(S),
    criminal_risk_assessment_based_solely_on_profiling(S),
    \+ exempt_human_assessment_support(S).

% Paragraph 1(e): Untargeted facial image scraping
prohibited_ai_practice(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database_via_untargeted_scraping(S).

% Paragraph 1(f): Emotion recognition in workplace and education
prohibited_ai_practice(S) :-
    emotion_recognition_system(S),
    infers_emotions_in_workplace_or_education(S),
    \+ exempt_medical_or_safety_reasons(S).

% Paragraph 1(g): Biometric categorisation inferring sensitive attributes
prohibited_ai_practice(S) :-
    biometric_categorisation_system(S),
    categorises_deducing_sensitive_traits(S),
    \+ exempt_law_enforcement_biometric_labelling(S).

% Paragraph 1(h): Real-time remote biometric identification in publicly accessible spaces for law enforcement
prohibited_ai_practice(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    used_for_law_enforcement(S),
    \+ permitted_real_time_remote_biometric_identification(S).

% Permitted exceptions under 1(h) with conditions from paragraphs 2 and 3
permitted_real_time_remote_biometric_identification(S) :-
    confirms_identity_of_specifically_targeted_individual(S),
    completed_fundamental_rights_impact_assessment(S),
    (   registered_in_eu_database(S)
    ;   urgency_applies(S)
    ),
    (   authorised_by_competent_authority(S)
    ;   urgency_applies(S)
    ),
    (   objective_search_for_victims_or_missing_persons(S)
    ;   objective_prevent_imminent_threat_or_terrorist_attack(S)
    ;   objective_locate_or_identify_suspect_of_serious_crime(S)
    ).

% Paragraph 4: Notification requirement
must_notify(Deployer, notification(use_of_real_time_remote_biometric_identification, System)) :-
    deployer(Deployer),
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    used_for_law_enforcement(System).

% Paragraph 6: Annual reporting by market surveillance and data protection authorities
must_submit_annual_report(Authority, commission) :-
    market_surveillance_authority(Authority).

% Paragraph 7: Commission annual publication
must_publish_annual_report(ai_office, real_time_remote_biometric_identification).

% Provenance
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').

% References
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
