% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 7db3dffb4c84b6700bc2439b3f65a4c58f6b56fc69ab500d660a4d525e6afa5d
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred systemic_risk_criterion/1, gloss('criterion for designation of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_13').
:- pred model_parameter_count/1, gloss('number of parameters of the model'), source('celex:32024R1689/oj#anx_13').
:- pred dataset_quality_or_size/1, gloss('quality or size of the data set measured through tokens or similar'), source('celex:32024R1689/oj#anx_13').
:- pred training_computation_amount/1, gloss('amount of computation used for training measured in floating point operations or proxy variables'), source('celex:32024R1689/oj#anx_13').
:- pred input_output_modality/1, gloss('input and output modalities of the model including state of the art thresholds'), source('celex:32024R1689/oj#anx_13').
:- pred capability_benchmark_evaluation/1, gloss('benchmarks and evaluations of model capabilities including autonomy and scalability'), source('celex:32024R1689/oj#anx_13').
:- pred high_internal_market_impact/1, gloss('high impact on the internal market due to reach'), source('celex:32024R1689/oj#anx_13').
:- pred registered_business_user_count/1, gloss('number of registered business users established in the Union'), source('celex:32024R1689/oj#anx_13').
:- pred registered_end_user_count/1, gloss('number of registered end-users'), source('celex:32024R1689/oj#anx_13').
:- pred presumed_high_internal_market_impact/1, gloss('presumption of high impact based on business user threshold'), source('celex:32024R1689/oj#anx_13').

systemic_risk_criterion(model_parameter_count).
systemic_risk_criterion(dataset_quality_or_size).
systemic_risk_criterion(training_computation_amount).
systemic_risk_criterion(input_output_modality).
systemic_risk_criterion(capability_benchmark_evaluation).
systemic_risk_criterion(high_internal_market_impact).
systemic_risk_criterion(registered_end_user_count).

presumed_high_internal_market_impact(M) :-
    general_purpose_ai_model(M),
    registered_business_user_count(M),
    made_available_to_business_users(M, Count),
    Count >= 10000.

provenance(systemic_risk_criterion/1, 'celex:32024R1689/oj#anx_13').
provenance(model_parameter_count/1, 'celex:32024R1689/oj#anx_13').
provenance(dataset_quality_or_size/1, 'celex:32024R1689/oj#anx_13').
provenance(training_computation_amount/1, 'celex:32024R1689/oj#anx_13').
provenance(input_output_modality/1, 'celex:32024R1689/oj#anx_13').
provenance(capability_benchmark_evaluation/1, 'celex:32024R1689/oj#anx_13').
provenance(high_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_user_count/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_end_user_count/1, 'celex:32024R1689/oj#anx_13').
provenance(presumed_high_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
