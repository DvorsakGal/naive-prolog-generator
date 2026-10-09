% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 72fb7a0bb878b10ee79bc82bcbda1cfa96c0534e9558abf47d37e62df5fbab40
% cached     : False
% title      : Data and data governance
:- pred data_set/1, gloss('data set used for training, validation or testing'), source('derived').
:- pred uses_data_set/2, gloss('system uses given data set'), source('derived').
:- pred uses_training_technique/1, gloss('system uses techniques involving training of AI models'), source('derived').

:- pred condition_bias_detection_not_fulfilled_by_other_data/1, gloss('bias detection cannot be effectively fulfilled by processing other data'), source('derived').
:- pred condition_technical_limitations/1, gloss('technical limitations on re‑use of special categories of personal data'), source('derived').
:- pred condition_security_measures/1, gloss('state‑of‑the‑art security and privacy‑preserving measures are applied'), source('derived').
:- pred condition_no_transfer/1, gloss('special categories of personal data are not transmitted, transferred or otherwise accessed by other parties'), source('derived').
:- pred condition_deletion_after_bias_correction/1, gloss('special categories of personal data are deleted once bias has been corrected or retention period ends'), source('derived').
:- pred condition_records_of_processing/1, gloss('records of processing include reasons why processing was strictly necessary'), source('derived').

must_use_data_set(Provider, DataSet) :-
    provider(Provider),
    high_risk_ai_system(System),
    uses_data_set(System, DataSet),
    (   training_data(DataSet)
    ;   validation_data(DataSet)
    ;   testing_data(DataSet)
    ),
    required_quality_criteria(DataSet).

required_quality_criteria(DataSet) :-
    data_set(DataSet),
    required_data_governance(DataSet),
    required_representativeness(DataSet),
    required_error_free(DataSet),
    required_geographical_context(DataSet).

required_data_governance(DataSet) :-
    data_set(DataSet).

required_representativeness(DataSet) :-
    data_set(DataSet).

required_error_free(DataSet) :-
    data_set(DataSet).

required_geographical_context(DataSet) :-
    data_set(DataSet).

must_process_special_categories(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data),
    condition_bias_detection_not_fulfilled_by_other_data(Data),
    condition_technical_limitations(Data),
    condition_security_measures(Data),
    condition_no_transfer(Data),
    condition_deletion_after_bias_correction(Data),
    condition_records_of_processing(Data).

must_use_testing_data_set(Provider, DataSet) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ uses_training_technique(System),
    uses_data_set(System, DataSet),
    testing_data(DataSet),
    required_quality_criteria(DataSet).

provenance(must_use_data_set/2, 'celex:32024R1689/oj#art_10').
provenance(required_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_representativeness/1, 'celex:32024R1689/oj#art_10').
provenance(required_error_free/1, 'celex:32024R1689/oj#art_10').
provenance(required_geographical_context/1, 'celex:32024R1689/oj#art_10').
provenance(must_process_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(must_use_testing_data_set/2, 'celex:32024R1689/oj#art_10').

references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj').
