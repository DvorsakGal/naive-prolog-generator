% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : f182bc36d3b999b495b459e0097a833e837803607d24f55963cd885ae36bbce1
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred criteria_for_systemic_risk_designation/1, gloss('criteria the Commission must take into account for designating general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_13').
:- pred parameter_count/1, gloss('number of parameters of the model'), source('celex:32024R1689/oj#anx_13').
:- pred dataset_quality_or_size/1, gloss('quality or size of the data set measured through tokens'), source('celex:32024R1689/oj#anx_13').
:- pred training_computation/1, gloss('amount of computation used for training the model'), source('celex:32024R1689/oj#anx_13').
:- pred input_output_modality_of_model/1, gloss('input and output modalities of the model'), source('celex:32024R1689/oj#anx_13').
:- pred capability_benchmarks/1, gloss('benchmarks and evaluations of capabilities of the model'), source('celex:32024R1689/oj#anx_13').
:- pred high_impact_on_internal_market/1, gloss('high impact on the internal market due to reach'), source('celex:32024R1689/oj#anx_13').
:- pred registered_business_users/2, gloss('number of registered business users established in the Union'), source('celex:32024R1689/oj#anx_13').
:- pred registered_end_users/1, gloss('number of registered end-users'), source('celex:32024R1689/oj#anx_13').
:- pred must_take_into_account_criteria/2, gloss('Commission shall take into account criteria for designation'), source('celex:32024R1689/oj#anx_13').

must_take_into_account_criteria(commission, criteria_for_systemic_risk_designation(M)) :-
    general_purpose_ai_model(M).

criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    parameter_count(M).

criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    dataset_quality_or_size(M).

criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    training_computation(M).

criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    input_output_modality_of_model(M).

criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    capability_benchmarks(M).

criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    high_impact_on_internal_market(M).

criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    registered_end_users(M).

training_computation(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(M).

training_computation(M) :-
    general_purpose_ai_model(M),
    estimated_cost_of_training(M).

training_computation(M) :-
    general_purpose_ai_model(M),
    estimated_time_for_training(M).

training_computation(M) :-
    general_purpose_ai_model(M),
    energy_consumption(M).

high_impact_on_internal_market(M) :-
    general_purpose_ai_model(M),
    registered_business_users(M, Count),
    Count >= 10000,
    established_in_union(_User).

provenance(criteria_for_systemic_risk_designation/1, 'celex:32024R1689/oj#anx_13').
provenance(parameter_count/1, 'celex:32024R1689/oj#anx_13').
provenance(dataset_quality_or_size/1, 'celex:32024R1689/oj#anx_13').
provenance(training_computation/1, 'celex:32024R1689/oj#anx_13').
provenance(input_output_modality_of_model/1, 'celex:32024R1689/oj#anx_13').
provenance(capability_benchmarks/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_users/2, 'celex:32024R1689/oj#anx_13').
provenance(registered_end_users/1, 'celex:32024R1689/oj#anx_13').
provenance(must_take_into_account_criteria/2, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
