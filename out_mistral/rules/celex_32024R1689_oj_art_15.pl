% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 17363e518863d40846f88f3f377bf67c4cd9c43c1fdb977805c087b00e705520
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_15').
:- pred designed_and_developed/2, gloss('entity designed and developed an AI system'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_level/2, gloss('appropriate level of a quality attribute for an AI system'), source('celex:32024R1689/oj#art_15').
:- pred accuracy/1, gloss('quality attribute of correct outputs'), source('celex:32024R1689/oj#art_15').
:- pred robustness/1, gloss('quality attribute of resilience to errors and faults'), source('celex:32024R1689/oj#art_15').
:- pred cybersecurity/1, gloss('quality attribute of protection against unauthorised access'), source('celex:32024R1689/oj#art_15').
:- pred performs_consistently/2, gloss('AI system performs consistently in a quality attribute throughout its lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred lifecycle/1, gloss('entire lifespan of an AI system from design to decommissioning'), source('celex:32024R1689/oj#art_15').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_15').
:- pred encourage_development/2, gloss('actor encourages development of benchmarks and measurement methodologies'), source('celex:32024R1689/oj#art_15').
:- pred benchmark/1, gloss('standardised reference for measuring performance'), source('celex:32024R1689/oj#art_15').
:- pred measurement_methodology/1, gloss('methodology for measuring performance metrics'), source('celex:32024R1689/oj#art_15').
:- pred declared_in_instructions/2, gloss('metric or level declared in accompanying instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred accuracy_metric/1, gloss('specific metric measuring accuracy of an AI system'), source('celex:32024R1689/oj#art_15').
:- pred resilient_to_errors/1, gloss('AI system is resilient regarding errors, faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred technical_redundancy_solution/1, gloss('technical solution providing backup or fail-safe capability'), source('celex:32024R1689/oj#art_15').
:- pred backup_plan/1, gloss('plan for backup operation'), source('celex:32024R1689/oj#art_15').
:- pred fail_safe_plan/1, gloss('plan for safe failure mode'), source('celex:32024R1689/oj#art_15').
:- pred continues_to_learn/1, gloss('AI system continues to learn after being placed on market or put into service'), source('celex:32024R1689/oj#art_15').
:- pred feedback_loop/1, gloss('biased outputs influencing input for future operations'), source('celex:32024R1689/oj#art_15').
:- pred biased_output/1, gloss('output of an AI system that is biased'), source('celex:32024R1689/oj#art_15').
:- pred mitigation_measure/1, gloss('measure to mitigate a risk'), source('celex:32024R1689/oj#art_15').
:- pred resilient_against_unauthorised_alteration/1, gloss('AI system is resilient against attempts by unauthorised third parties to alter use, outputs or performance'), source('celex:32024R1689/oj#art_15').
:- pred cybersecurity_technical_solution/1, gloss('technical solution ensuring cybersecurity of an AI system'), source('celex:32024R1689/oj#art_15').
:- pred data_poisoning_attack/1, gloss('attack trying to manipulate the training data set'), source('celex:32024R1689/oj#art_15').
:- pred model_poisoning_attack/1, gloss('attack trying to manipulate pre-trained components used in training'), source('celex:32024R1689/oj#art_15').
:- pred adversarial_example_attack/1, gloss('attack using inputs designed to cause the AI model to make a mistake'), source('celex:32024R1689/oj#art_15').
:- pred model_evasion_attack/1, gloss('attack causing model evasion'), source('celex:32024R1689/oj#art_15').
:- pred confidentiality_attack/1, gloss('attack targeting confidentiality of the AI system'), source('celex:32024R1689/oj#art_15').
:- pred model_flaw/1, gloss('flaw in the AI model'), source('celex:32024R1689/oj#art_15').

must_achieve_appropriate_level(S, accuracy) :-
    high_risk_ai_system(S),
    designed_and_developed(_, S).

must_achieve_appropriate_level(S, robustness) :-
    high_risk_ai_system(S),
    designed_and_developed(_, S).

must_achieve_appropriate_level(S, cybersecurity) :-
    high_risk_ai_system(S),
    designed_and_developed(_, S).

must_perform_consistently(S, accuracy) :-
    high_risk_ai_system(S),
    lifecycle(S).

must_perform_consistently(S, robustness) :-
    high_risk_ai_system(S),
    lifecycle(S).

must_perform_consistently(S, cybersecurity) :-
    high_risk_ai_system(S),
    lifecycle(S).

must_encourage_development(commission, benchmark).

must_encourage_development(commission, measurement_methodology).

must_declare_in_instructions(S, accuracy_level) :-
    high_risk_ai_system(S).

must_declare_in_instructions(S, accuracy_metric) :-
    high_risk_ai_system(S),
    accuracy_metric(M),
    declared_in_instructions(M, instructions_for_use(S)).

must_be_resilient_to_errors(S) :-
    high_risk_ai_system(S).

robustness_achieved_through(S, technical_redundancy_solution) :-
    high_risk_ai_system(S).

robustness_achieved_through(S, backup_plan) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(backup_plan).

robustness_achieved_through(S, fail_safe_plan) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(fail_safe_plan).

must_eliminate_or_reduce_feedback_loop_risk(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    placing_on_market(S).

must_eliminate_or_reduce_feedback_loop_risk(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    putting_into_service(S).

must_address_feedback_loop(S, mitigation_measure) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(S).

must_be_resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).

cybersecurity_technical_solution_appropriate(S) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).

must_include_measure_against(S, data_poisoning_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).

must_include_measure_against(S, model_poisoning_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).

must_include_measure_against(S, adversarial_example_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).

must_include_measure_against(S, model_evasion_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).

must_include_measure_against(S, confidentiality_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).

must_include_measure_against(S, model_flaw) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).

provenance(must_achieve_appropriate_level/2, 'celex:32024R1689/oj#art_15').
provenance(must_perform_consistently/2, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_development/2, 'celex:32024R1689/oj#art_15').
provenance(must_declare_in_instructions/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_to_errors/1, 'celex:32024R1689/oj#art_15').
provenance(robustness_achieved_through/2, 'celex:32024R1689/oj#art_15').
provenance(must_eliminate_or_reduce_feedback_loop_risk/1, 'celex:32024R1689/oj#art_15').
provenance(must_address_feedback_loop/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(cybersecurity_technical_solution_appropriate/1, 'celex:32024R1689/oj#art_15').
provenance(must_include_measure_against/2, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
