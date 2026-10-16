% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 80ab95783ed5063c126d77fa3fe14a609f63ae6154fd2a483428d97aab921186
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred criterion_for_systemic_risk_designation/2, gloss('criterion the Commission takes into account for designating a general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#anx_13').
:- pred number_of_parameters/1, gloss('number of parameters of the model'), source('celex:32024R1689/oj#anx_13').
:- pred quality_or_size_of_data_set/1, gloss('quality or size of the data set, for example measured through tokens'), source('celex:32024R1689/oj#anx_13').
:- pred amount_of_computation_for_training/1, gloss('amount of computation used for training the model, measured in floating point operations or indicated by other variables'), source('celex:32024R1689/oj#anx_13').
:- pred input_output_modalities/1, gloss('input and output modalities of the model and state of the art thresholds for high-impact capabilities'), source('celex:32024R1689/oj#anx_13').
:- pred benchmarks_and_evaluations_of_capabilities/1, gloss('benchmarks and evaluations of capabilities of the model including tasks without additional training, adaptability, autonomy, scalability, and tools access'), source('celex:32024R1689/oj#anx_13').
:- pred high_impact_on_internal_market_due_to_reach/1, gloss('high impact on the internal market due to reach, presumed when made available to at least 10000 registered business users established in the Union'), source('celex:32024R1689/oj#anx_13').
:- pred number_of_registered_end_users/1, gloss('number of registered end-users'), source('celex:32024R1689/oj#anx_13').
:- pred made_available_to_registered_business_users/2, gloss('model made available to a number of registered business users established in the Union'), source('celex:32024R1689/oj#anx_13').
:- pred registered_business_user_established_in_union/1, gloss('registered business user established in the Union'), source('celex:32024R1689/oj#anx_13').

criterion_for_systemic_risk_designation(M, number_of_parameters) :-
    general_purpose_ai_model(M).

criterion_for_systemic_risk_designation(M, quality_or_size_of_data_set) :-
    general_purpose_ai_model(M).

criterion_for_systemic_risk_designation(M, amount_of_computation_for_training) :-
    general_purpose_ai_model(M).

criterion_for_systemic_risk_designation(M, input_output_modalities) :-
    general_purpose_ai_model(M).

criterion_for_systemic_risk_designation(M, benchmarks_and_evaluations_of_capabilities) :-
    general_purpose_ai_model(M).

criterion_for_systemic_risk_designation(M, high_impact_on_internal_market_due_to_reach) :-
    general_purpose_ai_model(M).

criterion_for_systemic_risk_designation(M, number_of_registered_end_users) :-
    general_purpose_ai_model(M).

number_of_parameters(M) :-
    general_purpose_ai_model(M).

quality_or_size_of_data_set(M) :-
    general_purpose_ai_model(M).

amount_of_computation_for_training(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(M).

input_output_modalities(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).

benchmarks_and_evaluations_of_capabilities(M) :-
    general_purpose_ai_model(M).

high_impact_on_internal_market_due_to_reach(M) :-
    general_purpose_ai_model(M),
    made_available_to_registered_business_users(M, N),
    N >= 10000.

made_available_to_registered_business_users(M, N) :-
    general_purpose_ai_model(M),
    registered_business_user_established_in_union(_U),
    aggregate_business_users(M, N).

number_of_registered_end_users(M) :-
    general_purpose_ai_model(M).

provenance(criterion_for_systemic_risk_designation/2, 'celex:32024R1689/oj#anx_13').
provenance(number_of_parameters/1, 'celex:32024R1689/oj#anx_13').
provenance(quality_or_size_of_data_set/1, 'celex:32024R1689/oj#anx_13').
provenance(amount_of_computation_for_training/1, 'celex:32024R1689/oj#anx_13').
provenance(input_output_modalities/1, 'celex:32024R1689/oj#anx_13').
provenance(benchmarks_and_evaluations_of_capabilities/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market_due_to_reach/1, 'celex:32024R1689/oj#anx_13').
provenance(number_of_registered_end_users/1, 'celex:32024R1689/oj#anx_13').
provenance(made_available_to_registered_business_users/2, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_user_established_in_union/1, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
