% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 15b6934e34cc391554f81f09ff93aa4851bc5e59f4e58a493f21d4414861637b
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_subliminal_technique/1, gloss('AI system deploying subliminal, manipulative or deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_exploitation_of_vulnerability/1, gloss('AI system exploiting vulnerabilities due to age, disability or situation'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring/1, gloss('AI system for social scoring leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_risk_assessment_of_natural_person/1, gloss('AI system for predicting criminal offence risk based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_facial_recognition_database_creation/1, gloss('AI system creating or expanding facial recognition databases by untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference/1, gloss('AI system inferring emotions in workplace or education'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation/1, gloss('biometric categorisation system deducing protected characteristics'), source('celex:32024R1689/oj#art_5').
:- pred permitted_emotion_inference/1, gloss('emotion inference permitted for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred permitted_biometric_categorisation/1, gloss('biometric categorisation permitted for labelling or law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred permitted_real_time_remote_biometric_identification/2, gloss('permitted use of real-time remote biometric ID for law enforcement objective'), source('celex:32024R1689/oj#art_5').
:- pred must_confirm_identity/2, gloss('use must confirm identity of specifically targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred must_take_into_account_elements/2, gloss('use must take into account nature of situation and consequences'), source('celex:32024R1689/oj#art_5').
:- pred must_comply_with_safeguards/2, gloss('use must comply with necessary and proportionate safeguards'), source('celex:32024R1689/oj#art_5').
:- pred must_be_authorised/2, gloss('use must be authorised by judicial or independent administrative authority'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_use/2, gloss('use must be notified to market surveillance and data protection authorities'), source('celex:32024R1689/oj#art_5').
:- pred must_submit_annual_report/2, gloss('authority must submit annual report on use'), source('celex:32024R1689/oj#art_5').
:- pred must_publish_annual_report/1, gloss('Commission must publish annual report on use'), source('celex:32024R1689/oj#art_5').
:- pred urgency_applies/1, gloss('duly justified case of urgency'), source('celex:32024R1689/oj#art_5').
:- pred fundamental_rights_impact_assessment_completed/1, gloss('law enforcement authority completed fundamental rights impact assessment'), source('celex:32024R1689/oj#art_5').
:- pred registered_in_eu_database/1, gloss('system registered in EU database'), source('celex:32024R1689/oj#art_5').
:- pred authorisation_granted/1, gloss('prior authorisation granted by competent authority'), source('celex:32024R1689/oj#art_5').
:- pred authorisation_requested_without_undue_delay/1, gloss('authorisation requested without undue delay in urgency'), source('celex:32024R1689/oj#art_5').
:- pred registration_completed_without_undue_delay/1, gloss('registration completed without undue delay in urgency'), source('celex:32024R1689/oj#art_5').
:- pred adverse_legal_effect_decision/1, gloss('decision producing adverse legal effect based solely on system output'), source('celex:32024R1689/oj#art_5').

% Paragraph 1(a): subliminal, manipulative or deceptive techniques
prohibited_subliminal_technique(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    deploys_subliminal_manipulative_or_deceptive_techniques(S),
    materially_distorts_behaviour(S),
    causes_or_likely_causes_significant_harm(S).

deploys_subliminal_manipulative_or_deceptive_techniques(S) :-
    ai_system(S),
    (   subliminal_techniques(S)
    ;   purposefully_manipulative_techniques(S)
    ;   deceptive_techniques(S)
    ).

materially_distorts_behaviour(S) :-
    ai_system(S),
    impairs_informed_decision(S),
    causes_decision_not_otherwise_taken(S).

causes_or_likely_causes_significant_harm(S) :-
    ai_system(S),
    (   causes_significant_harm(S)
    ;   reasonably_likely_to_cause_significant_harm(S)
    ).

% Paragraph 1(b): exploitation of vulnerabilities
prohibited_exploitation_of_vulnerability(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    exploits_vulnerability(S),
    materially_distorts_behaviour(S),
    causes_or_likely_causes_significant_harm(S).

exploits_vulnerability(S) :-
    ai_system(S),
    vulnerability_due_to_age_disability_or_situation(S).

% Paragraph 1(c): social scoring
prohibited_social_scoring(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    social_scoring_system(S),
    social_score_leads_to_detrimental_treatment(S).

social_scoring_system(S) :-
    ai_system(S),
    evaluates_or_classifies_over_period(S),
    based_on_social_behaviour_or_personality_characteristics(S).

social_score_leads_to_detrimental_treatment(S) :-
    ai_system(S),
    (   detrimental_treatment_unrelated_context(S)
    ;   detrimental_treatment_unjustified_or_disproportionate(S)
    ).

% Paragraph 1(d): risk assessment of natural persons
prohibited_risk_assessment_of_natural_person(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    risk_assessment_of_criminal_offence(S),
    based_solely_on_profiling_or_personality_traits(S),
    \+ permitted_risk_assessment_support(S).

permitted_risk_assessment_support(S) :-
    ai_system(S),
    supports_human_assessment_of_criminal_activity(S),
    based_on_objective_verifiable_facts(S).

risk_assessment_of_criminal_offence(S) :-
    ai_system(S),
    assesses_or_predicts_risk_of_criminal_offence(S).

% Paragraph 1(e): facial recognition database creation
prohibited_facial_recognition_database_creation(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping_of_facial_images(S).

% Paragraph 1(f): emotion inference
prohibited_emotion_inference(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    emotion_recognition_system(S),
    infers_emotions_in_workplace_or_education(S),
    \+ permitted_emotion_inference(S).

permitted_emotion_inference(S) :-
    ai_system(S),
    emotion_recognition_system(S),
    intended_for_medical_or_safety_reasons(S).

% Paragraph 1(g): biometric categorisation
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    deduces_or_infers_protected_characteristics(S),
    \+ permitted_biometric_categorisation(S).

permitted_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    (   labelling_or_filtering_lawfully_acquired_datasets(S)
    ;   categorising_in_law_enforcement(S)
    ).

% Paragraph 1(h): real-time remote biometric identification
prohibited_real_time_remote_biometric_identification(Use) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S),
    \+ permitted_real_time_remote_biometric_identification(Use, _Objective).

permitted_real_time_remote_biometric_identification(Use, Objective) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S),
    strictly_necessary_for_objective(Use, Objective),
    permitted_objective(Objective).

permitted_objective(targeted_search_for_victims).
permitted_objective(prevention_of_imminent_threat).
permitted_objective(localisation_of_suspect_for_offence_referred_in_annex_2).

% Paragraph 2: conditions on permitted use
must_confirm_identity(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    use_confirms_identity_of_targeted_individual(Use, S).

must_take_into_account_elements(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    takes_into_account_nature_of_situation(Use),
    takes_into_account_consequences(Use).

must_comply_with_safeguards(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    complies_with_necessary_and_proportionate_safeguards(Use),
    complies_with_national_law_authorising_use(Use).

must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    fundamental_rights_impact_assessment_completed(Use),
    registered_in_eu_database(S),
    authorisation_granted(Use).

% Urgency exception for registration
must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    urgency_applies(Use),
    fundamental_rights_impact_assessment_completed(Use),
    \+ registered_in_eu_database(S),
    registration_completed_without_undue_delay(S),
    authorisation_granted(Use).

% Paragraph 3: prior authorisation
must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    prior_authorisation_by_judicial_or_independent_authority(Use).

% Urgency exception for authorisation
must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    urgency_applies(Use),
    \+ prior_authorisation_by_judicial_or_independent_authority(Use),
    authorisation_requested_without_undue_delay(Use),
    authorisation_granted(Use).

% No adverse legal effect decision based solely on system output
adverse_legal_effect_decision(Decision) :-
    real_time_remote_biometric_identification_system(S),
    decision_based_solely_on_output(Decision, S),
    produces_adverse_legal_effect(Decision).

% Paragraph 4: notification
must_notify_use(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    notified_to_market_surveillance_authority(Use),
    notified_to_national_data_protection_authority(Use).

% Paragraph 6: annual reports
must_submit_annual_report(Authority, Use) :-
    market_surveillance_authority(Authority),
    notified_of_use(Authority, Use),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S).

must_submit_annual_report(Authority, Use) :-
    national_data_protection_authority(Authority),
    notified_of_use(Authority, Use),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S).

% Paragraph 7: Commission annual reports
must_publish_annual_report(Commission) :-
    ai_office(Commission),
    based_on_aggregated_data_from_member_states(Commission).

% Provenance
provenance(prohibited_subliminal_technique/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerability/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_of_natural_person/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_creation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification/2, 'celex:32024R1689/oj#art_5').
provenance(must_confirm_identity/2, 'celex:32024R1689/oj#art_5').
provenance(must_take_into_account_elements/2, 'celex:32024R1689/oj#art_5').
provenance(must_comply_with_safeguards/2, 'celex:32024R1689/oj#art_5').
provenance(must_be_authorised/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/1, 'celex:32024R1689/oj#art_5').
provenance(adverse_legal_effect_decision/1, 'celex:32024R1689/oj#art_5').

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
