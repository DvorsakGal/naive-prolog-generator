% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 824090d42c6f28ee78cea26f04f272a325d4f0540fa7f8b6bdc7da77e952e16f
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred must_achieve_accuracy_robustness_cybersecurity/1, gloss('high-risk AI system must achieve appropriate accuracy, robustness and cybersecurity'), source('celex:32024R1689/oj#art_15/par_1').
:- pred must_declare_accuracy_levels/1, gloss('accuracy levels and metrics must be declared in instructions for use'), source('celex:32024R1689/oj#art_15/par_3').
:- pred must_be_resilient_to_errors/1, gloss('high-risk AI system must be resilient to errors, faults or inconsistencies'), source('celex:32024R1689/oj#art_15/par_4').
:- pred must_eliminate_feedback_loop_bias/1, gloss('continually learning system must eliminate or reduce biased feedback loops'), source('celex:32024R1689/oj#art_15/par_4').
:- pred must_be_resilient_to_attacks/1, gloss('high-risk AI system must be resilient to unauthorised third-party attacks'), source('celex:32024R1689/oj#art_15/par_5').
:- pred must_implement_cybersecurity_measures/1, gloss('technical solutions for cybersecurity must be appropriate to circumstances'), source('celex:32024R1689/oj#art_15/par_5').
:- pred must_address_ai_specific_vulnerabilities/1, gloss('technical solutions must address AI-specific vulnerabilities'), source('celex:32024R1689/oj#art_15/par_5').
:- pred continues_learning_after_placement/1, gloss('AI system that continues to learn after being placed on the market or put into service'), source('celex:32024R1689/oj#art_15/par_4').

must_achieve_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S).

must_declare_accuracy_levels(S) :-
    high_risk_ai_system(S).

must_be_resilient_to_errors(S) :-
    high_risk_ai_system(S).

must_eliminate_feedback_loop_bias(S) :-
    high_risk_ai_system(S),
    continues_learning_after_placement(S).

must_be_resilient_to_attacks(S) :-
    high_risk_ai_system(S).

must_implement_cybersecurity_measures(S) :-
    high_risk_ai_system(S).

must_address_ai_specific_vulnerabilities(S) :-
    high_risk_ai_system(S).

provenance(must_achieve_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15/par_1').
provenance(must_declare_accuracy_levels/1, 'celex:32024R1689/oj#art_15/par_3').
provenance(must_be_resilient_to_errors/1, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_eliminate_feedback_loop_bias/1, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_be_resilient_to_attacks/1, 'celex:32024R1689/oj#art_15/par_5').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15/par_5').
provenance(must_address_ai_specific_vulnerabilities/1, 'celex:32024R1689/oj#art_15/par_5').
provenance(continues_learning_after_placement/1, 'celex:32024R1689/oj#art_15/par_4').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
