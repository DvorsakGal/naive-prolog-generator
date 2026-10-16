% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bcb31f5a9bf0790b147fb3ee759ad52240b3175b7dfd9a97bc94eabc328e576f
% cached     : False
% title      : Data and data governance
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_10').
:- pred uses_training_techniques/1, gloss('AI system makes use of techniques involving the training of AI models with data'), source('celex:32024R1689/oj#art_10').
:- pred developed_on_basis_of/2, gloss('system is developed on the basis of data sets'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practices/1, gloss('data governance and management practices appropriate for the intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_concerns/2, gloss('data governance practices concern a particular aspect'), source('celex:32024R1689/oj#art_10').
:- pred data_set_quality_criteria_met/1, gloss('data set meets the quality criteria of paragraphs 2 to 5'), source('celex:32024R1689/oj#art_10').
:- pred data_set_relevant/1, gloss('data set is relevant'), source('celex:32024R1689/oj#art_10').
:- pred data_set_sufficiently_representative/1, gloss('data set is sufficiently representative'), source('celex:32024R1689/oj#art_10').
:- pred data_set_free_of_errors/1, gloss('data set is free of errors to the best extent possible'), source('celex:32024R1689/oj#art_10').
:- pred data_set_complete/1, gloss('data set is complete in view of the intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred data_set_appropriate_statistical_properties/1, gloss('data set has appropriate statistical properties'), source('celex:32024R1689/oj#art_10').
:- pred data_set_takes_into_account/2, gloss('data set takes into account characteristics or elements'), source('celex:32024R1689/oj#art_10').
:- pred specific_setting/1, gloss('specific geographical, contextual, behavioural or functional setting'), source('celex:32024R1689/oj#art_10').
:- pred may_process_special_categories/2, gloss('provider may exceptionally process special categories of personal data for bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred bias_detection_correction_purpose/1, gloss('purpose of ensuring bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred bias_cannot_be_corrected_by_other_data/1, gloss('bias detection and correction cannot be effectively fulfilled by processing other data'), source('celex:32024R1689/oj#art_10').
:- pred technical_limitations_on_reuse/1, gloss('special categories of personal data subject to technical limitations on re-use'), source('celex:32024R1689/oj#art_10').
:- pred security_and_privacy_measures/1, gloss('state-of-the-art security and privacy-preserving measures including pseudonymisation'), source('celex:32024R1689/oj#art_10').
:- pred data_secured_and_protected/1, gloss('special categories of personal data secured, protected, with suitable safeguards'), source('celex:32024R1689/oj#art_10').
:- pred strict_access_controls/1, gloss('strict controls and documentation of access to personal data'), source('celex:32024R1689/oj#art_10').
:- pred authorised_persons_only/1, gloss('only authorised persons have access with appropriate confidentiality obligations'), source('celex:32024R1689/oj#art_10').
:- pred data_not_transmitted_to_other_parties/1, gloss('special categories of personal data not transmitted, transferred or otherwise accessed by other parties'), source('celex:32024R1689/oj#art_10').
:- pred data_deleted_after_bias_correction/1, gloss('special categories of personal data deleted once bias corrected or retention period ends'), source('celex:32024R1689/oj#art_10').
:- pred processing_records_include_reasons/1, gloss('records of processing activities include reasons why processing was strictly necessary'), source('celex:32024R1689/oj#art_10').
:- pred applies_only_to_testing_data/1, gloss('paragraphs 2 to 5 apply only to testing data sets'), source('celex:32024R1689/oj#art_10').

% Article 10, paragraph 1: High-risk AI systems using training techniques must be developed on data sets meeting quality criteria
must_develop_on_quality_data_sets(S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    developed_on_basis_of(S, data_sets(training, validation, testing)),
    data_set_quality_criteria_met(training_data(S)),
    data_set_quality_criteria_met(validation_data_set(S)),
    data_set_quality_criteria_met(testing_data(S)).

% Article 10, paragraph 2: Data governance practices appropriate for intended purpose
must_apply_data_governance(S, D) :-
    high_risk_ai_system(S),
    data_governance_practices(D),
    intended_purpose(S),
    data_governance_concerns(D, design_choices),
    data_governance_concerns(D, data_collection_processes_and_origin),
    data_governance_concerns(D, data_preparation_processing_operations),
    data_governance_concerns(D, formulation_of_assumptions),
    data_governance_concerns(D, assessment_of_availability_quantity_suitability),
    data_governance_concerns(D, examination_for_possible_biases),
    data_governance_concerns(D, measures_to_detect_prevent_mitigate_biases),
    data_governance_concerns(D, identification_of_data_gaps_or_shortcomings).

% Article 10, paragraph 3: Data sets shall be relevant, sufficiently representative, free of errors, complete, with appropriate statistical properties
data_set_quality_criteria_met(D) :-
    data_set_relevant(D),
    data_set_sufficiently_representative(D),
    data_set_free_of_errors(D),
    data_set_complete(D),
    data_set_appropriate_statistical_properties(D).

% Article 10, paragraph 4: Data sets shall take into account characteristics of specific setting
must_take_into_account_setting(S, D) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    specific_setting(S),
    data_set_takes_into_account(D, characteristics(S)).

% Article 10, paragraph 5: Exceptional processing of special categories of personal data for bias detection and correction
permitted_processing_special_categories(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    bias_detection_correction_purpose(S),
    bias_cannot_be_corrected_by_other_data(S),
    technical_limitations_on_reuse(S),
    security_and_privacy_measures(S),
    data_secured_and_protected(S),
    strict_access_controls(S),
    authorised_persons_only(S),
    data_not_transmitted_to_other_parties(S),
    data_deleted_after_bias_correction(S),
    processing_records_include_reasons(S).

% Article 10, paragraph 6: For high-risk AI systems not using training techniques, paragraphs 2-5 apply only to testing data sets
applies_only_to_testing_data(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S).

% Provenance facts
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(developed_on_basis_of/2, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_concerns/2, 'celex:32024R1689/oj#art_10').
provenance(data_set_quality_criteria_met/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_relevant/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_sufficiently_representative/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_free_of_errors/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_complete/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_takes_into_account/2, 'celex:32024R1689/oj#art_10').
provenance(specific_setting/1, 'celex:32024R1689/oj#art_10').
provenance(may_process_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_correction_purpose/1, 'celex:32024R1689/oj#art_10').
provenance(bias_cannot_be_corrected_by_other_data/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(security_and_privacy_measures/1, 'celex:32024R1689/oj#art_10').
provenance(data_secured_and_protected/1, 'celex:32024R1689/oj#art_10').
provenance(strict_access_controls/1, 'celex:32024R1689/oj#art_10').
provenance(authorised_persons_only/1, 'celex:32024R1689/oj#art_10').
provenance(data_not_transmitted_to_other_parties/1, 'celex:32024R1689/oj#art_10').
provenance(data_deleted_after_bias_correction/1, 'celex:32024R1689/oj#art_10').
provenance(processing_records_include_reasons/1, 'celex:32024R1689/oj#art_10').
provenance(applies_only_to_testing_data/1, 'celex:32024R1689/oj#art_10').
provenance(must_develop_on_quality_data_sets/1, 'celex:32024R1689/oj#art_10').
provenance(must_apply_data_governance/2, 'celex:32024R1689/oj#art_10').
provenance(must_take_into_account_setting/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/2, 'celex:32024R1689/oj#art_10').

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
