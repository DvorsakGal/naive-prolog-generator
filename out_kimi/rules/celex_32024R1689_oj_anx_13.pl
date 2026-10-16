% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c9f167899e8f54d1b3b4d2f9c5a10f7807417b8710b2388d44ba25368b372538
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred criterion_parameters/1, gloss('number of parameters of the model'), source('celex:32024R1689/oj#anx_13').
:- pred criterion_data_set_quality_or_size/1, gloss('quality or size of the data set'), source('celex:32024R1689/oj#anx_13').
:- pred criterion_training_computation/1, gloss('amount of computation used for training'), source('celex:32024R1689/oj#anx_13').
:- pred criterion_input_output_modalities/1, gloss('input and output modalities of the model'), source('celex:32024R1689/oj#anx_13').
:- pred criterion_benchmarks_evaluations/1, gloss('benchmarks and evaluations of capabilities'), source('celex:32024R1689/oj#anx_13').
:- pred criterion_internal_market_impact/1, gloss('high impact on the internal market due to reach'), source('celex:32024R1689/oj#anx_13').
:- pred criterion_end_users/1, gloss('number of registered end-users'), source('celex:32024R1689/oj#anx_13').
:- pred high_impact_on_internal_market_presumed/1, gloss('presumed high impact on internal market'), source('celex:32024R1689/oj#anx_13').
:- pred registered_business_user/2, gloss('registered business user established in location'), source('celex:32024R1689/oj#anx_13').
:- pred established_in_union/1, gloss('established in the Union'), source('celex:32024R1689/oj#anx_13').
:- pred made_available_to/2, gloss('model made available to user'), source('celex:32024R1689/oj#anx_13').
:- pred at_least/2, gloss('quantity at least threshold'), source('celex:32024R1689/oj#anx_13').

systemic_risk_designation_criterion(M, parameters) :-
    general_purpose_ai_model(M),
    criterion_parameters(M).

systemic_risk_designation_criterion(M, data_set_quality_or_size) :-
    general_purpose_ai_model(M),
    criterion_data_set_quality_or_size(M).

systemic_risk_designation_criterion(M, training_computation) :-
    general_purpose_ai_model(M),
    criterion_training_computation(M).

systemic_risk_designation_criterion(M, input_output_modalities) :-
    general_purpose_ai_model(M),
    criterion_input_output_modalities(M).

systemic_risk_designation_criterion(M, benchmarks_evaluations) :-
    general_purpose_ai_model(M),
    criterion_benchmarks_evaluations(M).

systemic_risk_designation_criterion(M, internal_market_impact) :-
    general_purpose_ai_model(M),
    criterion_internal_market_impact(M).

systemic_risk_designation_criterion(M, end_users) :-
    general_purpose_ai_model(M),
    criterion_end_users(M).

criterion_internal_market_impact(M) :-
    high_impact_on_internal_market_presumed(M).

high_impact_on_internal_market_presumed(M) :-
    general_purpose_ai_model(M),
    made_available_to(M, U),
    registered_business_user(U, _),
    established_in_union(U),
    at_least(count_users(M, business, union), 10000).

must_take_into_account(commission, systemic_risk_designation_criterion(M, C)) :-
    general_purpose_ai_model(M),
    systemic_risk_designation_criterion(M, C),
    for_determining_equivalent_capabilities_or_impact(M).

for_determining_equivalent_capabilities_or_impact(M) :-
    general_purpose_ai_model(M).

provenance(criterion_parameters/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_data_set_quality_or_size/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_training_computation/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_input_output_modalities/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_benchmarks_evaluations/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_end_users/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market_presumed/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_user/2, 'celex:32024R1689/oj#anx_13').
provenance(established_in_union/1, 'celex:32024R1689/oj#anx_13').
provenance(made_available_to/2, 'celex:32024R1689/oj#anx_13').
provenance(at_least/2, 'celex:32024R1689/oj#anx_13').
provenance(systemic_risk_designation_criterion/2, 'celex:32024R1689/oj#anx_13').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').
provenance(for_determining_equivalent_capabilities_or_impact/1, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
