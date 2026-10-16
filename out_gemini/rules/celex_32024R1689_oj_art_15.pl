% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : db6ea87ea21e3cd792b50cc21247ee12edeb8722586179c0e08cdf2937e4d14c
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_15').
:- pred required_accuracy_robustness_cybersecurity/1, gloss('system achieves appropriate level of accuracy, robustness, cybersecurity consistently throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred must_encourage_benchmarks/2, gloss('actor encourages development of benchmarks and measurement methodologies'), source('celex:32024R1689/oj#art_15').
:- pred required_declared_accuracy/1, gloss('accuracy levels and metrics declared in accompanying instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred required_resilience_to_errors/1, gloss('system is resilient regarding errors, faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred continues_to_learn_after_placement(1), gloss('system continues to learn after being placed on the market or put into service'), source('celex:32024R1689/oj#art_15').
:- pred required_mitigation_feedback_loops/1, gloss('measures to eliminate or reduce risk of biased feedback loops'), source('celex:32024R1689/oj#art_15').
:- pred required_cybersecurity_resilience/1, gloss('resilient against attempts by unauthorised third parties to alter use, outputs or performance'), source('celex:32024R1689/oj#art_15').
:- pred required_ai_specific_cybersecurity_measures/1, gloss('measures addressing AI specific vulnerabilities such as poisoning, adversarial examples, and flaws'), source('celex:32024R1689/oj#art_15').

% Paragraph 1: High-risk AI systems must achieve appropriate accuracy, robustness, and cybersecurity
required_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S).

% Paragraph 2: Commission obligation to encourage benchmarks and measurement methodologies
must_encourage_benchmarks(commission, benchmarks_and_measurement_methodologies).

% Paragraph 3: Accuracy levels and metrics declared in instructions for use
required_declared_accuracy(S) :-
    high_risk_ai_system(S).

% Paragraph 4: Resilience regarding errors, faults or inconsistencies
required_resilience_to_errors(S) :-
    high_risk_ai_system(S).

% Paragraph 4: Systems that continue to learn must address feedback loops
required_mitigation_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S).

% Paragraph 5: Resilience against unauthorised third party attempts / cybersecurity
required_cybersecurity_resilience(S) :-
    high_risk_ai_system(S).

required_ai_specific_cybersecurity_measures(S) :-
    high_risk_ai_system(S).

% Provenance
provenance(required_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_benchmarks/2, 'celex:32024R1689/oj#art_15').
provenance(required_declared_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_resilience_to_errors/1, 'celex:32024R1689/oj#art_15').
provenance(required_mitigation_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_resilience/1, 'celex:32024R1689/oj#art_15').
provenance(required_ai_specific_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').

% References
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
