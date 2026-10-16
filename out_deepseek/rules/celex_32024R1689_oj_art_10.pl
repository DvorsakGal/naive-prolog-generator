% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 252a9cd5625f8cf979989fc43fccdd8dd64922827e0d10ba256c504e96578685
% cached     : False
% title      : Data and data governance
:- pred data_governance_practices_applies/1, gloss('data governance and management practices apply to the data set'), source('celex:32024R1689/oj#art_10/par_2').
:- pred quality_criteria_met/1, gloss('data set meets the quality criteria of paragraphs 2-5'), source('celex:32024R1689/oj#art_10/par_1').
:- pred bias_examination_required/1, gloss('examination for possible biases is required'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
:- pred bias_mitigation_measures_required/1, gloss('measures to detect, prevent and mitigate biases are required'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
:- pred special_category_data_processing_permitted/2, gloss('provider may process special categories of personal data for bias detection and correction'), source('celex:32024R1689/oj#art_10/par_5').

% Paragraph 1: High-risk AI systems using model training must be developed on quality data sets
must_develop_on_quality_data_sets(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System),
    uses_model_training(System),
    uses_training_data(System, TrainingData),
    quality_criteria_met(TrainingData),
    uses_validation_data(System, ValidationData),
    quality_criteria_met(ValidationData),
    uses_testing_data(System, TestingData),
    quality_criteria_met(TestingData).

% Paragraph 2: Data governance and management practices
data_governance_practices_applies(DataSet) :-
    training_data(DataSet).
data_governance_practices_applies(DataSet) :-
    validation_data(DataSet).
data_governance_practices_applies(DataSet) :-
    testing_data(DataSet).

must_subject_to_data_governance(Provider, DataSet) :-
    provider(Provider),
    data_governance_practices_applies(DataSet),
    intended_purpose(Purpose),
    appropriate_for_purpose(DataSet, Purpose).

% Paragraph 2(a)-(h) are characteristics of the practices, not separate duties
appropriate_for_purpose(DataSet, Purpose) :-
    design_choices_relevant(DataSet, Purpose),
    data_collection_processes_documented(DataSet),
    data_origin_documented(DataSet),
    data_preparation_operations_documented(DataSet),
    assumptions_formulated(DataSet),
    availability_assessed(DataSet),
    quantity_assessed(DataSet),
    suitability_assessed(DataSet),
    bias_examination_conducted(DataSet),
    bias_mitigation_measures_identified(DataSet),
    data_gaps_identified(DataSet),
    data_gaps_addressed(DataSet).

% Paragraph 3: Quality characteristics
quality_criteria_met(DataSet) :-
    relevant(DataSet),
    sufficiently_representative(DataSet),
    free_of_errors_to_best_extent(DataSet),
    complete_in_view_of_purpose(DataSet),
    appropriate_statistical_properties(DataSet).

% Paragraph 4: Contextual characteristics
quality_criteria_met(DataSet) :-
    takes_into_account_contextual_characteristics(DataSet).

% Paragraph 5: Exceptional processing of special categories of personal data
special_category_data_processing_permitted(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    strictly_necessary_for_bias_detection_and_correction(System),
    cannot_fulfill_with_other_data(System),
    technical_limitations_on_reuse(System),
    state_of_the_art_security_measures(System),
    pseudonymisation_applied(System),
    access_controls_and_documentation(System),
    only_authorised_persons_access(System),
    no_transmission_to_other_parties(System),
    deletion_upon_bias_correction_or_retention_end(System),
    records_include_necessity_reasoning(System).

% Paragraph 6: Non-training systems only need testing data quality
must_develop_on_quality_data_sets(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System),
    \+ uses_model_training(System),
    uses_testing_data(System, TestingData),
    quality_criteria_met(TestingData).

% Auxiliary predicates
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_10').
:- pred uses_model_training/1, gloss('AI system uses techniques involving training of AI models'), source('celex:32024R1689/oj#art_10/par_1').
:- pred uses_training_data/2, gloss('AI system uses the given training data set'), source('celex:32024R1689/oj#art_10/par_1').
:- pred uses_validation_data/2, gloss('AI system uses the given validation data set'), source('celex:32024R1689/oj#art_10/par_1').
:- pred uses_testing_data/2, gloss('AI system uses the given testing data set'), source('celex:32024R1689/oj#art_10/par_1').
:- pred appropriate_for_purpose/2, gloss('data set is appropriate for the intended purpose'), source('celex:32024R1689/oj#art_10/par_2').
:- pred design_choices_relevant/2, gloss('design choices are relevant to the intended purpose'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_a').
:- pred data_collection_processes_documented/1, gloss('data collection processes are documented'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_b').
:- pred data_origin_documented/1, gloss('origin of data is documented'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_b').
:- pred data_preparation_operations_documented/1, gloss('data preparation processing operations are documented'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_c').
:- pred assumptions_formulated/1, gloss('assumptions about data are formulated'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_d').
:- pred availability_assessed/1, gloss('availability of data sets is assessed'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_e').
:- pred quantity_assessed/1, gloss('quantity of data sets is assessed'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_e').
:- pred suitability_assessed/1, gloss('suitability of data sets is assessed'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_e').
:- pred bias_examination_conducted/1, gloss('examination for possible biases is conducted'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
:- pred bias_mitigation_measures_identified/1, gloss('measures to detect, prevent and mitigate biases are identified'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
:- pred data_gaps_identified/1, gloss('relevant data gaps or shortcomings are identified'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_h').
:- pred data_gaps_addressed/1, gloss('how data gaps and shortcomings can be addressed is identified'), source('celex:32024R1689/oj#art_10/par_2/unp_1/pnt_h').
:- pred relevant/1, gloss('data set is relevant'), source('celex:32024R1689/oj#art_10/par_3').
:- pred sufficiently_representative/1, gloss('data set is sufficiently representative'), source('celex:32024R1689/oj#art_10/par_3').
:- pred free_of_errors_to_best_extent/1, gloss('data set is free of errors to the best extent possible'), source('celex:32024R1689/oj#art_10/par_3').
:- pred complete_in_view_of_purpose/1, gloss('data set is complete in view of the intended purpose'), source('celex:32024R1689/oj#art_10/par_3').
:- pred appropriate_statistical_properties/1, gloss('data set has appropriate statistical properties'), source('celex:32024R1689/oj#art_10/par_3').
:- pred takes_into_account_contextual_characteristics/1, gloss('data set takes into account contextual characteristics'), source('celex:32024R1689/oj#art_10/par_4').
:- pred strictly_necessary_for_bias_detection_and_correction/1, gloss('processing is strictly necessary for bias detection and correction'), source('celex:32024R1689/oj#art_10/par_5').
:- pred cannot_fulfill_with_other_data/1, gloss('bias detection and correction cannot be fulfilled with other data'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_a').
:- pred technical_limitations_on_reuse/1, gloss('special categories of personal data are subject to technical limitations on reuse'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
:- pred state_of_the_art_security_measures/1, gloss('state-of-the-art security and privacy-preserving measures are applied'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
:- pred pseudonymisation_applied/1, gloss('pseudonymisation is applied'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
:- pred access_controls_and_documentation/1, gloss('strict controls and documentation of access are in place'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred only_authorised_persons_access/1, gloss('only authorised persons have access with confidentiality obligations'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred no_transmission_to_other_parties/1, gloss('data is not transmitted, transferred or accessed by other parties'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
:- pred deletion_upon_bias_correction_or_retention_end/1, gloss('data is deleted upon bias correction or end of retention period'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_e').
:- pred records_include_necessity_reasoning/1, gloss('records include reasons for necessity of processing special categories'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').

% Provenance
provenance(must_develop_on_quality_data_sets/2, 'celex:32024R1689/oj#art_10/par_1').
provenance(data_governance_practices_applies/1, 'celex:32024R1689/oj#art_10/par_2').
provenance(must_subject_to_data_governance/2, 'celex:32024R1689/oj#art_10/par_2').
provenance(appropriate_for_purpose/2, 'celex:32024R1689/oj#art_10/par_2').
provenance(quality_criteria_met/1, 'celex:32024R1689/oj#art_10/par_3').
provenance(quality_criteria_met/1, 'celex:32024R1689/oj#art_10/par_4').
provenance(special_category_data_processing_permitted/2, 'celex:32024R1689/oj#art_10/par_5').
provenance(must_develop_on_quality_data_sets/2, 'celex:32024R1689/oj#art_10/par_6').

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
