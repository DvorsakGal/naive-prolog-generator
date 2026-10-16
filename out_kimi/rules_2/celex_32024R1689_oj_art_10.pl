% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 5a81ff73807a5d4d9f682a3ce15b6479b9f1c69cc21cd67d70f534bc847a592e
% cached     : False
% title      : Data and data governance
:- pred data_governance_practices/1, gloss('data governance and management practices appropriate for the intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred meets_quality_criteria/1, gloss('training, validation and testing data sets meet quality criteria'), source('celex:32024R1689/oj#art_10').
:- pred relevant_representative_complete/1, gloss('data sets are relevant, sufficiently representative, free of errors and complete'), source('celex:32024R1689/oj#art_10').
:- pred appropriate_statistical_properties/1, gloss('data sets have appropriate statistical properties'), source('celex:32024R1689/oj#art_10').
:- pred geographical_contextual_behavioural_functional_characteristics/1, gloss('data sets take into account characteristics of the specific setting'), source('celex:32024R1689/oj#art_10').
:- pred may_process_special_categories/1, gloss('provider may exceptionally process special categories of personal data for bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred bias_detection_correction_necessary/1, gloss('bias detection and correction cannot be effectively fulfilled by other data'), source('celex:32024R1689/oj#art_10').
:- pred technical_limitations_reuse/1, gloss('special categories subject to technical limitations on re-use'), source('celex:32024R1689/oj#art_10').
:- pred state_of_the_art_security_privacy/1, gloss('state-of-the-art security and privacy-preserving measures applied'), source('celex:32024R1689/oj#art_10').
:- pred secured_protected_suitable_safeguards/1, gloss('personal data secured with suitable safeguards and strict controls'), source('celex:32024R1689/oj#art_10').
:- pred not_transmitted_transferred_accessed/1, gloss('special categories not transmitted, transferred or accessed by other parties'), source('celex:32024R1689/oj#art_10').
:- pred deleted_after_bias_corrected_or_retention/1, gloss('special categories deleted once bias corrected or retention period ended'), source('celex:32024R1689/oj#art_10').
:- pred records_include_reasons/1, gloss('records of processing include reasons for necessity of special categories'), source('celex:32024R1689/oj#art_10').
:- pred applies_only_to_testing_data/1, gloss('paragraphs 2-5 apply only to testing data for non-training systems'), source('celex:32024R1689/oj#art_10').

% Article 10(1): High-risk AI systems using training techniques must have quality data sets
meets_quality_criteria(S) :-
    high_risk_ai_system(S),
    training_data(T),
    validation_data(V),
    testing_data_set(Te),
    data_governance_practices(S).

% Article 10(2): Data governance and management practices
data_governance_practices(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    design_choices_appropriate(S),
    data_collection_processes_appropriate(S),
    data_preparation_operations_appropriate(S),
    assumptions_formulated(S),
    data_availability_quantity_suitability_assessed(S),
    bias_examination_conducted(S),
    bias_mitigation_measures(S),
    data_gaps_identified_and_addressed(S).

% Article 10(3): Data sets must be relevant, representative, free of errors, complete
relevant_representative_complete(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    training_data(T),
    validation_data(V),
    testing_data_set(Te),
    relevant(T),
    sufficiently_representative(T),
    sufficiently_representative(V),
    sufficiently_representative(Te),
    free_of_errors(T),
    free_of_errors(V),
    free_of_errors(Te),
    complete(T),
    complete(V),
    complete(Te).

appropriate_statistical_properties(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    training_data(T),
    validation_data(V),
    testing_data_set(Te),
    statistical_properties_appropriate(T),
    statistical_properties_appropriate(V),
    statistical_properties_appropriate(Te).

% Article 10(4): Data sets must account for geographical, contextual, behavioural, functional setting
geographical_contextual_behavioural_functional_characteristics(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    data_sets_account_for_setting(S).

% Article 10(5): Exceptional processing of special categories of personal data for bias detection
may_process_special_categories(P) :-
    provider(P),
    high_risk_ai_system(S),
    developed_by(P, S),
    strictly_necessary_for_bias_detection_correction(S),
    appropriate_safeguards(S),
    bias_detection_correction_necessary(S),
    technical_limitations_reuse(S),
    state_of_the_art_security_privacy(S),
    secured_protected_suitable_safeguards(S),
    not_transmitted_transferred_accessed(S),
    deleted_after_bias_corrected_or_retention(S),
    records_include_reasons(S).

bias_detection_correction_necessary(S) :-
    high_risk_ai_system(S),
    \+ bias_detection_fulfilled_by_other_data(S).

technical_limitations_reuse(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    technical_limitations_on_reuse(D),
    pseudonymisation_applied(D).

state_of_the_art_security_privacy(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    security_measures_state_of_the_art(D),
    privacy_preserving_measures_state_of_the_art(D).

secured_protected_suitable_safeguards(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    secured(D),
    protected(D),
    suitable_safeguards(D),
    strict_controls_access(D),
    documentation_access(D),
    only_authorised_persons_access(D),
    confidentiality_obligations(D).

not_transmitted_transferred_accessed(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    \+ transmitted(D),
    \+ transferred(D),
    \+ accessed_by_other_parties(D).

deleted_after_bias_corrected_or_retention(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    (bias_corrected(S, D); retention_period_ended(D)),
    deleted(D).

records_include_reasons(S) :-
    high_risk_ai_system(S),
    records_of_processing_activities(R),
    includes_reasons(R, necessity_strict_for_bias_detection),
    includes_reasons(R, other_data_could_not_achieve_objective).

% Article 10(6): For non-training systems, paragraphs 2-5 apply only to testing data
applies_only_to_testing_data(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(Te),
    data_governance_practices(S),
    relevant_representative_complete(S),
    appropriate_statistical_properties(S),
    geographical_contextual_behavioural_functional_characteristics(S).

% Provenance
provenance(meets_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices/1, 'celex:32024R1689/oj#art_10').
provenance(relevant_representative_complete/1, 'celex:32024R1689/oj#art_10').
provenance(appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(geographical_contextual_behavioural_functional_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(may_process_special_categories/1, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_correction_necessary/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(state_of_the_art_security_privacy/1, 'celex:32024R1689/oj#art_10').
provenance(secured_protected_suitable_safeguards/1, 'celex:32024R1689/oj#art_10').
provenance(not_transmitted_transferred_accessed/1, 'celex:32024R1689/oj#art_10').
provenance(deleted_after_bias_corrected_or_retention/1, 'celex:32024R1689/oj#art_10').
provenance(records_include_reasons/1, 'celex:32024R1689/oj#art_10').
provenance(applies_only_to_testing_data/1, 'celex:32024R1689/oj#art_10').

% References
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').
