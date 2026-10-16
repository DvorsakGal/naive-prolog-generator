% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : fd9a258a9b94a5e3a8b201f9845fb267cd67c4ac1653be88ae67a0a6caf6e0f6
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred must_achieve_accuracy_robustness_cybersecurity/1, gloss('high-risk AI system designed to achieve appropriate accuracy, robustness and cybersecurity'), source('celex:32024R1689/oj#art_15').
:- pred must_perform_consistently_throughout_lifecycle/1, gloss('high-risk AI system performs consistently in accuracy, robustness and cybersecurity throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred must_declare_accuracy_metrics_in_instructions/2, gloss('provider declares accuracy levels and metrics in instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred must_be_resilient_to_errors_faults_inconsistencies/1, gloss('high-risk AI system resilient to errors, faults or inconsistencies within system or environment'), source('celex:32024R1689/oj#art_15').
:- pred must_take_technical_organisational_measures_for_robustness/1, gloss('technical and organisational measures taken for robustness'), source('celex:32024R1689/oj#art_15').
:- pred continues_to_learn_after_market_or_service/1, gloss('high-risk AI system continues to learn after being placed on market or put into service'), source('celex:32024R1689/oj#art_15').
:- pred must_eliminate_or_reduce_feedback_loop_risk/1, gloss('risk of biased outputs influencing future operations eliminated or reduced as far as possible'), source('celex:32024R1689/oj#art_15').
:- pred must_address_feedback_loops_with_mitigation/1, gloss('feedback loops duly addressed with appropriate mitigation measures'), source('celex:32024R1689/oj#art_15').
:- pred must_be_resilient_against_unauthorised_alteration/1, gloss('high-risk AI system resilient against attempts by unauthorised third parties to alter use, outputs or performance'), source('celex:32024R1689/oj#art_15').
:- pred must_implement_ai_specific_cybersecurity_measures/1, gloss('technical solutions address AI specific vulnerabilities including data poisoning, model poisoning, adversarial examples, confidentiality attacks or model flaws'), source('celex:32024R1689/oj#art_15').

must_achieve_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S).

must_perform_consistently_throughout_lifecycle(S) :-
    high_risk_ai_system(S).

must_declare_accuracy_metrics_in_instructions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_be_resilient_to_errors_faults_inconsistencies(S) :-
    high_risk_ai_system(S).

must_take_technical_organisational_measures_for_robustness(S) :-
    high_risk_ai_system(S).

must_eliminate_or_reduce_feedback_loop_risk(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_market_or_service(S).

must_address_feedback_loops_with_mitigation(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_market_or_service(S).

must_be_resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).

must_implement_ai_specific_cybersecurity_measures(S) :-
    high_risk_ai_system(S).

provenance(must_achieve_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(must_perform_consistently_throughout_lifecycle/1, 'celex:32024R1689/oj#art_15').
provenance(must_declare_accuracy_metrics_in_instructions/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_to_errors_faults_inconsistencies/1, 'celex:32024R1689/oj#art_15').
provenance(must_take_technical_organisational_measures_for_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn_after_market_or_service/1, 'celex:32024R1689/oj#art_15').
provenance(must_eliminate_or_reduce_feedback_loop_risk/1, 'celex:32024R1689/oj#art_15').
provenance(must_address_feedback_loops_with_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(must_implement_ai_specific_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
