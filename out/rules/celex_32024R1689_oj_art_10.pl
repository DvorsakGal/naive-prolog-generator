% unit       : celex:32024R1689/oj#art_10
% title      : Data and data governance
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : gpt-oss:120b-cloud
% prompt sha : ba8af6998dc12975e94b0b4b12edcf0f74a54d82ccbe367cd6e827413aab1163
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_10').
:- pred uses_training_techniques/1, gloss('uses techniques involving the training of AI models with data'), source('celex:32024R1689/oj#art_10').
:- pred required_quality_of_data_sets/1, gloss('training, validation and testing data sets meet the quality criteria'), source('celex:32024R1689/oj#art_10').
:- pred required_data_governance_practice/2, gloss('data governance and management practice for data sets'), source('celex:32024R1689/oj#art_10').
:- pred required_data_characteristic/2, gloss('required characteristic of data sets'), source('celex:32024R1689/oj#art_10').
:- pred required_contextual_consideration/2, gloss('consideration of specific setting characteristics for data sets'), source('celex:32024R1689/oj#art_10').
:- pred permitted_processing_special_categories/2, gloss('provider may process special categories of personal data for bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred bias_detection_not_fulfilled_by_other_data/1, gloss('bias detection cannot be effectively fulfilled by processing other data'), source('celex:32024R1689/oj#art_10').
:- pred technical_limitations_on_reuse/2, gloss('technical limitations on the re‑use of special categories of personal data'), source('celex:32024R1689/oj#art_10').
:- pred security_and_privacy_measures/2, gloss('state‑of‑the‑art security and privacy‑preserving measures for special categories of personal data'), source('celex:32024R1689/oj#art_10').
:- pred access_restriction/2, gloss('special categories of personal data are not to be transmitted, transferred or otherwise accessed by other parties'), source('celex:32024R1689/oj#art_10').
:- pred deletion_after_bias_correction/2, gloss('special categories of personal data are deleted once bias has been corrected or retention period ends'), source('celex:32024R1689/oj#art_10').
:- pred records_of_processing/2, gloss('records of processing activities include reasons for processing special categories of personal data'), source('celex:32024R1689/oj#art_10').

%--- Requirements for data quality when training techniques are used -----------------
required_quality_of_data_sets(S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S),
    validation_data(S),
    testing_data(S).

%--- Data governance and management practices (para 2) -------------------------
required_data_governance_practice(S, design_choices) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_governance_practice(S, data_collection) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_governance_practice(S, data_preparation) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_governance_practice(S, assumption_formulation) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_governance_practice(S, availability_assessment) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_governance_practice(S, bias_examination) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_governance_practice(S, bias_detection_measures) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_governance_practice(S, data_gap_identification) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

%--- Data set characteristics (para 3) -----------------------------------------
required_data_characteristic(S, relevant) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_characteristic(S, representative) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_characteristic(S, error_free) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_characteristic(S, complete) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_data_characteristic(S, appropriate_statistical_properties) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

%--- Contextual considerations (para 4) -----------------------------------------
required_contextual_consideration(S, geographical) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_contextual_consideration(S, contextual) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_contextual_consideration(S, behavioural) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

required_contextual_consideration(S, functional) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).

%--- Permission to process special categories of personal data (para 5) ---------
permitted_processing_special_categories(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    uses_training_techniques(S),
    bias_detection_not_fulfilled_by_other_data(S),
    technical_limitations_on_reuse(P, S),
    security_and_privacy_measures(P, S),
    access_restriction(P, S),
    deletion_after_bias_correction(P, S),
    records_of_processing(P, S).

%--- Quality criteria when training techniques are NOT used (para 6) ------------
required_quality_of_data_sets(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data(S).

%--- Provenance -----------------------------------------------------------------
provenance(required_quality_of_data_sets/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance_practice/2, 'celex:32024R1689/oj#art_10').
provenance(required_data_characteristic/2, 'celex:32024R1689/oj#art_10').
provenance(required_contextual_consideration/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_not_fulfilled_by_other_data/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/2, 'celex:32024R1689/oj#art_10').
provenance(security_and_privacy_measures/2, 'celex:32024R1689/oj#art_10').
provenance(access_restriction/2, 'celex:32024R1689/oj#art_10').
provenance(deletion_after_bias_correction/2, 'celex:32024R1689/oj#art_10').
provenance(records_of_processing/2, 'celex:32024R1689/oj#art_10').

%--- References -----------------------------------------------------------------
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').
