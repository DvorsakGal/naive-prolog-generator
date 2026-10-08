% unit       : celex:32024R1689/oj#art_15
% title      : Accuracy, robustness and cybersecurity
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : gpt-oss:120b-cloud
% prompt sha : d85d6c64fc4a81283d614b25f2796d77bc88b42d9bd018a690649e787205b430
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_accuracy/1, gloss('accuracy level appropriate to the system'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_robustness/1, gloss('robustness level appropriate to the system'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_cybersecurity/1, gloss('cybersecurity level appropriate to the system'), source('celex:32024R1689/oj#art_15').
:- pred consistent_performance/1, gloss('consistent performance throughout the lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred resilient/1, gloss('resilient to errors, faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred resilient_against_unauthorised/1, gloss('resilient against unauthorised third‑party alterations'), source('celex:32024R1689/oj#art_15').
:- pred declares_accuracy_metrics/2, gloss('instructions of use declare accuracy metrics'), source('celex:32024R1689/oj#art_15').
:- pred continues_learning/1, gloss('system continues learning after market placement or putting into service'), source('celex:32024R1689/oj#art_15').
:- pred mitigation_feedback_loops/1, gloss('measures to mitigate feedback loops'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_cybersecurity_measures/1, gloss('technical solutions ensuring cybersecurity'), source('celex:32024R1689/oj#art_15').
:- pred prevent_data_poisoning/1, gloss('prevent attacks that manipulate the training data set'), source('celex:32024R1689/oj#art_15').
:- pred detect_data_poisoning/1, gloss('detect attacks that manipulate the training data set'), source('celex:32024R1689/oj#art_15').
:- pred respond_data_poisoning/1, gloss('respond to attacks that manipulate the training data set'), source('celex:32024R1689/oj#art_15').
:- pred resolve_data_poisoning/1, gloss('resolve attacks that manipulate the training data set'), source('celex:32024R1689/oj#art_15').
:- pred control_data_poisoning/1, gloss('control attacks that manipulate the training data set'), source('celex:32024R1689/oj#art_15').
:- pred prevent_model_poisoning/1, gloss('prevent attacks that manipulate pre‑trained components'), source('celex:32024R1689/oj#art_15').
:- pred detect_model_poisoning/1, gloss('detect attacks that manipulate pre‑trained components'), source('celex:32024R1689/oj#art_15').
:- pred respond_model_poisoning/1, gloss('respond to attacks that manipulate pre‑trained components'), source('celex:32024R1689/oj#art_15').
:- pred resolve_model_poisoning/1, gloss('resolve attacks that manipulate pre‑trained components'), source('celex:32024R1689/oj#art_15').
:- pred control_model_poisoning/1, gloss('control attacks that manipulate pre‑trained components'), source('celex:32024R1689/oj#art_15').
:- pred prevent_adversarial_examples/1, gloss('prevent inputs designed to cause the AI model to err'), source('celex:32024R1689/oj#art_15').
:- pred detect_adversarial_examples/1, gloss('detect inputs designed to cause the AI model to err'), source('celex:32024R1689/oj#art_15').
:- pred respond_adversarial_examples/1, gloss('respond to inputs designed to cause the AI model to err'), source('celex:32024R1689/oj#art_15').
:- pred resolve_adversarial_examples/1, gloss('resolve inputs designed to cause the AI model to err'), source('celex:32024R1689/oj#art_15').
:- pred control_adversarial_examples/1, gloss('control inputs designed to cause the AI model to err'), source('celex:32024R1689/oj#art_15').
:- pred prevent_confidentiality_attacks/1, gloss('prevent attacks aiming at confidentiality'), source('celex:32024R1689/oj#art_15').
:- pred detect_confidentiality_attacks/1, gloss('detect attacks aiming at confidentiality'), source('celex:32024R1689/oj#art_15').
:- pred respond_confidentiality_attacks/1, gloss('respond to attacks aiming at confidentiality'), source('celex:32024R1689/oj#art_15').
:- pred resolve_confidentiality_attacks/1, gloss('resolve attacks aiming at confidentiality'), source('celex:32024R1689/oj#art_15').
:- pred control_confidentiality_attacks/1, gloss('control attacks aiming at confidentiality'), source('celex:32024R1689/oj#art_15').
:- pred prevent_model_flaws/1, gloss('prevent exploitation of model flaws'), source('celex:32024R1689/oj#art_15').
:- pred detect_model_flaws/1, gloss('detect exploitation of model flaws'), source('celex:32024R1689/oj#art_15').
:- pred respond_model_flaws/1, gloss('respond to exploitation of model flaws'), source('celex:32024R1689/oj#art_15').
:- pred resolve_model_flaws/1, gloss('resolve exploitation of model flaws'), source('celex:32024R1689/oj#art_15').
:- pred control_model_flaws/1, gloss('control exploitation of model flaws'), source('celex:32024R1689/oj#art_15').

required_accuracy(S) :-
    high_risk_ai_system(S),
    appropriate_accuracy(S).

provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').

required_robustness(S) :-
    high_risk_ai_system(S),
    appropriate_robustness(S).

provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').

required_cybersecurity(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity(S).

provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').

required_consistent_performance(S) :-
    high_risk_ai_system(S),
    consistent_performance(S).

provenance(required_consistent_performance/1, 'celex:32024R1689/oj#art_15').

required_resilience(S) :-
    high_risk_ai_system(S),
    resilient(S).

provenance(required_resilience/1, 'celex:32024R1689/oj#art_15').

required_resilience_unauthorised(S) :-
    high_risk_ai_system(S),
    resilient_against_unauthorised(S).

provenance(required_resilience_unauthorised/1, 'celex:32024R1689/oj#art_15').

required_declaration_of_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    declares_accuracy_metrics(I, S).

provenance(required_declaration_of_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').

required_mitigation_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_learning(S),
    mitigation_feedback_loops(S).

provenance(required_mitigation_feedback_loops/1, 'celex:32024R1689/oj#art_15').

required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_measures(S).

provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').

required_prevent_data_poisoning(S) :-
    high_risk_ai_system(S),
    prevent_data_poisoning(S).

provenance(required_prevent_data_poisoning/1, 'celex:32024R1689/oj#art_15').

required_detect_data_poisoning(S) :-
    high_risk_ai_system(S),
    detect_data_poisoning(S).

provenance(required_detect_data_poisoning/1, 'celex:32024R1689/oj#art_15').

required_respond_data_poisoning(S) :-
    high_risk_ai_system(S),
    respond_data_poisoning(S).

provenance(required_respond_data_poisoning/1, 'celex:32024R1689/oj#art_15').

required_resolve_data_poisoning(S) :-
    high_risk_ai_system(S),
    resolve_data_poisoning(S).

provenance(required_resolve_data_poisoning/1, 'celex:32024R1689/oj#art_15').

required_control_data_poisoning(S) :-
    high_risk_ai_system(S),
    control_data_poisoning(S).

provenance(required_control_data_poisoning/1, 'celex:32024R1689/oj#art_15').

required_prevent_model_poisoning(S) :-
    high_risk_ai_system(S),
    prevent_model_poisoning(S).

provenance(required_prevent_model_poisoning/1, 'celex:32024R1689/oj#art_15').

required_detect_model_poisoning(S) :-
    high_risk_ai_system(S),
    detect_model_poisoning(S).

provenance(required_detect_model_poisoning/1, 'celex:32024R1689/oj#art_15').

required_respond_model_poisoning(S) :-
    high_risk_ai_system(S),
    respond_model_poisoning(S).

provenance(required_respond_model_poisoning/1, 'celex:32024R1689/oj#art_15').

required_resolve_model_poisoning(S) :-
    high_risk_ai_system(S),
    resolve_model_poisoning(S).

provenance(required_resolve_model_poisoning/1, 'celex:32024R1689/oj#art_15').

required_control_model_poisoning(S) :-
    high_risk_ai_system(S),
    control_model_poisoning(S).

provenance(required_control_model_poisoning/1, 'celex:32024R1689/oj#art_15').

required_prevent_adversarial_examples(S) :-
    high_risk_ai_system(S),
    prevent_adversarial_examples(S).

provenance(required_prevent_adversarial_examples/1, 'celex:32024R1689/oj#art_15').

required_detect_adversarial_examples(S) :-
    high_risk_ai_system(S),
    detect_adversarial_examples(S).

provenance(required_detect_adversarial_examples/1, 'celex:32024R1689/oj#art_15').

required_respond_adversarial_examples(S) :-
    high_risk_ai_system(S),
    respond_adversarial_examples(S).

provenance(required_respond_adversarial_examples/1, 'celex:32024R1689/oj#art_15').

required_resolve_adversarial_examples(S) :-
    high_risk_ai_system(S),
    resolve_adversarial_examples(S).

provenance(required_resolve_adversarial_examples/1, 'celex:32024R1689/oj#art_15').

required_control_adversarial_examples(S) :-
    high_risk_ai_system(S),
    control_adversarial_examples(S).

provenance(required_control_adversarial_examples/1, 'celex:32024R1689/oj#art_15').

required_prevent_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    prevent_confidentiality_attacks(S).

provenance(required_prevent_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').

required_detect_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    detect_confidentiality_attacks(S).

provenance(required_detect_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').

required_respond_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    respond_confidentiality_attacks(S).

provenance(required_respond_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').

required_resolve_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    resolve_confidentiality_attacks(S).

provenance(required_resolve_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').

required_control_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    control_confidentiality_attacks(S).

provenance(required_control_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').

required_prevent_model_flaws(S) :-
    high_risk_ai_system(S),
    prevent_model_flaws(S).

provenance(required_prevent_model_flaws/1, 'celex:32024R1689/oj#art_15').

required_detect_model_flaws(S) :-
    high_risk_ai_system(S),
    detect_model_flaws(S).

provenance(required_detect_model_flaws/1, 'celex:32024R1689/oj#art_15').

required_respond_model_flaws(S) :-
    high_risk_ai_system(S),
    respond_model_flaws(S).

provenance(required_respond_model_flaws/1, 'celex:32024R1689/oj#art_15').

required_resolve_model_flaws(S) :-
    high_risk_ai_system(S),
    resolve_model_flaws(S).

provenance(required_resolve_model_flaws/1, 'celex:32024R1689/oj#art_15').

required_control_model_flaws(S) :-
    high_risk_ai_system(S),
    control_model_flaws(S).

provenance(required_control_model_flaws/1, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
