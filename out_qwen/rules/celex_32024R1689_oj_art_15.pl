% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b65b5d0c320ee13daefb2aa9d2dba7e7da4b081499618dab0ac81651d2555abb
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_15').
:- pred must_achieve_accuracy_robustness_cybersecurity(Provider, System), gloss('provider must design system to achieve appropriate levels throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred must_declare_accuracy_metrics(Provider, System), gloss('provider must declare accuracy levels and metrics in instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred must_implement_resilience_measures(Provider, System), gloss('provider must take technical and organisational measures for resilience against errors and faults'), source('celex:32024R1689/oj#art_15').
:- pred continues_to_learn_after_deployment/1, gloss('system continues learning after being placed on market or put into service'), source('celex:32024R1689/oj#art_15').
:- pred must_mitigate_feedback_loops(Provider, System), gloss('provider must eliminate or reduce risk of biased outputs influencing future operations'), source('celex:32024R1689/oj#art_15').
:- pred must_ensure_cybersecurity_resilience(Provider, System), gloss('provider must ensure resilience against unauthorised third party alteration attempts'), source('celex:32024R1689/oj#art_15').
:- pred must_implement_ai_specific_cybersecurity_measures(Provider, System), gloss('provider must implement measures against data poisoning, model poisoning, adversarial examples, confidentiality attacks and model flaws'), source('celex:32024R1689/oj#art_15').

must_achieve_accuracy_robustness_cybersecurity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_declare_accuracy_metrics(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_implement_resilience_measures(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_mitigate_feedback_loops(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    continues_to_learn_after_deployment(S).

must_ensure_cybersecurity_resilience(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_implement_ai_specific_cybersecurity_measures(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(must_achieve_accuracy_robustness_cybersecurity/2, 'celex:32024R1689/oj#art_15').
provenance(must_declare_accuracy_metrics/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_resilience_measures/2, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn_after_deployment/1, 'celex:32024R1689/oj#art_15').
provenance(must_mitigate_feedback_loops/2, 'celex:32024R1689/oj#art_15').
provenance(must_ensure_cybersecurity_resilience/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_ai_specific_cybersecurity_measures/2, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
