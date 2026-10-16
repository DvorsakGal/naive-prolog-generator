% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 85ad88b75b1150acfc791ea47e6577fff6258fb15d547d88154e9285448016d8
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_subliminal_manipulative_deceptive_system/1, gloss('AI system using subliminal or manipulative/deceptive techniques to distort behaviour causing harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_vulnerability_exploitation_system/1, gloss('AI system exploiting vulnerabilities of natural persons or specific groups causing harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring_system/1, gloss('AI system for social scoring leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_criminal_risk_assessment_system/1, gloss('AI system assessing criminal offence risk based solely on profiling or personality traits'), source('celex:32024R1689/oj#art_5').
:- pred permitted_criminal_risk_assessment_support/1, gloss('AI system supporting human assessment of criminal activity based on objective verifiable facts'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_untargeted_scraping_facial_recognition/1, gloss('AI system creating facial recognition databases through untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference_system/1, gloss('AI system inferring emotions in workplace or education institutions'), source('celex:32024R1689/oj#art_5').
:- pred permitted_emotion_inference_medical_safety/1, gloss('AI system inferring emotions intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation_sensitive_characteristics/1, gloss('biometric categorisation system deducing sensitive characteristics from biometric data'), source('celex:32024R1689/oj#art_5').
:- pred permitted_biometric_categorisation_lawful_dataset_labelling/1, gloss('labelling or filtering lawfully acquired biometric datasets based on biometric data'), source('celex:32024R1689/oj#art_5').
:- pred permitted_biometric_categorisation_law_enforcement/1, gloss('categorizing biometric data in the area of law enforcement'), source('celex:32024R1689/oj#art_5').
:- prohibited_real_time_remote_biometric_identification_law_enforcement/1.
:- pred permitted_real_time_remote_biometric_objective/2, gloss('permitted objective for real-time remote biometric identification in law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred permitted_deployment_confirm_identity/1, gloss('real-time remote biometric identification deployed only to confirm identity of specifically targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred required_use_elements_consideration/1, gloss('required elements for consideration when using real-time remote biometric identification'), source('celex:32024R1689/oj#art_5').
:- pred required_safeguards_conditions/1, gloss('necessary and proportionate safeguards and conditions for real-time remote biometric identification'), source('celex:32024R1689/oj#art_5').
:- pred required_fundamental_rights_impact_assessment/1, gloss('fundamental rights impact assessment required before use of real-time remote biometric identification'), source('celex:32024R1689/oj#art_5').
:- pred required_registration_eu_database/1, gloss('registration in EU database required before use of real-time remote biometric identification'), source('celex:32024R1689/oj#art_5').
:- pred urgency_exception_registration/1, gloss('urgency allows commencement without registration provided completed without undue delay'), source('celex:32024R1689/oj#art_5').
:- pred required_prior_authorisation/1, gloss('prior authorisation required for real-time remote biometric identification use'), source('celex:32024R1689/oj#art_5').
:- pred urgency_exception_authorisation/1, gloss('urgency allows commencement without authorisation provided requested within 24 hours'), source('celex:32024R1689/oj#art_5').
:- pred required_stop_and_delete_on_rejection/1, gloss('stop use and delete data if authorisation rejected'), source('celex:32024R1689/oj#art_5').
:- pred required_authorisation_necessary_proportionate/1, gloss('authorisation granted only if necessary and proportionate'), source('celex:32024R1689/oj#art_5').
:- pred required_authorisation_limited_scope/1, gloss('authorisation limited to strictly necessary time, geographic and personal scope'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_adverse_decision_solely_on_output/1, gloss('no adverse legal effect based solely on output of real-time remote biometric identification'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_authorities/2, gloss('notify market surveillance and data protection authorities of real-time remote biometric identification use'), source('celex:32024R1689/oj#art_5').
:- pred member_state_may_authorise_real_time_remote_biometric/1, gloss('Member State may authorise real-time remote biometric identification under specified conditions'), source('celex:32024R1689/oj#art_5').
:- pred must_lay_down_national_rules/2, gloss('Member State shall lay down detailed national rules for authorisations'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_commission_rules/2, gloss('Member State shall notify Commission of national rules within 30 days'), source('celex:32024R1689/oj#art_5').
:- pred member_state_may_introduce_more_restrictive_laws/1, gloss('Member State may introduce more restrictive laws on remote biometric identification'), source('celex:32024R1689/oj#art_5').
:- pred must_submit_annual_report/2, gloss('national authorities shall submit annual reports to Commission on real-time remote biometric identification use'), source('celex:32024R1689/oj#art_5').
:- pred must_provide_template/2, gloss('Commission shall provide template for annual reports'), source('celex:32024R1689/oj#art_5').
:- pred must_publish_annual_report/2, gloss('Commission shall publish annual reports on real-time remote biometric identification use'), source('celex:32024R1689/oj#art_5').

% Prohibitions in paragraph 1(a) - subliminal, manipulative or deceptive techniques
prohibited_subliminal_manipulative_deceptive_system(S) :-
    ai_system(S),
    deploys_subliminal_techniques(S),
    beyond_consciousness(S),
    objective_or_effect_distort_behaviour(S),
    appreciably_impair_informed_decision(S),
    causes_significant_harm(S).

prohibited_subliminal_manipulative_deceptive_system(S) :-
    ai_system(S),
    purposefully_manipulative_or_deceptive_techniques(S),
    objective_or_effect_distort_behaviour(S),
    appreciably_impair_informed_decision(S),
    causes_significant_harm(S).

% Prohibition in paragraph 1(b) - exploitation of vulnerabilities
prohibited_vulnerability_exploitation_system(S) :-
    ai_system(S),
    exploits_vulnerabilities(S),
    vulnerability_due_to_age_disability_or_social_economic_situation(S),
    objective_or_effect_distort_behaviour(S),
    causes_significant_harm(S).

% Prohibition in paragraph 1(c) - social scoring
prohibited_social_scoring_system(S) :-
    ai_system(S),
    evaluates_or_classifies_natural_persons_or_groups(S),
    based_on_social_behaviour_or_characteristics(S),
    social_score_leads_to_detrimental_treatment_unrelated_context(S).

prohibited_social_scoring_system(S) :-
    ai_system(S),
    evaluates_or_classifies_natural_persons_or_groups(S),
    based_on_social_behaviour_or_characteristics(S),
    social_score_leads_to_unjustified_or_disproportionate_treatment(S).

% Prohibition in paragraph 1(d) - criminal risk assessment based on profiling
prohibited_criminal_risk_assessment_system(S) :-
    ai_system(S),
    risk_assessment_criminal_offence(S),
    based_solely_on_profiling(S).

prohibited_criminal_risk_assessment_system(S) :-
    ai_system(S),
    risk_assessment_criminal_offence(S),
    based_on_assessing_personality_traits_and_characteristics(S).

% Exception to 1(d) - supporting human assessment
permitted_criminal_risk_assessment_support(S) :-
    ai_system(S),
    supports_human_assessment_criminal_activity(S),
    based_on_objective_verifiable_facts(S),
    directly_linked_to_criminal_activity(S).

% Prohibition in paragraph 1(e) - untargeted scraping for facial recognition
prohibited_untargeted_scraping_facial_recognition(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_databases(S),
    untargeted_scraping_facial_images(S),
    from_internet_or_cctv_footage(S).

% Prohibition in paragraph 1(f) - emotion inference in workplace/education
prohibited_emotion_inference_system(S) :-
    ai_system(S),
    infers_emotions(S),
    used_in_workplace_or_education_institutions(S).

% Exception to 1(f) - medical or safety reasons
permitted_emotion_inference_medical_safety(S) :-
    ai_system(S),
    infers_emotions(S),
    intended_for_medical_or_safety_reasons(S).

% Prohibition in paragraph 1(g) - biometric categorisation for sensitive characteristics
prohibited_biometric_categorisation_sensitive_characteristics(S) :-
    biometric_categorisation_system(S),
    categorises_individually_natural_persons(S),
    based_on_biometric_data(S),
    deduces_or_infers_sensitive_characteristics(S).

sensitive_characteristics_inferred(S) :-
    deduces_or_infers_race(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_political_opinions(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_trade_union_membership(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_religious_or_philosophical_beliefs(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_sex_life(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_sexual_orientation(S).

prohibited_biometric_categorisation_sensitive_characteristics(S) :-
    biometric_categorisation_system(S),
    categorises_individually_natural_persons(S),
    based_on_biometric_data(S),
    sensitive_characteristics_inferred(S).

% Exceptions to 1(g)
permitted_biometric_categorisation_lawful_dataset_labelling(S) :-
    biometric_categorisation_system(S),
    labelling_or_filtering_lawfully_acquired_biometric_datasets(S).

permitted_biometric_categorisation_law_enforcement(S) :-
    biometric_categorisation_system(S),
    categorizing_biometric_data(S),
    in_area_of_law_enforcement(S).

% Prohibition in paragraph 1(h) - real-time remote biometric identification for law enforcement
prohibited_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    \+ permitted_real_time_remote_biometric_objective(S, _).

% Permitted objectives for 1(h)
permitted_real_time_remote_biometric_objective(S, targeted_search_victims_abduction_trafficking_sexual_exploitation) :-
    real_time_remote_biometric_identification_system(S),
    targeted_search_specific_victims(S),
    victim_of_abduction_trafficking_sexual_exploitation(S).

permitted_real_time_remote_biometric_objective(S, targeted_search_victims_abduction_trafficking_sexual_exploitation) :-
    real_time_remote_biometric_identification_system(S),
    search_for_missing_persons(S).

permitted_real_time_remote_biometric_objective(S, prevention_threat_life_safety) :-
    real_time_remote_biometric_identification_system(S),
    prevention_specific_substantial_imminent_threat_life_physical_safety(S).

permitted_real_time_remote_biometric_objective(S, prevention_terrorist_attack) :-
    real_time_remote_biometric_identification_system(S),
    genuine_present_or_foreseeable_threat_terrorist_attack(S).

permitted_real_time_remote_biometric_objective(S, localisation_identification_suspected_offender) :-
    real_time_remote_biometric_identification_system(S),
    localisation_or_identification_suspected_criminal_offence(S),
    purpose_criminal_investigation_prosecution_or_executing_penalty(S),
    offence_referred_in_annex_2(S),
    punishable_by_custodial_sentence_or_detention_order(S),
    maximum_period_at_least_four_years(S).

% Paragraph 2 - deployment limited to confirm identity
permitted_deployment_confirm_identity(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    deployed_to_confirm_identity(S),
    specifically_targeted_individual(S).

% Paragraph 2 - elements to consider
required_use_elements_consideration(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    considers_nature_of_situation(S),
    considers_seriousity_probability_scale_of_harm(S),
    considers_consequences_for_rights_and_freedoms(S),
    considers_seriousity_probability_scale_of_consequences(S).

% Paragraph 2 - safeguards and conditions
required_safeguards_conditions(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    complies_with_necessary_proportionate_safeguards(S),
    temporal_limitations(S),
    geographic_limitations(S),
    personal_limitations(S),
    authorised_under_national_law(S).

% Paragraph 2 - fundamental rights impact assessment and registration
required_fundamental_rights_impact_assessment(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    fundamental_rights_impact_assessment_completed(S).

required_registration_eu_database(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    registered_in_eu_database(S).

% Paragraph 2 - urgency exception for registration
urgency_exception_registration(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    duly_justified_case_of_urgency(S),
    commenced_without_registration(S),
    registration_completed_without_undue_delay(S).

% Paragraph 3 - prior authorisation
required_prior_authorisation(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    prior_authorisation_granted(S),
    by_judicial_or_independent_administrative_authority(S),
    binding_decision(S),
    in_member_state_of_use(S),
    upon_reasoned_request(S),
    in_accordance_with_national_law(S).

% Paragraph 3 - urgency exception for authorisation
urgency_exception_authorisation(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    duly_justified_situation_of_urgency(S),
    commenced_without_authorisation(S),
    authorisation_requested_without_undue_delay(S),
    requested_within_24_hours(S).

% Paragraph 3 - stop and delete if authorisation rejected
required_stop_and_delete_on_rejection(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    commenced_without_authorisation(S),
    authorisation_rejected(S),
    use_stopped_with_immediate_effect(S),
    data_discarded_and_deleted(S),
    results_and_outputs_discarded_and_deleted(S).

% Paragraph 3 - authorisation criteria
required_authorisation_necessary_proportionate(S) :-
    real_time_remote_biometric_identification_system(S),
    authorisation_requested(S),
    authority_satisfied_necessary_for_objective(S),
    authority_satisfied_proportionate_to_objective(S),
    objective_specified_in_request(S),
    permitted_real_time_remote_biometric_objective(S, Objective),
    objective_specified_in_request(Objective).

required_authorisation_limited_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    authorisation_granted(S),
    limited_to_strictly_necessary_period(S),
    limited_to_strictly_necessary_geographic_scope(S),
    limited_to_strictly_necessary_personal_scope(S).

% Paragraph 3 - no adverse decision solely on output
prohibited_adverse_decision_solely_on_output(S) :-
    real_time_remote_biometric_identification_system(S),
    adverse_legal_effect_on_person(Decision),
    based_solely_on_output(S, Decision).

% Paragraph 4 - notification to authorities
must_notify_authorities(Authority, use(S)) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    market_surveillance_authority(Authority).

must_notify_authorities(Authority, use(S)) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    data_protection_authority(Authority).

% Paragraph 5 - Member State may authorise
member_state_may_authorise_real_time_remote_biometric(MemberState) :-
    member_state(MemberState),
    may_provide_for_authorisation(MemberState),
    use_of_real_time_remote_biometric_identification_systems(S),
    in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    within_limits_and_conditions_of_paragraph_1_h(S),
    within_limits_and_conditions_of_paragraph_2(S),
    within_limits_and_conditions_of_paragraph_3(S).

% Paragraph 5 - lay down national rules
must_lay_down_national_rules(MemberState, authorisation_rules) :-
    member_state(MemberState),
    lays_down_detailed_rules(MemberState),
    request_for_authorisation(MemberState),
    issuance_of_authorisation(MemberState),
    exercise_of_authorisation(MemberState),
    supervision_of_authorisation(MemberState),
    reporting_on_authorisation(MemberState).

% Paragraph 5 - notify Commission
must_notify_commission_rules(MemberState, national_rules) :-
    member_state(MemberState),
    adopted_national_rules(MemberState),
    notifies_commission(MemberState),
    within(days(30), adoption(MemberState)).

% Paragraph 5 - more restrictive laws permitted
member_state_may_introduce_more_restrictive_laws(MemberState) :-
    member_state(MemberState),
    introduces_more_restrictive_laws(MemberState),
    on_use_of_remote_biometric_identification_systems(S),
    in_accordance_with_union_law(MemberState).

% Paragraph 6 - annual reports by national authorities
must_submit_annual_report(Authority, use_of_real_time_remote_biometric(S)) :-
    market_surveillance_authority(Authority),
    notified_of_use(S),
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S).

must_submit_annual_report(Authority, use_of_real_time_remote_biometric(S)) :-
    data_protection_authority(Authority),
    notified_of_use(S),
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S).

% Paragraph 6 - Commission provides template
must_provide_template(commission, annual_report_template) :-
    commission(commission),
    provides_template(commission),
    to_member_states(commission),
    to_national_market_surveillance_authorities(commission),
    to_national_data_protection_authorities(commission),
    includes_information_on_decisions(commission),
    by_competent_judicial_authorities(commission),
    by_independent_administrative_authorities(commission),
    upon_requests_for_authorisations(commission),
    and_their_result(commission).

% Paragraph 7 - Commission publishes annual reports
must_publish_annual_report(commission, aggregated_data_on_use(S)) :-
    commission(commission),
    publishes_annual_report(commission),
    based_on_aggregated_data(commission),
    from_member_states(commission),
    on_basis_of_annual_reports_referred_in_paragraph_6(commission),
    \+ includes_sensitive_operational_data(commission).

% Provenance
provenance(prohibited_subliminal_manipulative_deceptive_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploitation_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_criminal_risk_assessment_support/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_scraping_facial_recognition/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_emotion_inference_medical_safety/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_sensitive_characteristics/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation_lawful_dataset_labelling/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_objective/2, 'celex:32024R1689/oj#art_5').
provenance(permitted_deployment_confirm_identity/1, 'celex:32024R1689/oj#art_5').
provenance(required_use_elements_consideration/1, 'celex:32024R1689/oj#art_5').
provenance(required_safeguards_conditions/1, 'celex:32024R1689/oj#art_5').
provenance(required_fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(required_registration_eu_database/1, 'celex:32024R1689/oj#art_5').
provenance(urgency_exception_registration/1, 'celex:32024R1689/oj#art_5').
provenance(required_prior_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(urgency_exception_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(required_stop_and_delete_on_rejection/1, 'celex:32024R1689/oj#art_5').
provenance(required_authorisation_necessary_proportionate/1, 'celex:32024R1689/oj#art_5').
provenance(required_authorisation_limited_scope/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_adverse_decision_solely_on_output/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify_authorities/2, 'celex:32024R1689/oj#art_5').
provenance(member_state_may_authorise_real_time_remote_biometric/1, 'celex:32024R1689/oj#art_5').
provenance(must_lay_down_national_rules/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_commission_rules/2, 'celex:32024R1689/oj#art_5').
provenance(member_state_may_introduce_more_restrictive_laws/1, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_provide_template/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').

% References
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
