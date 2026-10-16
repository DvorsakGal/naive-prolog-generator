% unit       : celex:32024R1689/oj#anx_13
% context    : ANNEXES
% slice sha  : 6cf1716ef4d78b7c84c8d2184ff13ff1b22bed596fbe2491d44d532d913879cf
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 64253931ae7703db4589725288dcddd9633eb836a265a6cb0217b727c8d7e847
% cached     : False
% title      : Criteria for the designation of general-purpose AI models with systemic risk referred to in <ref id="celex:32024R1689/oj#art_51"/> For the purpose of determining that a general-purpose AI model has capabilities or an impact equivalent to those set out in <ref id="celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a"/>, the Commission shall take into account the following criteria:
:- pred systemic_risk_designation_criteria/1, gloss('criteria for designating general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_13').

systemic_risk_designation_criteria(criterion(parameters, number_of_parameters)).
systemic_risk_designation_criteria(criterion(data_set, quality_or_size)).
systemic_risk_designation_criteria(criterion(computation, amount_used_for_training)).
systemic_risk_designation_criteria(criterion(modalities, input_and_output)).
systemic_risk_designation_criteria(criterion(capabilities, benchmarks_and_evaluations)).
systemic_risk_designation_criteria(criterion(internal_market_impact, high_impact_due_to_reach)).
systemic_risk_designation_criteria(criterion(end_users, number_of_registered_end_users)).

provenance(systemic_risk_designation_criteria/1, 'celex:32024R1689/oj#anx_13').

references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
