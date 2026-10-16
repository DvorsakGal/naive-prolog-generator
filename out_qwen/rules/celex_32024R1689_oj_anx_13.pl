% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f73b385618dbf3a7642fb0bb988b7b643dbe75c1f7ae95cd07fb549b37e4c66b
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred designation_criterion_applies/1, gloss('criterion relevant for designating general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_13').
:- pred must_take_into_account_designation_criteria/2, gloss('Commission obligation to consider criteria when determining systemic risk'), source('celex:32024R1689/oj#anx_13').
:- pred has_systemic_risk_equivalence/1, gloss('general-purpose AI model has capabilities or impact equivalent to high-impact thresholds'), source('celex:32024R1689/oj#anx_13').

must_take_into_account_designation_criteria(commission, M) :-
    general_purpose_ai_model(M),
    has_systemic_risk_equivalence(M).

has_systemic_risk_equivalence(M) :-
    general_purpose_ai_model(M),
    designation_criterion_applies(C),
    satisfies_criterion(M, C).

designation_criterion_applies(number_of_parameters).
designation_criterion_applies(dataset_quality_or_size).
designation_criterion_applies(training_computation_amount).
designation_criterion_applies(input_output_modalities).
designation_criterion_applies(capability_benchmarks_and_evaluations).
designation_criterion_applies(internal_market_impact).
designation_criterion_applies(number_of_registered_end_users).

satisfies_criterion(M, number_of_parameters) :-
    general_purpose_ai_model(M),
    parameter_count(M, _Count).

satisfies_criterion(M, dataset_quality_or_size) :-
    general_purpose_ai_model(M),
    dataset_measure(M, _Measure).

satisfies_criterion(M, training_computation_amount) :-
    general_purpose_ai_model(M),
    training_computation(M, _Amount).

satisfies_criterion(M, input_output_modalities) :-
    general_purpose_ai_model(M),
    modality_profile(M, _Profile).

satisfies_criterion(M, capability_benchmarks_and_evaluations) :-
    general_purpose_ai_model(M),
    capability_evaluation(M, _Evaluation).

satisfies_criterion(M, internal_market_impact) :-
    general_purpose_ai_model(M),
    high_internal_market_impact(M).

satisfies_criterion(M, number_of_registered_end_users) :-
    general_purpose_ai_model(M),
    registered_end_user_count(M, _Count).

high_internal_market_impact(M) :-
    general_purpose_ai_model(M),
    made_available_to_business_users(M, N),
    N >= 10000.

provenance(designation_criterion_applies/1, 'celex:32024R1689/oj#anx_13').
provenance(must_take_into_account_designation_criteria/2, 'celex:32024R1689/oj#anx_13').
provenance(has_systemic_risk_equivalence/1, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
