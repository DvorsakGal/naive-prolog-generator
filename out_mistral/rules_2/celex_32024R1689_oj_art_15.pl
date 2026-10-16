% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 625e74ab4281f47e6257bb8e27aaf2d129ffebdecc26e8d711021da2e4d75db5
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred required_accuracy_robustness_cybersecurity/1, gloss('high-risk AI system designed and developed to achieve appropriate level of accuracy, robustness and cybersecurity throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred required_declaration_of_accuracy_metrics/1, gloss('levels of accuracy and relevant accuracy metrics declared in accompanying instructions of use'), source('celex:32024R1689/oj#art_15').
:- pred required_resilience_against_errors_faults_inconsistencies/1, gloss('high-risk AI system resilient as possible regarding errors, faults or inconsistencies within system or environment'), source('celex:32024R1689/oj#art_15').
:- pred required_feedback_loop_mitigation/1, gloss('high-risk AI system that continues to learn after placing on market or putting into service developed to eliminate or reduce risk of biased outputs influencing future operations and ensure feedback loops duly addressed'), source('celex:32024R1689/oj#art_15').
:- pred required_cybersecurity_technical_solutions/1, gloss('technical solutions aiming to ensure cybersecurity of high-risk AI system appropriate to relevant circumstances and risks'), source('celex:32024R1689/oj#art_15').
:- pred required_ai_specific_vulnerability_measures/1, gloss('technical solutions to address AI specific vulnerabilities include measures to prevent, detect, respond to, resolve and control for attacks'), source('celex:32024R1689/oj#art_15').

required_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S),
    appropriate_level(S, accuracy),
    appropriate_level(S, robustness),
    appropriate_level(S, cybersecurity),
    consistent_performance_throughout_lifecycle(S).

must_encourage_development(ai_office, benchmarks_and_measurement_methodologies) :-
    cooperation_with_stakeholders,
    cooperation_with_metrology_and_benchmarking_authorities.

required_declaration_of_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    accuracy_levels_declared(S, instructions_for_use(S)),
    relevant_accuracy_metrics_declared(S, instructions_for_use(S)).

required_resilience_against_errors_faults_inconsistencies(S) :-
    high_risk_ai_system(S),
    resilient_as_possible(S, errors_faults_inconsistencies),
    technical_and_organisational_measures_taken(S).

required_feedback_loop_mitigation(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    eliminates_or_reduces_biased_output_risk(S),
    feedback_loops_duly_addressed(S),
    appropriate_mitigation_measures(S).

must_be_resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).

required_cybersecurity_technical_solutions(S) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S),
    appropriate_to_circumstances_and_risks(S).

required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_data_poisoning(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_model_poisoning(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_adversarial_examples(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_model_evasion(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_confidentiality_attacks(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_model_flaws(S).

provenance(required_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(required_declaration_of_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').
provenance(required_resilience_against_errors_faults_inconsistencies/1, 'celex:32024R1689/oj#art_15').
provenance(required_feedback_loop_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_technical_solutions/1, 'celex:32024R1689/oj#art_15').
provenance(required_ai_specific_vulnerability_measures/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_development/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
