% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3910f696d196b901c4d7737f93af0655bb3779a2c663892f342e8c64815db006
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred must_consider(Actor, Object), gloss('Actor is obliged to take into account Object'), source('celex:32024R1689/oj#anx_13').
:- pred criteria_for_designation_systemic_risk(Criterion), gloss('Criterion taken into account when designating general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_13').
:- pred presumed_high_impact_on_internal_market(Model), gloss('Model presumed to have high impact on the internal market due to reach'), source('celex:32024R1689/oj#anx_13').
:- pred registered_business_users_in_union(Model, Count), gloss('Number of registered business users established in the Union for the model'), source('celex:32024R1689/oj#anx_13').

% Duty of the Commission when determining equivalent capabilities or impact
must_consider(commission, criteria_for_designation_systemic_risk(Model)) :-
    general_purpose_ai_model(Model).

% Specific criteria enumerated in Annex XIII
criteria_for_designation_systemic_risk(number_of_parameters).
criteria_for_designation_systemic_risk(quality_or_size_of_dataset).
criteria_for_designation_systemic_risk(amount_of_computation_used_for_training).
criteria_for_designation_systemic_risk(input_and_output_modalities).
criteria_for_designation_systemic_risk(benchmarks_and_evaluations_of_capabilities).
criteria_for_designation_systemic_risk(high_impact_on_internal_market_due_to_reach).
criteria_for_designation_systemic_risk(number_of_registered_end_users).

% Presumption under point (f)
presumed_high_impact_on_internal_market(Model) :-
    general_purpose_ai_model(Model),
    registered_business_users_in_union(Model, Count),
    Count >= 10000.

provenance(must_consider/2, 'celex:32024R1689/oj#anx_13').
provenance(criteria_for_designation_systemic_risk/1, 'celex:32024R1689/oj#anx_13').
provenance(presumed_high_impact_on_internal_market/1, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
