% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d2d10b3ddb803e619e174b1b7c156ea850a49062ffec024db30226aa227d60f2
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred required_high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_15').
:- pred must_design_and_develop/2, gloss('obligation to design and develop the system'), source('celex:32024R1689/oj#art_15').
:- pred must_achieve_accuracy/2, gloss('obligation to achieve an appropriate level of accuracy'), source('celex:32024R1689/oj#art_15').
:- pred must_achieve_robustness/2, gloss('obligation to achieve an appropriate level of robustness'), source('celex:32024R1689/oj#art_15').
:- pred must_achieve_cybersecurity/2, gloss('obligation to achieve an appropriate level of cybersecurity'), source('celex:32024R1689/oj#art_15').
:- pred must_perform_consistently/2, gloss('obligation to perform consistently throughout the lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred must_encourage_benchmark_development/1, gloss('Commission shall encourage development of benchmarks and measurement methodologies'), source('celex:32024R1689/oj#art_15').
:- pred must_declare_accuracy_metrics/2, gloss('obligation to declare accuracy levels and metrics in instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred must_be_resilient/2, gloss('obligation to be as resilient as possible to errors, faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred must_take_technical_measures/2, gloss('obligation to take technical measures for resilience'), source('celex:32024R1689/oj#art_15').
:- pred must_take_organisational_measures/2, gloss('obligation to take organisational measures for resilience'), source('celex:32024R1689/oj#art_15').
:- pred must_implement_redundancy/2, gloss('obligation to achieve robustness through technical redundancy'), source('celex:32024R1689/oj#art_15').
:- pred must_implement_backup_failsafe/2, gloss('obligation to include backup or fail‑safe plans'), source('celex:32024R1689/oj#art_15').
:- pred must_eliminate_feedback_loop_risk/2, gloss('obligation to eliminate or reduce risk of biased feedback loops'), source('celex:32024R1689/oj#art_15').
:- pred must_address_feedback_loops/2, gloss('obligation to address feedback loops with mitigation measures'), source('celex:32024R1689/oj#art_15').
:- pred must_be_resilient_to_unauthorised_modification/2, gloss('obligation to be resilient against unauthorised third‑party alteration'), source('celex:32024R1689/oj#art_15').
:- pred must_implement_cybersecurity_measures/2, gloss('obligation to implement appropriate technical solutions for cybersecurity'), source('celex:32024R1689/oj#art_15').
:- pred must_prevent_data_poisoning/2, gloss('obligation to prevent data‑poisoning attacks'), source('celex:32024R1689/oj#art_15').
:- pred must_prevent_model_poisoning/2, gloss('obligation to prevent model‑poisoning attacks'), source('celex:32024R1689/oj#art_15').
:- pred must_prevent_adversarial_examples/2, gloss('obligation to prevent adversarial‑example attacks'), source('celex:32024R1689/oj#art_15').
:- pred must_prevent_confidentiality_attacks/2, gloss('obligation to prevent confidentiality attacks'), source('celex:32024R1689/oj#art_15').
:- pred must_prevent_model_flaws/2, gloss('obligation to prevent exploitation of model flaws'), source('celex:32024R1689/oj#art_15').

% Identification of high‑risk AI systems (simplified)
required_high_risk_ai_system(S) :-
    ai_system(S).

% Paragraph 1 obligations
must_design_and_develop(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_achieve_accuracy(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_achieve_robustness(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_achieve_cybersecurity(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_perform_consistently(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

% Paragraph 2 – Commission encouragement
must_encourage_benchmark_development(commission) :-
    true.

% Paragraph 3 – Declaration in instructions for use
must_declare_accuracy_metrics(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

% Paragraph 4 – Resilience and robustness measures
must_be_resilient(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_take_technical_measures(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_take_organisational_measures(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_implement_redundancy(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_implement_backup_failsafe(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_eliminate_feedback_loop_risk(P, S) :-
    provider(P),
    required_high_risk_ai_system(S),
    (putting_into_service(S) ; placing_on_market(S)).

must_address_feedback_loops(P, S) :-
    provider(P),
    required_high_risk_ai_system(S),
    (putting_into_service(S) ; placing_on_market(S)).

% Paragraph 5 – Cybersecurity and protection against unauthorised modification
must_be_resilient_to_unauthorised_modification(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_implement_cybersecurity_measures(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_prevent_data_poisoning(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_prevent_model_poisoning(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_prevent_adversarial_examples(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_prevent_confidentiality_attacks(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

must_prevent_model_flaws(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).

% Provenance for each clause
provenance(required_high_risk_ai_system/1, 'celex:32024R1689/oj#art_15').
provenance(must_design_and_develop/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve_accuracy/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve_robustness/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve_cybersecurity/2, 'celex:32024R1689/oj#art_15').
provenance(must_perform_consistently/2, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_benchmark_development/1, 'celex:32024R1689/oj#art_15').
provenance(must_declare_accuracy_metrics/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient/2, 'celex:32024R1689/oj#art_15').
provenance(must_take_technical_measures/2, 'celex:32024R1689/oj#art_15').
provenance(must_take_organisational_measures/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_redundancy/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_backup_failsafe/2, 'celex:32024R1689/oj#art_15').
provenance(must_eliminate_feedback_loop_risk/2, 'celex:32024R1689/oj#art_15').
provenance(must_address_feedback_loops/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_to_unauthorised_modification/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_data_poisoning/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_model_poisoning/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_adversarial_examples/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_confidentiality_attacks/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_model_flaws/2, 'celex:32024R1689/oj#art_15').

% References
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
