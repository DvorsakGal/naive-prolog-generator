% unit       : celex:32024R1689/oj#anx_13
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : gpt-oss:120b-cloud
% prompt sha : 4092dfce4e8725d33ce3e6e9bda477e323b13d58f7d3576109b1966111f2057e
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred criteria_number_of_parameters/1, gloss('the number of parameters of the model'), source('celex:32024R1689/oj#anx_13').
criteria_number_of_parameters(M) :-
    general_purpose_ai_model(M).

:- pred criteria_quality_of_data_set/1, gloss('the quality or size of the data set used for the model'), source('celex:32024R1689/oj#anx_13').
criteria_quality_of_data_set(M) :-
    general_purpose_ai_model(M).

:- pred criteria_amount_of_computation/1, gloss('the amount of computation used for training the model'), source('celex:32024R1689/oj#anx_13').
criteria_amount_of_computation(M) :-
    general_purpose_ai_model(M).

:- pred criteria_input_output_modalities/1, gloss('the input and output modalities of the model'), source('celex:32024R1689/oj#anx_13').
criteria_input_output_modalities(M) :-
    general_purpose_ai_model(M).

:- pred criteria_benchmarks_and_evaluations/1, gloss('the benchmarks and evaluations of the model\'s capabilities'), source('celex:32024R1689/oj#anx_13').
criteria_benchmarks_and_evaluations(M) :-
    general_purpose_ai_model(M).

:- pred criteria_high_impact_on_market/1, gloss('whether the model has a high impact on the internal market'), source('celex:32024R1689/oj#anx_13').
criteria_high_impact_on_market(M) :-
    general_purpose_ai_model(M).

:- pred criteria_number_of_registered_end_users/1, gloss('the number of registered end‑users of the model'), source('celex:32024R1689/oj#anx_13').
criteria_number_of_registered_end_users(M) :-
    general_purpose_ai_model(M).

:- pred must_take_into_account/2, gloss('the Commission shall take into account the specified criteria when designating a general‑purpose AI model with systemic risk'), source('celex:32024R1689/oj#anx_13').
must_take_into_account(commission, M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    criteria_number_of_parameters(M),
    criteria_quality_of_data_set(M),
    criteria_amount_of_computation(M),
    criteria_input_output_modalities(M),
    criteria_benchmarks_and_evaluations(M),
    criteria_high_impact_on_market(M),
    criteria_number_of_registered_end_users(M).

provenance(criteria_number_of_parameters/1, 'celex:32024R1689/oj#anx_13').
provenance(criteria_quality_of_data_set/1, 'celex:32024R1689/oj#anx_13').
provenance(criteria_amount_of_computation/1, 'celex:32024R1689/oj#anx_13').
provenance(criteria_input_output_modalities/1, 'celex:32024R1689/oj#anx_13').
provenance(criteria_benchmarks_and_evaluations/1, 'celex:32024R1689/oj#anx_13').
provenance(criteria_high_impact_on_market/1, 'celex:32024R1689/oj#anx_13').
provenance(criteria_number_of_registered_end_users/1, 'celex:32024R1689/oj#anx_13').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
