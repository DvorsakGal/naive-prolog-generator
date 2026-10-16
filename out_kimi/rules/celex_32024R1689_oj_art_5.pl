% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 62402a56b1ffae6ba70b03ac86ff531d3d02041af9403e78abd96b24bf449fe8
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_subliminal_manipulative_system/1, gloss('AI system using subliminal or manipulative techniques to distort behaviour causing harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_vulnerability_exploiting_system/1, gloss('AI system exploiting vulnerabilities of specific groups causing harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring_system/1, gloss('AI system for social scoring leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_criminal_risk_assessment/1, gloss('AI system assessing criminal risk based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred permitted_criminal_risk_support/1, gloss('AI system supporting human assessment of criminal activity based on objective facts'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_untargeted_scraping_database/1, gloss('AI system creating facial recognition databases by untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference/1, gloss('AI system inferring emotions in workplace or education'), source('celex:32024R1689/oj#art_5').
:- pred permitted_emotion_inference/1, gloss('AI system inferring emotions for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation/1, gloss('biometric categorisation system inferring sensitive attributes'), source('celex:32024R1689/oj#art_5').
:- pred permitted_biometric_dataset_labelling/1, gloss('labelling or filtering of lawfully acquired biometric datasets'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_law_enforcement_rtrbi/1, gloss('use of real-time remote biometric identification in publicly accessible spaces for law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred permitted_law_enforcement_rtrbi_objective/2, gloss('permitted objective for law enforcement rtrbi use'), source('celex:32024R1689/oj#art_5').
:- pred required_rtrbi_identity_confirmation/1, gloss('rtrbi use limited to confirming identity of specifically targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred required_rtrbi_safeguards/1, gloss('rtrbi use must comply with necessary and proportionate safeguards'), source('celex:32024R1689/oj#art_5').
:- pred required_fundamental_rights_impact_assessment/2, gloss('law enforcement authority must complete fundamental rights impact assessment'), source('celex:32024R1689/oj#art_5').
:- pred required_rtrbi_registration/2, gloss('law enforcement authority must register rtrbi system in EU database'), source('celex:32024R1689/oj#art_5').
:- pred urgency_applies/1, gloss('duly justified case of urgency applies'), source('celex:32024R1689/oj#art_5').
:- pred required_prior_authorisation/2, gloss('prior authorisation required for rtrbi use'), source('celex:32024R1689/oj#art_5').
:- pred must_request_authorisation/2, gloss('law enforcement authority must request authorisation'), source('celex:32024R1689/oj#art_5').
:- pred must_stop_use/2, gloss('law enforcement authority must stop use'), source('celex:32024R1689/oj#art_5').
:- pred must_discard_data/2, gloss('law enforcement authority must discard data and results'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_authorities/3, gloss('law enforcement authority must notify market surveillance and data protection authorities'), source('celex:32024R1689/oj#art_5').
:- pred must_submit_annual_report/2, gloss('authority must submit annual report to Commission'), source('celex:32024R1689/oj#art_5').
:- pred must_provide_template/2, gloss('Commission must provide template for annual reports'), source('celex:32024R1689/oj#art_5').
:- pred must_publish_annual_report/2, gloss('Commission must publish annual report on rtrbi use'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_rules/2, gloss('Member State must notify rules to Commission'), source('celex:32024R1689/oj#art_5').

% Article 5(1)(a) - Prohibited subliminal/manipulative systems
prohibited_subliminal_manipulative_system(S) :-
    ai_system(S),
    (subliminal_techniques(S) ; manipulative_techniques(S) ; deceptive_techniques(S)),
    (objective_distort_behaviour(S) ; effect_distort_behaviour(S)),
    materially_distort_behaviour(S),
    appreciably_impair_informed_decision(S),
    causes_significant_harm(S).

% Article 5(1)(b) - Prohibited vulnerability exploiting systems
prohibited_vulnerability_exploiting_system(S) :-
    ai_system(S),
    exploits_vulnerabilities(S),
    vulnerability_age(S) ; vulnerability_disability(S) ; vulnerability_social_economic_situation(S),
    (objective_distort_behaviour(S) ; effect_distort_behaviour(S)),
    materially_distort_behaviour(S),
    causes_significant_harm(S).

% Article 5(1)(c) - Prohibited social scoring
prohibited_social_scoring_system(S) :-
    ai_system(S),
    social_scoring_evaluation(S),
    social_scoring_classification(S),
    based_on_social_behaviour(S) ; based_on_personal_characteristics(S),
    social_score(S),
    (detrimental_unrelated_treatment(S) ; detrimental_unjustified_disproportionate_treatment(S)).

% Article 5(1)(d) - Prohibited criminal risk assessment
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    criminal_risk_assessment(S),
    based_solely_on_profiling(S) ; based_on_personality_traits(S),
    \+ permitted_criminal_risk_support(S).

permitted_criminal_risk_support(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_verifiable_facts(S),
    directly_linked_to_criminal_activity(S).

% Article 5(1)(e) - Prohibited untargeted scraping databases
prohibited_untargeted_scraping_database(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping(S),
    (scraping_from_internet(S) ; scraping_from_cctv(S)).

% Article 5(1)(f) - Prohibited emotion inference
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    infer_emotions(S),
    (workplace_area(S) ; education_institution_area(S)),
    \+ permitted_emotion_inference(S).

permitted_emotion_inference(S) :-
    emotion_recognition_system(S),
    medical_reasons(S) ; safety_reasons(S).

% Article 5(1)(g) - Prohibited biometric categorisation
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    categorise_individually(S),
    based_on_biometric_data(S),
    (deduce_race(S) ; infer_race(S) ; deduce_political_opinions(S) ; infer_political_opinions(S) ; 
     deduce_trade_union_membership(S) ; infer_trade_union_membership(S) ; deduce_religious_beliefs(S) ; 
     infer_religious_beliefs(S) ; deduce_philosophical_beliefs(S) ; infer_philosophical_beliefs(S) ; 
     deduce_sex_life(S) ; infer_sex_life(S) ; deduce_sexual_orientation(S) ; infer_sexual_orientation(S)),
    \+ permitted_biometric_dataset_labelling(S).

permitted_biometric_dataset_labelling(S) :-
    labelling_biometric_dataset(S) ; filtering_biometric_dataset(S),
    lawfully_acquired(S),
    law_enforcement_area(S).

% Article 5(1)(h) - Prohibited law enforcement rtrbi (general prohibition with exceptions)
prohibited_law_enforcement_rtrbi(S) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    \+ permitted_law_enforcement_rtrbi_use(S).

permitted_law_enforcement_rtrbi_use(S) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    strictly_necessary(S),
    permitted_law_enforcement_rtrbi_objective(S, _O).

permitted_law_enforcement_rtrbi_objective(S, victim_search) :-
    real_time_remote_biometric_identification_system(S),
    targeted_search(S),
    (victim_abduction(S) ; victim_trafficking(S) ; victim_sexual_exploitation(S) ; missing_person(S)).

permitted_law_enforcement_rtrbi_objective(S, threat_prevention) :-
    real_time_remote_biometric_identification_system(S),
    specific_substantial_imminent_threat_life_safety(S) ; 
    genuine_present_or_foreseeable_terrorist_threat(S).

permitted_law_enforcement_rtrbi_objective(S, criminal_investigation) :-
    real_time_remote_biometric_identification_system(S),
    localisation_or_identification(S),
    suspected_criminal_offence(S),
    purpose_criminal_investigation(S) ; purpose_prosecution(S) ; purpose_executing_criminal_penalty(S),
    offence_annex_2(S),
    punishable_custodial_sentence_or_detention(S),
    maximum_period_at_least_four_years(S).

% Article 5(2) - Conditions for permitted law enforcement rtrbi use
required_rtrbi_identity_confirmation(S) :-
    permitted_law_enforcement_rtrbi_use(S),
    confirm_identity(S),
    specifically_targeted_individual(S).

required_rtrbi_safeguards(S) :-
    permitted_law_enforcement_rtrbi_use(S),
    necessary_and_proportionate_safeguards(S),
    temporal_limitations(S),
    geographic_limitations(S),
    personal_limitations(S),
    national_law_authorisation(S).

required_fundamental_rights_impact_assessment(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    \+ urgency_applies(S).

required_rtrbi_registration(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    \+ urgency_applies(S).

% Urgency exception for registration
permitted_law_enforcement_rtrbi_use(S) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    strictly_necessary(S),
    permitted_law_enforcement_rtrbi_objective(S, _O),
    urgency_applies(S),
    registration_completed_without_undue_delay(S).

% Article 5(3) - Prior authorisation
required_prior_authorisation(S, Authority) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    permitted_law_enforcement_rtrbi_use(S),
    \+ urgency_applies(S),
    judicial_authority(Authority) ; independent_administrative_authority_binding(Authority).

must_request_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    urgency_applies(S),
    requested_without_undue_delay(S),
    requested_within_hours(S, 24).

must_stop_use(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    authorisation_rejected(S).

must_discard_data(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    authorisation_rejected(S),
    discard_all_data(S),
    discard_results(S),
    discard_outputs(S),
    immediate_effect(S).

% Article 5(4) - Notification
must_notify_authorities(Authority, MarketSurveillanceAuthority, DataProtectionAuthority) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    permitted_law_enforcement_rtrbi_use(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    national_data_protection_authority(DataProtectionAuthority),
    national_rules_apply(S),
    \+ sensitive_operational_data_included(S).

% Article 5(5) - Member State rules
must_notify_rules(MemberState, Commission) :-
    member_state(MemberState),
    commission(Commission),
    adopted_rules_real_time_remote_biometric_identification(MemberState),
    notified_within_days(MemberState, Commission, 30).

% Article 5(6) - Annual reports by national authorities
must_submit_annual_report(Authority, Commission) :-
    (market_surveillance_authority(Authority) ; national_data_protection_authority(Authority)),
    notified_of_rtrbi_use(Authority),
    commission(Commission).

must_provide_template(Commission, Authorities) :-
    commission(Commission),
    (member_state(Authorities) ; market_surveillance_authority(Authorities) ; national_data_protection_authority(Authorities)).

% Article 5(7) - Commission annual reports
must_publish_annual_report(Commission, Report) :-
    commission(Commission),
    annual_report(Report),
    based_on_aggregated_data(Report),
    based_on_national_reports(Report),
    \+ sensitive_operational_data_included(Report).

% Provenance
provenance(prohibited_subliminal_manipulative_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploiting_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_criminal_risk_support/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_scraping_database/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_dataset_labelling/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_law_enforcement_rtrbi/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rtrbi_use/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rtrbi_objective/2, 'celex:32024R1689/oj#art_5').
provenance(required_rtrbi_identity_confirmation/1, 'celex:32024R1689/oj#art_5').
provenance(required_rtrbi_safeguards/1, 'celex:32024R1689/oj#art_5').
provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_5').
provenance(required_rtrbi_registration/2, 'celex:32024R1689/oj#art_5').
provenance(urgency_applies/1, 'celex:32024R1689/oj#art_5').
provenance(required_prior_authorisation/2, 'celex:32024R1689/oj#art_5').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_5').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_discard_data/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_authorities/3, 'celex:32024R1689/oj#art_5').
provenance(must_notify_rules/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_provide_template/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').

% References
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
