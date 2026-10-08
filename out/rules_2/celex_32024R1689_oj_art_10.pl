% unit       : celex:32024R1689/oj#art_10
% title      : Data and data governance
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : gpt-oss:120b-cloud
% prompt sha : bc714278306a223596d2c6567221d585998f0901e64bed735ac16ac442bb8664
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_10').
:- pred uses_training_techniques/1, gloss('AI system that uses techniques involving training of AI models'), source('celex:32024R1689/oj#art_10').
:- pred data_set_used_in_system/2, gloss('data set employed in the development of an AI system'), source('celex:32024R1689/oj#art_10').

:- pred required_quality_criteria_for_data_set/1, gloss('data set meets the quality criteria referred to in the regulation'), source('celex:32024R1689/oj#art_10').
:- pred required_data_governance_practice/2, gloss('data governance and management practice applied to a data set'), source('celex:32024R1689/oj#art_10').
:- pred required_data_quality_attribute/2, gloss('quality attribute that a data set must possess'), source('celex:32024R1689/oj#art_10').
:- pred required_data_characteristic_consideration/2, gloss('consideration of specific characteristics of the setting for a data set'), source('celex:32024R1689/oj#art_10').

:- pred permitted_exceptional_processing_special_categories/2, gloss('provider may process special categories of personal data under strict conditions'), source('celex:32024R1689/oj#art_10').
:- pred bias_detection_and_correction_needed/1, gloss('processing is strictly necessary for bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred required_condition_a/2, gloss('condition a for exceptional processing'), source('celex:32024R1689/oj#art_10').
:- pred required_condition_b/2, gloss('condition b for exceptional processing'), source('celex:32024R1689/oj#art_10').
:- pred required_condition_c/2, gloss('condition c for exceptional processing'), source('celex:32024R1689/oj#art_10').
:- pred required_condition_d/2, gloss('condition d for exceptional processing'), source('celex:32024R1689/oj#art_10').
:- pred required_condition_e/2, gloss('condition e for exceptional processing'), source('celex:32024R1689/oj#art_10').
:- pred required_condition_f/2, gloss('condition f for exceptional processing'), source('celex:32024R1689/oj#art_10').

% linkage between data sets and systems
data_set_used_in_system(DataSet, System) :-
    high_risk_ai_system(System),
    (training_data_set(DataSet) ; validation_data_set(DataSet) ; testing_data_set(DataSet)).

% 1. Quality criteria for data sets used by high‑risk AI systems that employ training techniques
required_quality_criteria_for_data_set(DataSet) :-
    high_risk_ai_system(System),
    uses_training_techniques(System),
    (training_data_set(DataSet) ; validation_data_set(DataSet) ; testing_data_set(DataSet)),
    data_set_used_in_system(DataSet, System).

% 6. When training techniques are not used, quality criteria apply only to testing data sets
required_quality_criteria_for_data_set(DataSet) :-
    high_risk_ai_system(System),
    \+ uses_training_techniques(System),
    testing_data_set(DataSet),
    data_set_used_in_system(DataSet, System).

% 2. Data governance and management practices (a)–(h)
required_data_governance_practice(DataSet, design_choices) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_governance_practice(DataSet, data_collection_origin) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_governance_practice(DataSet, data_preparation_operations) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_governance_practice(DataSet, assumption_formulation) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_governance_practice(DataSet, availability_assessment) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_governance_practice(DataSet, bias_examination) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_governance_practice(DataSet, bias_detection_prevention_mitigation) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_governance_practice(DataSet, data_gap_identification) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

% 3. Data quality attributes
required_data_quality_attribute(DataSet, relevant) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_quality_attribute(DataSet, sufficiently_representative) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_quality_attribute(DataSet, error_free) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_quality_attribute(DataSet, complete) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

required_data_quality_attribute(DataSet, appropriate_statistical_properties) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

% 4. Consideration of specific setting characteristics
required_data_characteristic_consideration(DataSet, specific_setting) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).

% 5. Exceptional processing of special categories of personal data
permitted_exceptional_processing_special_categories(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data),
    bias_detection_and_correction_needed(Provider),
    required_condition_a(Provider, Data),
    required_condition_b(Provider, Data),
    required_condition_c(Provider, Data),
    required_condition_d(Provider, Data),
    required_condition_e(Provider, Data),
    required_condition_f(Provider, Data).

bias_detection_and_correction_needed(Provider) :-
    provider(Provider).

required_condition_a(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).

required_condition_b(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).

required_condition_c(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).

required_condition_d(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).

required_condition_e(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).

required_condition_f(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_used_in_system/2, 'celex:32024R1689/oj#art_10').

provenance(required_quality_criteria_for_data_set/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance_practice/2, 'celex:32024R1689/oj#art_10').
provenance(required_data_quality_attribute/2, 'celex:32024R1689/oj#art_10').
provenance(required_data_characteristic_consideration/2, 'celex:32024R1689/oj#art_10').

provenance(permitted_exceptional_processing_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_and_correction_needed/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_a/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_b/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_c/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_d/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_e/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_f/2, 'celex:32024R1689/oj#art_10').

% References (deduplicated)
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').
