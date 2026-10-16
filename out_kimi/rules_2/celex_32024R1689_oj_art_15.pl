% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : b8d63ea372cc02d185832e0fa606b51bc8ed3c9dec297226a30203af59128888
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred appropriate_level_of_accuracy/1, gloss('appropriate level of accuracy for high-risk AI system'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_level_of_robustness/1, gloss('appropriate level of robustness for high-risk AI system'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_level_of_cybersecurity/1, gloss('appropriate level of cybersecurity for high-risk AI system'), source('celex:32024R1689/oj#art_15').
:- pred consistent_performance/1, gloss('consistent performance throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred declared_accuracy_metrics/1, gloss('accuracy metrics declared in instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred resilient_to_errors/1, gloss('resilient to errors faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred technical_organisational_measures_for_robustness/1, gloss('technical and organisational measures for robustness'), source('celex:32024R1689/oj#art_15').
:- pred technical_redundancy_solutions/1, gloss('technical redundancy solutions for robustness'), source('celex:32024R1689/oj#art_15').
:- pred continues_to_learn_after_placement/1, gloss('continues to learn after being placed on market or put into service'), source('celex:32024R1689/oj#art_15').
:- pred feedback_loop_risk_addressed/1, gloss('feedback loop risk eliminated or reduced'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_mitigation_measures_for_feedback_loops/1, gloss('appropriate mitigation measures for feedback loops'), source('celex:32024R1689/oj#art_15').
:- pred resilient_to_unauthorised_alteration/1, gloss('resilient against unauthorised third party alteration'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_cybersecurity_technical_solutions/1, gloss('appropriate technical solutions for cybersecurity'), source('celex:32024R1689/oj#art_15').
:- pred data_poisoning_prevention/1, gloss('measures against data poisoning'), source('celex:32024R1689/oj#art_15').
:- pred model_poisoning_prevention/1, gloss('measures against model poisoning'), source('celex:32024R1689/oj#art_15').
:- pred adversarial_example_prevention/1, gloss('measures against adversarial examples or model evasion'), source('celex:32024R1689/oj#art_15').
:- pred confidentiality_attack_prevention/1, gloss('measures against confidentiality attacks'), source('celex:32024R1689/oj#art_15').
:- pred model_flaw_prevention/1, gloss('measures against model flaws'), source('celex:32024R1689/oj#art_15').

appropriate_level_of_accuracy(S) :-
    high_risk_ai_system(S).

appropriate_level_of_robustness(S) :-
    high_risk_ai_system(S).

appropriate_level_of_cybersecurity(S) :-
    high_risk_ai_system(S).

consistent_performance(S) :-
    high_risk_ai_system(S).

must_ensure_accuracy_robustness_cybersecurity(_P, S) :-
    high_risk_ai_system(S),
    appropriate_level_of_accuracy(S),
    appropriate_level_of_robustness(S),
    appropriate_level_of_cybersecurity(S),
    consistent_performance(S).

must_encourage_and_facilitate(commission, development_of_benchmarks_and_measurement_methodologies) :-
    appropriate_level_of_accuracy(_S),
    appropriate_level_of_robustness(_S2).

declared_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).

resilient_to_errors(S) :-
    high_risk_ai_system(S).

technical_organisational_measures_for_robustness(S) :-
    high_risk_ai_system(S),
    resilient_to_errors(S).

technical_redundancy_solutions(S) :-
    high_risk_ai_system(S),
    resilient_to_errors(S).

continues_to_learn_after_placement(S) :-
    high_risk_ai_system(S).

feedback_loop_risk_addressed(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S).

appropriate_mitigation_measures_for_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    feedback_loop_risk_addressed(S).

resilient_to_unauthorised_alteration(S) :-
    high_risk_ai_system(S).

appropriate_cybersecurity_technical_solutions(S) :-
    high_risk_ai_system(S),
    resilient_to_unauthorised_alteration(S).

data_poisoning_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).

model_poisoning_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).

adversarial_example_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).

confidentiality_attack_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).

model_flaw_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).

provenance(appropriate_level_of_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_level_of_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_level_of_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(consistent_performance/1, 'celex:32024R1689/oj#art_15').
provenance(must_ensure_accuracy_robustness_cybersecurity/2, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_15').
provenance(declared_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').
provenance(resilient_to_errors/1, 'celex:32024R1689/oj#art_15').
provenance(technical_organisational_measures_for_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(technical_redundancy_solutions/1, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn_after_placement/1, 'celex:32024R1689/oj#art_15').
provenance(feedback_loop_risk_addressed/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_mitigation_measures_for_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(resilient_to_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_cybersecurity_technical_solutions/1, 'celex:32024R1689/oj#art_15').
provenance(data_poisoning_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(model_poisoning_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(adversarial_example_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(confidentiality_attack_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(model_flaw_prevention/1, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
