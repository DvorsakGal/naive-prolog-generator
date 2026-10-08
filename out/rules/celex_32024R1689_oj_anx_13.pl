% unit       : celex:32024R1689/oj#anx_13
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : gpt-oss:120b-cloud
% prompt sha : 587ea93e5a48011783fe5bb453758bc3e537b9aa738043fc0afb8abfec9c297d
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#anx_13').
:- pred parameters_number_applies/1, gloss('criterion concerning the number of parameters of a model'), source('celex:32024R1689/oj#anx_13').
:- pred dataset_quality_applies/1, gloss('criterion concerning the quality or size of the data set used for a model'), source('celex:32024R1689/oj#anx_13').
:- pred computation_amount_applies/1, gloss('criterion concerning the amount of computation used for training a model'), source('celex:32024R1689/oj#anx_13').
:- pred modalities_applies/1, gloss('criterion concerning the input and output modalities of a model'), source('celex:32024R1689/oj#anx_13').
:- pred benchmarks_applies/1, gloss('criterion concerning the benchmarks and evaluations of a model''s capabilities'), source('celex:32024R1689/oj#anx_13').
:- pred market_impact_applies/1, gloss('criterion concerning the model''s impact on the internal market'), source('celex:32024R1689/oj#anx_13').
:- pred registered_end_users_applies/1, gloss('criterion concerning the number of registered end‑users of a model'), source('celex:32024R1689/oj#anx_13').

must_take_into_account(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    parameters_number_applies(Model),
    dataset_quality_applies(Model),
    computation_amount_applies(Model),
    modalities_applies(Model),
    benchmarks_applies(Model),
    market_impact_applies(Model),
    registered_end_users_applies(Model).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
