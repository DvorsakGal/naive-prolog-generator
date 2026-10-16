% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 327874409060a707e7f3c8e268e74c1e1593f326c3abe416a7dd5a0d0174efc1
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred criterion_for_systemic_risk_designation/2, gloss('criterion that the Commission must take into account for designating a general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#anx_13').
:- pred presumed_high_impact_on_internal_market/1, gloss('model is presumed to have high impact on the internal market due to reach'), source('celex:32024R1689/oj#anx_13').
:- pred business_users_in_union/2, gloss('number of registered business users established in the Union to which the model has been made available'), source('celex:32024R1689/oj#anx_13').
:- pred registered_end_users/2, gloss('number of registered end-users of the model'), source('celex:32024R1689/oj#anx_13').
:- pred parameters_count/2, gloss('number of parameters of the general-purpose AI model'), source('celex:32024R1689/oj#anx_13').
:- pred dataset_quality_or_size/2, gloss('quality or size of the data set of the model, e.g. tokens'), source('celex:32024R1689/oj#anx_13').
:- pred training_computation/2, gloss('amount of computation used for training the model'), source('celex:32024R1689/oj#anx_13').
:- pred input_output_modalities/2, gloss('input and output modalities of the model and specific types'), source('celex:32024R1689/oj#anx_13').
:- pred capability_benchmarks_and_evaluations/2, gloss('benchmarks and evaluations of capabilities of the model'), source('celex:32024R1689/oj#anx_13').
:- pred reach_impact_on_internal_market/2, gloss('impact on the internal market due to reach of the model'), source('celex:32024R1689/oj#anx_13').
:- pred must_consider/2, gloss('actor must take into account an object/criterion'), source('celex:32024R1689/oj#anx_13').

% Annex XIII introductory provision: criteria for designation
must_consider(Commission, criterion_for_systemic_risk_designation(Model, Criterion)) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    criterion_for_systemic_risk_designation(Model, Criterion).

% (a) the number of parameters of the model
criterion_for_systemic_risk_designation(Model, number_of_parameters(N)) :-
    parameters_count(Model, N).

% (b) the quality or size of the data set
criterion_for_systemic_risk_designation(Model, dataset_quality_or_size(D)) :-
    dataset_quality_or_size(Model, D).

% (c) the amount of computation used for training the model
criterion_for_systemic_risk_designation(Model, computation_used_for_training(C)) :-
    training_computation(Model, C).

% (d) the input and output modalities of the model
criterion_for_systemic_risk_designation(Model, input_output_modalities(M)) :-
    input_output_modalities(Model, M).

% (e) the benchmarks and evaluations of capabilities of the model
criterion_for_systemic_risk_designation(Model, benchmarks_and_evaluations(B)) :-
    capability_benchmarks_and_evaluations(Model, B).

% (f) whether it has a high impact on the internal market due to its reach
criterion_for_systemic_risk_designation(Model, high_impact_on_internal_market(I)) :-
    reach_impact_on_internal_market(Model, I).

% (f) presumption of high impact when made available to at least 10000 registered business users established in the Union
presumed_high_impact_on_internal_market(Model) :-
    general_purpose_ai_model(Model),
    business_users_in_union(Model, Count),
    Count >= 10000.

reach_impact_on_internal_market(Model, presumed_high_impact) :-
    presumed_high_impact_on_internal_market(Model).

% (g) the number of registered end-users
criterion_for_systemic_risk_designation(Model, number_of_registered_end_users(U)) :-
    registered_end_users(Model, U).

% Provenance
provenance(criterion_for_systemic_risk_designation/2, 'celex:32024R1689/oj#anx_13').
provenance(presumed_high_impact_on_internal_market/1, 'celex:32024R1689/oj#anx_13').
provenance(reach_impact_on_internal_market/2, 'celex:32024R1689/oj#anx_13').
provenance(must_consider/2, 'celex:32024R1689/oj#anx_13').

% Ground-truth cross references
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
