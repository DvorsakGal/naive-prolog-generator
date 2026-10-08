% unit       : celex:32024R1689/oj#art_15
% title      : Accuracy, robustness and cybersecurity
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : gpt-oss:120b-cloud
% prompt sha : 5cc122abab7d2f7912ffd10603a2e258d6b6db1f32f131bd6fe073528723782a
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_15').
:- pred required_design_and_development/1, gloss('design and development must achieve required accuracy, robustness and cybersecurity'), source('celex:32024R1689/oj#art_15').
:- pred required_accuracy/1, gloss('appropriate level of accuracy must be achieved'), source('celex:32024R1689/oj#art_15').
:- pred required_robustness/1, gloss('appropriate level of robustness must be achieved'), source('celex:32024R1689/oj#art_15').
:- pred required_cybersecurity/1, gloss('appropriate level of cybersecurity must be achieved'), source('celex:32024R1689/oj#art_15').
:- pred required_consistent_performance/1, gloss('performance must be consistent throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred required_declaration_of_accuracy_metrics/1, gloss('accuracy metrics must be declared in instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred declares_accuracy_metrics/2, gloss('instructions of use declare accuracy metrics for AI system'), source('celex:32024R1689/oj#art_15').
:- pred required_resilience_measures/1, gloss('technical and organisational measures for resilience must be taken'), source('celex:32024R1689/oj#art_15').
:- pred technical_and_organisational_measures_taken/1, gloss('technical and organisational resilience measures are taken'), source('celex:32024R1689/oj#art_15').
:- pred required_redundancy_solution/1, gloss('technical redundancy solutions may be used'), source('celex:32024R1689/oj#art_15').
:- pred redundancy_solution/1, gloss('redundancy solution such as backup or fail‑safe plan is implemented'), source('celex:32024R1689/oj#art_15').
:- pred required_feedback_loop_mitigation/1, gloss('feedback‑loop risk must be eliminated or reduced and mitigated'), source('celex:32024R1689/oj#art_15').
:- pred learns_after_market_placement/1, gloss('AI system continues to learn after market placement or putting into service'), source('celex:32024R1689/oj#art_15').
:- pred mitigation_measures_for_feedback_loops/1, gloss('mitigation measures for feedback loops are applied'), source('celex:32024R1689/oj#art_15').
:- pred required_cybersecurity_measures/1, gloss('cybersecurity measures must be appropriate to circumstances and risks'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_cybersecurity_measures/1, gloss('cybersecurity measures are appropriate to the relevant circumstances and risks'), source('celex:32024R1689/oj#art_15').
:- pred required_protection_against_unauthorised_alteration/1, gloss('system must be resilient against unauthorised alteration attempts'), source('celex:32024R1689/oj#art_15').
:- pred protection_against_unauthorised_alteration/1, gloss('protection against unauthorised third‑party alteration is in place'), source('celex:32024R1689/oj#art_15').
:- pred required_mitigation_of_ai_vulnerabilities/1, gloss('measures to prevent, detect, respond to, resolve and control AI‑specific attacks must be taken'), source('celex:32024R1689/oj#art_15').
:- pred ai_vulnerability_measures/1, gloss('measures against data poisoning, model poisoning, adversarial examples, confidentiality attacks and model flaws are implemented'), source('celex:32024R1689/oj#art_15').

required_design_and_development(S) :-
    high_risk_ai_system(S),
    required_accuracy(S),
    required_robustness(S),
    required_cybersecurity(S),
    required_consistent_performance(S).

required_accuracy(S) :-
    high_risk_ai_system(S).

required_robustness(S) :-
    high_risk_ai_system(S).

required_cybersecurity(S) :-
    high_risk_ai_system(S).

required_consistent_performance(S) :-
    high_risk_ai_system(S).

required_declaration_of_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    declares_accuracy_metrics(I, S).

declares_accuracy_metrics(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S).

required_resilience_measures(S) :-
    high_risk_ai_system(S),
    technical_and_organisational_measures_taken(S).

technical_and_organisational_measures_taken(S) :-
    high_risk_ai_system(S).

required_redundancy_solution(S) :-
    high_risk_ai_system(S),
    redundancy_solution(S).

redundancy_solution(S) :-
    high_risk_ai_system(S).

required_feedback_loop_mitigation(S) :-
    high_risk_ai_system(S),
    learns_after_market_placement(S),
    mitigation_measures_for_feedback_loops(S).

learns_after_market_placement(S) :-
    high_risk_ai_system(S).

mitigation_measures_for_feedback_loops(S) :-
    high_risk_ai_system(S).

required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_measures(S).

appropriate_cybersecurity_measures(S) :-
    high_risk_ai_system(S).

required_protection_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    protection_against_unauthorised_alteration(S).

protection_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).

required_mitigation_of_ai_vulnerabilities(S) :-
    high_risk_ai_system(S),
    ai_vulnerability_measures(S).

ai_vulnerability_measures(S) :-
    high_risk_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_15').
provenance(required_design_and_development/1, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(required_consistent_performance/1, 'celex:32024R1689/oj#art_15').
provenance(required_declaration_of_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').
provenance(declares_accuracy_metrics/2, 'celex:32024R1689/oj#art_15').
provenance(required_resilience_measures/1, 'celex:32024R1689/oj#art_15').
provenance(technical_and_organisational_measures_taken/1, 'celex:32024R1689/oj#art_15').
provenance(required_redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(required_feedback_loop_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(learns_after_market_placement/1, 'celex:32024R1689/oj#art_15').
provenance(mitigation_measures_for_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(required_protection_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(protection_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(required_mitigation_of_ai_vulnerabilities/1, 'celex:32024R1689/oj#art_15').
provenance(ai_vulnerability_measures/1, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
