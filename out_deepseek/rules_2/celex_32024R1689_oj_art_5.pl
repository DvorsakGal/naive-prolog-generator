% unit       : celex:32024R1689/oj#art_5
% context    : CHAPTER II PROHIBITED AI PRACTICES
% slice sha  : 87a3c6705e7da58ea53f1557f1d1c1cabf1c4ce371043ee012c080b5202684a4
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 099a0d8a9d1fba71876ac47e14d2e07bf82c307974aa614a64d11d1faa336204
% cached     : False
% title      : Prohibited AI practices
:- pred prohibited_subliminal_manipulation/1, gloss('AI system deploying subliminal or manipulative techniques causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_exploitation_of_vulnerabilities/1, gloss('AI system exploiting vulnerabilities causing significant harm'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_social_scoring/1, gloss('AI system for social scoring leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_crime_risk_assessment/1, gloss('AI system assessing risk of criminal offence based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_facial_recognition_database_creation/1, gloss('AI system creating facial recognition databases through untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_emotion_inference/1, gloss('AI system inferring emotions in workplace or education'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_biometric_categorisation/1, gloss('biometric categorisation system deducing protected characteristics'), source('celex:32024R1689/oj#art_5').
:- pred prohibited_real_time_remote_biometric_identification/1, gloss('use of real-time remote biometric identification for law enforcement'), source('celex:32024R1689/oj#art_5').
:- pred permitted_real_time_remote_biometric_identification/2, gloss('permitted use of real-time remote biometric identification for a specific objective'), source('celex:32024R1689/oj#art_5').
:- pred must_confirm_identity/1, gloss('deployment must confirm identity of specifically targeted individual'), source('celex:32024R1689/oj#art_5').
:- pred must_take_into_account_elements/1, gloss('deployment must take into account nature of situation and consequences'), source('celex:32024R1689/oj#art_5').
:- pred must_comply_with_safeguards/1, gloss('deployment must comply with necessary and proportionate safeguards'), source('celex:32024R1689/oj#art_5').
:- pred must_have_authorisation/1, gloss('deployment must have prior authorisation from judicial or independent authority'), source('celex:32024R1689/oj#art_5').
:- pred must_notify_authorities/1, gloss('deployment must be notified to market surveillance and data protection authorities'), source('celex:32024R1689/oj#art_5').
:- pred must_submit_annual_report/2, gloss('authority must submit annual report to Commission'), source('celex:32024R1689/oj#art_5').
:- pred must_publish_annual_report/1, gloss('Commission must publish annual report'), source('celex:32024R1689/oj#art_5').
:- pred urgency_applies/1, gloss('duly justified situation of urgency'), source('celex:32024R1689/oj#art_5').
:- pred fundamental_rights_impact_assessment_completed/1, gloss('law enforcement authority completed fundamental rights impact assessment'), source('celex:32024R1689/oj#art_5').
:- pred registered_in_eu_database/1, gloss('system registered in EU database'), source('celex:32024R1689/oj#art_5').
:- pred authorisation_granted/1, gloss('authorisation granted by competent authority'), source('celex:32024R1689/oj#art_5').
:- pred authorisation_requested_without_undue_delay/1, gloss('authorisation requested without undue delay'), source('celex:32024R1689/oj#art_5').
:- pred adverse_legal_effect_decision/1, gloss('decision producing adverse legal effect based solely on system output'), source('celex:32024R1689/oj#art_5').
:- pred medical_or_safety_reason/1, gloss('use intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred law_enforcement_purpose/1, gloss('use for law enforcement purposes'), source('celex:32024R1689/oj#art_5').
:- pred targeted_search_victims/1, gloss('targeted search for victims of abduction, trafficking or exploitation'), source('celex:32024R1689/oj#art_5').
:- pred prevention_of_threat/1, gloss('prevention of specific substantial imminent threat to life or safety'), source('celex:32024R1689/oj#art_5').
:- pred localisation_of_suspect/1, gloss('localisation or identification of person suspected of criminal offence'), source('celex:32024R1689/oj#art_5').
:- pred offence_in_annex_2/1, gloss('offence referred to in Annex II'), source('celex:32024R1689/oj#art_5').
:- pred punishable_by_four_years/1, gloss('offence punishable by custodial sentence of at least four years'), source('celex:32024R1689/oj#art_5').

% Paragraph 1(a): subliminal or manipulative techniques
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    deploys_subliminal_or_manipulative_techniques(S),
    objective_or_effect_materially_distorts_behaviour(S),
    appreciably_impairs_informed_decision(S),
    causes_decision_not_otherwise_taken(S),
    causes_or_likely_causes_significant_harm(S).

deploys_subliminal_or_manipulative_techniques(S) :-
    ai_system(S),
    ( deploys_subliminal_techniques(S)
    ; deploys_purposefully_manipulative_techniques(S)
    ; deploys_deceptive_techniques(S)
    ).

% Paragraph 1(b): exploitation of vulnerabilities
prohibited_exploitation_of_vulnerabilities(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    exploits_vulnerabilities(S),
    objective_or_effect_materially_distorts_behaviour(S),
    causes_or_likely_causes_significant_harm(S).

exploits_vulnerabilities(S) :-
    ai_system(S),
    exploits_age_vulnerability(S).
exploits_vulnerabilities(S) :-
    ai_system(S),
    exploits_disability_vulnerability(S).
exploits_vulnerabilities(S) :-
    ai_system(S),
    exploits_social_or_economic_situation_vulnerability(S).

% Paragraph 1(c): social scoring
prohibited_social_scoring(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    evaluates_or_classifies_over_time(S),
    based_on_social_behaviour_or_personality(S),
    social_score_leads_to_detrimental_treatment(S).

social_score_leads_to_detrimental_treatment(S) :-
    detrimental_treatment_unrelated_context(S).
social_score_leads_to_detrimental_treatment(S) :-
    detrimental_treatment_unjustified_or_disproportionate(S).

% Paragraph 1(d): crime risk assessment
prohibited_crime_risk_assessment(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    makes_risk_assessment_of_natural_person(S),
    based_solely_on_profiling_or_personality(S),
    \+ supports_human_assessment_of_criminal_involvement(S).

supports_human_assessment_of_criminal_involvement(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_verifiable_facts(S).

% Paragraph 1(e): facial recognition database creation
prohibited_facial_recognition_database_creation(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping_of_facial_images(S).

% Paragraph 1(f): emotion inference
prohibited_emotion_inference(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    infers_emotions(S),
    in_workplace_or_education(S),
    \+ medical_or_safety_reason(S).

% Paragraph 1(g): biometric categorisation
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    categorises_individuals_by_biometric_data(S),
    deduces_or_infers_protected_characteristics(S),
    \+ lawful_labelling_or_filtering(S),
    \+ law_enforcement_categorisation(S).

% Paragraph 1(h): real-time remote biometric identification
prohibited_real_time_remote_biometric_identification(Use) :-
    real_time_remote_biometric_identification_system(S),
    use_of_system(law_enforcement_authority, S, Use),
    in_publicly_accessible_space(Use),
    law_enforcement_purpose(Use),
    \+ permitted_real_time_remote_biometric_identification(Use, _Objective).

permitted_real_time_remote_biometric_identification(Use, Objective) :-
    real_time_remote_biometric_identification_system(S),
    use_of_system(law_enforcement_authority, S, Use),
    in_publicly_accessible_space(Use),
    law_enforcement_purpose(Use),
    strictly_necessary(Use, Objective),
    permitted_objective(Objective).

permitted_objective(targeted_search_victims).
permitted_objective(prevention_of_threat).
permitted_objective(localisation_of_suspect(Suspect)) :-
    offence_in_annex_2(Offence),
    suspect_offence(Suspect, Offence),
    punishable_by_four_years(Offence).

% Paragraph 2: conditions on permitted use
must_confirm_identity(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    deployment_confirms_identity(Use).

must_take_into_account_elements(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    takes_into_account_nature_of_situation(Use),
    takes_into_account_consequences(Use).

must_comply_with_safeguards(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    complies_with_temporal_geographic_personal_limitations(Use),
    fundamental_rights_impact_assessment_completed(Use),
    ( registered_in_eu_database(Use)
    ; urgency_applies(Use), registered_without_undue_delay(Use)
    ).

% Paragraph 3: prior authorisation
must_have_authorisation(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    ( authorisation_granted(Use)
    ; urgency_applies(Use), authorisation_requested_without_undue_delay(Use)
    ).

authorisation_granted(Use) :-
    permitted_real_time_remote_biometric_identification(Use, Objective),
    authorisation_by_judicial_or_independent_authority(Use),
    necessary_and_proportionate(Use, Objective),
    limited_to_strictly_necessary_scope(Use),
    takes_into_account_elements(Use),
    \+ adverse_legal_effect_decision(Use).

% Paragraph 4: notification
must_notify_authorities(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    notified_to_market_surveillance_authority(Use),
    notified_to_data_protection_authority(Use),
    notification_contains_minimum_information(Use),
    \+ includes_sensitive_operational_data(Use).

% Paragraph 6: annual reports by authorities
must_submit_annual_report(Authority, Commission) :-
    ( market_surveillance_authority(Authority)
    ; national_data_protection_authority(Authority)
    ),
    notified_of_use(Authority, _Use),
    report_on_real_time_remote_biometric_identification(Authority, Commission).

% Paragraph 7: Commission annual report
must_publish_annual_report(Commission) :-
    ai_office(Commission),
    aggregated_data_from_member_states(Commission),
    \+ includes_sensitive_operational_data(Commission).

% Helper predicates
use_of_system(_Actor, _System) :- true.  % placeholder for actual use relation

deploys_subliminal_techniques(_S) :- true.
deploys_purposefully_manipulative_techniques(_S) :- true.
deploys_deceptive_techniques(_S) :- true.
objective_or_effect_materially_distorts_behaviour(_S) :- true.
appreciably_impairs_informed_decision(_S) :- true.
causes_decision_not_otherwise_taken(_S) :- true.
causes_or_likely_causes_significant_harm(_S) :- true.
exploits_age_vulnerability(_S) :- true.
exploits_disability_vulnerability(_S) :- true.
exploits_social_or_economic_situation_vulnerability(_S) :- true.
evaluates_or_classifies_over_time(_S) :- true.
based_on_social_behaviour_or_personality(_S) :- true.
detrimental_treatment_unrelated_context(_S) :- true.
detrimental_treatment_unjustified_or_disproportionate(_S) :- true.
makes_risk_assessment_of_natural_person(_S) :- true.
based_solely_on_profiling_or_personality(_S) :- true.
supports_human_assessment(_S) :- true.
based_on_objective_verifiable_facts(_S) :- true.
creates_or_expands_facial_recognition_database(_S) :- true.
untargeted_scraping_of_facial_images(_S) :- true.
infers_emotions(_S) :- true.
in_workplace_or_education(_S) :- true.
categorises_individuals_by_biometric_data(_S) :- true.
deduces_or_infers_protected_characteristics(_S) :- true.
lawful_labelling_or_filtering(_S) :- true.
law_enforcement_categorisation(_S) :- true.
in_publicly_accessible_space(_Use) :- true.
strictly_necessary(_Use, _Objective) :- true.
deployment_confirms_identity(_Use) :- true.
takes_into_account_nature_of_situation(_Use) :- true.
takes_into_account_consequences(_Use) :- true.
complies_with_temporal_geographic_personal_limitations(_Use) :- true.
registered_without_undue_delay(_Use) :- true.
authorisation_by_judicial_or_independent_authority(_Use) :- true.
necessary_and_proportionate(_Use, _Objective) :- true.
limited_to_strictly_necessary_scope(_Use) :- true.
takes_into_account_elements(_Use) :- true.
notified_to_market_surveillance_authority(_Use) :- true.
notified_to_data_protection_authority(_Use) :- true.
notification_contains_minimum_information(_Use) :- true.
includes_sensitive_operational_data(_Use) :- true.
national_data_protection_authority(_A) :- true.
notified_of_use(_A, _Use) :- true.
report_on_real_time_remote_biometric_identification(_A, _C) :- true.
aggregated_data_from_member_states(_C) :- true.
suspect_offence(_Suspect, _Offence) :- true.

% Provenance
provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerabilities/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_crime_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_creation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification/2, 'celex:32024R1689/oj#art_5').
provenance(must_confirm_identity/1, 'celex:32024R1689/oj#art_5').
provenance(must_take_into_account_elements/1, 'celex:32024R1689/oj#art_5').
provenance(must_comply_with_safeguards/1, 'celex:32024R1689/oj#art_5').
provenance(must_have_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify_authorities/1, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/1, 'celex:32024R1689/oj#art_5').

% References
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
