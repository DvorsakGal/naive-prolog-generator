% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b7098a205ce59152b357708c842a5fa25bc7b9dce2e24a39a44fb1f85daf0ff2
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred model_parameter_count/2, gloss('number of parameters of the model'), source('celex:32024R1689/oj#anx_13').
:- pred data_set_quality_or_size/2, gloss('quality or size of the data set'), source('celex:32024R1689/oj#anx_13').
:- pred training_computation_amount/2, gloss('amount of computation used for training'), source('celex:32024R1689/oj#anx_13').
:- pred input_output_modalities/2, gloss('input and output modalities of the model'), source('celex:32024R1689/oj#anx_13').
:- pred model_benchmarks_and_evaluations/2, gloss('benchmarks and evaluations of capabilities'), source('celex:32024R1689/oj#anx_13').
:- pred high_internal_market_impact/1, gloss('high impact on the internal market due to reach'), source('celex:32024R1689/oj#anx_13').
:- pred registered_end_user_count/2, gloss('number of registered end-users'), source('celex:32024R1689/oj#anx_13').

must_take_into_account(Commission, criteria(Model)) :-
    general_purpose_ai_model(Model),
    model_parameter_count(Model, _),
    data_set_quality_or_size(Model, _),
    training_computation_amount(Model, _),
    input_output_modalities(Model, _),
    model_benchmarks_and_evaluations(Model, _),
    high_internal_market_impact(Model),
    registered_end_user_count(Model, _).

high_internal_market_impact(Model) :-
    general_purpose_ai_model(Model),
    made_available_to_business_users(Model, Users),
    Users >= 10000,
    established_in_union(Users).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').
provenance(high_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
