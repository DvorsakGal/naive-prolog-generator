% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 8a1c21efbccad17d4de20eaf87904f9ef0af6c8760735296527f1a65493749ad
% cached     : False
% title      : Data and data governance
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this Regulation'), source('celex:32024R1689/oj#art_10').
:- pred trained_with_data/1, gloss('AI system developed using techniques involving the training of AI models with data'), source('celex:32024R1689/oj#art_10').
:- pred training_validation_testing_data_set/2, gloss('Data set used as training, validation, or testing data set for an AI system'), source('celex:32024R1689/oj#art_10').
:- pred testing_data_set/2, gloss('Data set used as testing data set for an AI system'), source('celex:32024R1689/oj#art_10').
:- pred subject_to_data_governance/1, gloss('Data set is subject to appropriate data governance and management practices'), source('celex:32024R1689/oj#art_10').
:- pred meets_quality_criteria/1, gloss('Data set meets the relevance, representativeness, error-free, and statistical criteria'), source('celex:32024R1689/oj#art_10').
:- pred takes_into_account_setting_characteristics/1, gloss('Data set takes into account specific geographical, contextual, behavioural or functional setting characteristics'), source('celex:32024R1689/oj#art_10').
:- pred permitted_process_special_categories_data/2, gloss('Provider is permitted to process special categories of personal data for bias detection/correction'), source('celex:32024R1689/oj#art_10').
:- pred strictly_necessary_for_bias_detection_correction/2, gloss('Processing is strictly necessary to detect and correct biases in accordance with Article 10(2)'), source('celex:32024R1689/oj#art_10').
:- pred effective_with_other_data/2, gloss('Bias detection and correction can be effectively fulfilled by processing other data including synthetic or anonymised data'), source('celex:32024R1689/oj#art_10').
:- pred technical_limitations_and_privacy_measures_applied/1, gloss('Technical limitations on re-use and state-of-the-art security/privacy measures are applied'), source('celex:32024R1689/oj#art_10').
:- pred access_controlled_and_confidential/1, gloss('Measures ensure only authorised persons with confidentiality obligations have access'), source('celex:32024R1689/oj#art_10').
:- pred protected_from_external_access/1, gloss('Data is not transmitted, transferred or otherwise accessed by other parties'), source('celex:32024R1689/oj#art_10').
:- pred deleted_promptly_after_correction_or_retention/1, gloss('Data is deleted once bias is corrected or retention period ends, whichever comes first'), source('celex:32024R1689/oj#art_10').
:- pred records_of_processing_justify_necessity/2, gloss('Records of processing activities state reasons for necessity and why other data was insufficient'), source('celex:32024R1689/oj#art_10').
:- pred required_data_governance/2, gloss('AI system requires data governance compliance for a given data set'), source('celex:32024R1689/oj#art_10').

% Paragraph 1 & 2 & 3 & 4 (systems trained with data)
required_data_governance(System, DataSet) :-
    high_risk_ai_system(System),
    trained_with_data(System),
    training_validation_testing_data_set(System, DataSet).

% Paragraph 6 (systems not using techniques involving training of models)
required_data_governance(System, DataSet) :-
    high_risk_ai_system(System),
    \+ trained_with_data(System),
    testing_data_set(System, DataSet).

% Paragraph 5: Exception permitting processing of special categories of personal data for bias detection and correction
permitted_process_special_categories_data(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    strictly_necessary_for_bias_detection_correction(Provider, System),
    \+ effective_with_other_data(Provider, System),
    technical_limitations_and_privacy_measures_applied(System),
    access_controlled_and_confidential(System),
    protected_from_external_access(System),
    deleted_promptly_after_correction_or_retention(System),
    records_of_processing_justify_necessity(Provider, System).

% Provenance
provenance(required_data_governance/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_process_special_categories_data/2, 'celex:32024R1689/oj#art_10').

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
