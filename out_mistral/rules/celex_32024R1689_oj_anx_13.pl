% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 412c049008e22b70543d4bdbc2be14af8401e82ddffef0b207a1780fb6eefe78
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred commission_criterion/2, gloss('criterion the Commission takes into account for designating systemic risk GPAI models'), source('celex:32024R1689/oj#anx_13').
:- pred systemic_risk_designation_criterion/1, gloss('criterion for determining systemic risk designation of general-purpose AI model'), source('celex:32024R1689/oj#anx_13').

commission_criterion(M, number_of_parameters) :-
    general_purpose_ai_model(M).
commission_criterion(M, quality_or_size_of_data_set) :-
    general_purpose_ai_model(M).
commission_criterion(M, amount_of_computation_used_for_training) :-
    general_purpose_ai_model(M).
commission_criterion(M, input_and_output_modalities) :-
    general_purpose_ai_model(M).
commission_criterion(M, benchmarks_and_evaluations_of_capabilities) :-
    general_purpose_ai_model(M).
commission_criterion(M, high_impact_on_internal_market_due_to_reach) :-
    general_purpose_ai_model(M).
commission_criterion(M, number_of_registered_end_users) :-
    general_purpose_ai_model(M).

systemic_risk_designation_criterion(number_of_parameters).
systemic_risk_designation_criterion(quality_or_size_of_data_set).
systemic_risk_designation_criterion(amount_of_computation_used_for_training).
systemic_risk_designation_criterion(input_and_output_modalities).
systemic_risk_designation_criterion(benchmarks_and_evaluations_of_capabilities).
systemic_risk_designation_criterion(high_impact_on_internal_market_due_to_reach).
systemic_risk_designation_criterion(number_of_registered_end_users).

high_impact_on_internal_market_due_to_reach(M) :-
    general_purpose_ai_model(M),
    made_available_to_business_users(M, Count),
    Count >= 10000,
    business_users_established_in_union.

made_available_to_business_users(M, Count) :-
    general_purpose_ai_model(M),
    registered_business_users(M, Count).

amount_of_computation_used_for_training(M, floating_point_operations(N)) :-
    general_purpose_ai_model(M),
    floating_point_operation(N).

amount_of_computation_used_for_training(M, estimated_cost(C)) :-
    general_purpose_ai_model(M).

amount_of_computation_used_for_training(M, estimated_time(T)) :-
    general_purpose_ai_model(M).

amount_of_computation_used_for_training(M, estimated_energy_consumption(E)) :-
    general_purpose_ai_model(M).

input_and_output_modalities(M, text_to_text) :-
    general_purpose_ai_model(M).
input_and_output_modalities(M, text_to_image) :-
    general_purpose_ai_model(M).
input_and_output_modalities(M, multi_modality) :-
    general_purpose_ai_model(M).
input_and_output_modalities(M, biological_sequences) :-
    general_purpose_ai_model(M).

benchmarks_and_evaluations_of_capabilities(M, number_of_tasks_without_additional_training) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, adaptability_to_learn_new_distinct_tasks) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, level_of_autonomy) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, scalability) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, tools_access) :-
    general_purpose_ai_model(M).

provenance(commission_criterion/2, 'celex:32024R1689/oj#anx_13').
provenance(systemic_risk_designation_criterion/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market_due_to_reach/1, 'celex:32024R1689/oj#anx_13').
provenance(made_available_to_business_users/2, 'celex:32024R1689/oj#anx_13').
provenance(amount_of_computation_used_for_training/2, 'celex:32024R1689/oj#anx_13').
provenance(input_and_output_modalities/2, 'celex:32024R1689/oj#anx_13').
provenance(benchmarks_and_evaluations_of_capabilities/2, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
