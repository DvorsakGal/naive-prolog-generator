% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4464f54c819c78460816f6d0254fb792496e5950d97c5e4c4987b18f63fd3a0b
% cached     : False
% title      : Data and data governance
% --- Quality criteria for data sets ---------------------------------
required_quality_criteria(DataSet) :-
    training_data_set(DataSet),
    training_data_set(DataSet).

required_quality_criteria(DataSet) :-
    validation_data_set(DataSet),
    validation_data_set(DataSet).

required_quality_criteria(DataSet) :-
    testing_data_set(DataSet),
    testing_data_set(DataSet).

provenance(required_quality_criteria/1, 'celex:32024R1689/oj#art_10').

% --- Provider must apply data governance to data sets -----------------
must_apply_data_governance(Provider, DataSet) :-
    provider(Provider),
    provider(Provider),
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    required_quality_criteria(DataSet).

provenance(must_apply_data_governance/2, 'celex:32024R1689/oj#art_10').

% --- Specific data‑governance practices (paragraph 2) -----------------
required_design_choice_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).

required_data_collection_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).

required_data_preparation_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    testing_data_set(DataSet),
    testing_data_set(DataSet).

required_assumption_formulation_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).

required_availability_assessment_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).

required_bias_examination_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    testing_data_set(DataSet),
    testing_data_set(DataSet).

required_bias_detection_measures_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).

required_data_gap_identification_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).

provenance(required_design_choice_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_collection_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_preparation_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_assumption_formulation_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_availability_assessment_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_bias_examination_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_bias_detection_measures_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_gap_identification_governance/1, 'celex:32024R1689/oj#art_10').

% --- Data‑quality requirements (paragraph 3) -----------------------
required_data_quality(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).

provenance(required_data_quality/1, 'celex:32024R1689/oj#art_10').

% --- Contextual consideration (paragraph 4) -------------------------
required_contextual_consideration(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).

provenance(required_contextual_consideration/1, 'celex:32024R1689/oj#art_10').

% --- Permission to process special categories of personal data (paragraph 5) ---
permitted_processing_special_categories(Provider) :-
    provider(Provider),
    provider(Provider),
    required_condition_a(Provider),
    required_condition_b(Provider),
    required_condition_c(Provider),
    required_condition_d(Provider),
    required_condition_e(Provider),
    required_condition_f(Provider).

required_condition_a(Provider) :-
    provider(Provider),
    provider(Provider).

required_condition_b(Provider) :-
    provider(Provider),
    provider(Provider).

required_condition_c(Provider) :-
    provider(Provider),
    provider(Provider).

required_condition_d(Provider) :-
    provider(Provider),
    provider(Provider).

required_condition_e(Provider) :-
    provider(Provider),
    provider(Provider).

required_condition_f(Provider) :-
    provider(Provider),
    provider(Provider).

provenance(permitted_processing_special_categories/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_a/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_b/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_c/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_d/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_e/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_f/1, 'celex:32024R1689/oj#art_10').

% --- References -------------------------------------------------------
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
