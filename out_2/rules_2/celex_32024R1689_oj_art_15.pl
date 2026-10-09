% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 00dd718fd1a210a318554489bda391d2ea9d35514b8da7cfb12f717755674882
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred required_accuracy/1, gloss('high‑risk AI system must achieve appropriate accuracy'), source('celex:32024R1689/oj#art_15').
:- pred required_robustness/1, gloss('high‑risk AI system must achieve appropriate robustness'), source('celex:32024R1689/oj#art_15').
:- pred required_cybersecurity/1, gloss('high‑risk AI system must achieve appropriate cybersecurity'), source('celex:32024R1689/oj#art_15').
:- pred required_consistent_performance/1, gloss('high‑risk AI system must perform consistently throughout its lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred required_resilience/1, gloss('high‑risk AI system must be as resilient as possible to errors, faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred required_technical_and_organisational_measures/1, gloss('technical and organisational measures shall be taken to ensure resilience'), source('celex:32024R1689/oj#art_15').
:- pred required_redundancy_solution/1, gloss('robustness may be achieved through technical redundancy solutions'), source('celex:32024R1689/oj#art_15').
:- pred required_feedback_loop_mitigation/1, gloss('systems that continue to learn must mitigate biased feedback loops'), source('celex:32024R1689/oj#art_15').
:- pred required_cybersecurity_measures/1, gloss('systems must be resilient against unauthorised alterations and attacks'), source('celex:32024R1689/oj#art_15').
:- pred must_encourage/2, gloss('Commission shall encourage development of benchmarks and measurement methodologies'), source('celex:32024R1689/oj#art_15').
:- pred must_declare/2, gloss('Provider shall declare accuracy metrics in the instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred must_take/2, gloss('Provider shall take technical and organisational measures for resilience and cybersecurity'), source('celex:32024R1689/oj#art_15').

required_accuracy(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_robustness(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_cybersecurity(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_consistent_performance(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_resilience(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_technical_and_organisational_measures(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_redundancy_solution(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_feedback_loop_mitigation(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).

must_encourage(C, development_of_benchmarks_and_measurement_methodologies) :-
    ai_office(C),
    ai_office(C).

must_declare(P, accuracy_metrics(S)) :-
    provider(P),
    high_risk_ai_system(S),
    provider(P).

must_take(P, technical_and_organisational_measures(S)) :-
    provider(P),
    high_risk_ai_system(S),
    provider(P).

must_take(P, cybersecurity_measures(S)) :-
    provider(P),
    high_risk_ai_system(S),
    provider(P).

required_accuracy_metrics_declared(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S),
    high_risk_ai_system(S).

provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(required_consistent_performance/1, 'celex:32024R1689/oj#art_15').
provenance(required_resilience/1, 'celex:32024R1689/oj#art_15').
provenance(required_technical_and_organisational_measures/1, 'celex:32024R1689/oj#art_15').
provenance(required_redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(required_feedback_loop_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_15').
provenance(must_declare/2, 'celex:32024R1689/oj#art_15').
provenance(must_take/2, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy_metrics_declared/1, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
