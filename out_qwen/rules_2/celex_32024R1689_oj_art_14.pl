% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : b3c337cbee34e915abd11c7371be3e14cb3a4718aec6519ede6a3f7803875f51
% cached     : False
% title      : Human oversight
:- pred must_design_for_human_oversight/2, gloss('provider must design high-risk AI system for effective human oversight'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight_measure/2, gloss('measure ensuring human oversight of a high-risk AI system'), source('celex:32024R1689/oj#art_14').
:- pred built_in_oversight_measure/2, gloss('oversight measure built into the system by the provider'), source('celex:32024R1689/oj#art_14').
:- pred deployer_implemented_oversight_measure/2, gloss('oversight measure identified by provider for implementation by deployer'), source('celex:32024R1689/oj#art_14').
:- pred enables_understanding_of_capacities_and_limitations/2, gloss('system enables assigned persons to understand capacities and limitations'), source('celex:32024R1689/oj#art_14').
:- pred enables_monitoring_of_operation/2, gloss('system enables assigned persons to monitor operation and detect anomalies'), source('celex:32024R1689/oj#art_14').
:- pred enables_awareness_of_automation_bias/2, gloss('system enables awareness of tendency to over-rely on output'), source('celex:32024R1689/oj#art_14').
:- pred enables_correct_interpretation_of_output/2, gloss('system enables correct interpretation of output'), source('celex:32024R1689/oj#art_14').
:- pred enables_decision_not_to_use_or_override/2, gloss('system enables decision not to use or to override output'), source('celex:32024R1689/oj#art_14').
:- pred enables_safe_intervention_or_stop/2, gloss('system enables intervention or safe stop procedure'), source('celex:32024R1689/oj#art_14').
:- pred requires_separate_verification_by_two_persons/2, gloss('biometric identification system requires separate verification by two competent persons'), source('celex:32024R1689/oj#art_14').
:- pred exempt_from_two_person_verification/1, gloss('exemption from two-person verification for law enforcement etc where disproportionate'), source('celex:32024R1689/oj#art_14').

must_design_for_human_oversight(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).

human_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    built_in_oversight_measure(S, M).
human_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    deployer_implemented_oversight_measure(S, M).

built_in_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    technically_feasible(M),
    identified_by_provider_before_market(S, M).

deployer_implemented_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    appropriate_for_deployer_implementation(M),
    identified_by_provider_before_market(S, M).

enables_understanding_of_capacities_and_limitations(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).

enables_monitoring_of_operation(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).

enables_awareness_of_automation_bias(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).

enables_correct_interpretation_of_output(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).

enables_decision_not_to_use_or_override(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).

enables_safe_intervention_or_stop(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).

requires_separate_verification_by_two_persons(S, D) :-
    high_risk_ai_system_annex_3_point_1(S),
    deployer(D),
    \+ exempt_from_two_person_verification(S).

exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    law_enforcement_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    migration_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    border_control_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    asylum_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    disproportionate_under_applicable_law(S).

provenance(must_design_for_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(enables_understanding_of_capacities_and_limitations/2, 'celex:32024R1689/oj#art_14').
provenance(enables_monitoring_of_operation/2, 'celex:32024R1689/oj#art_14').
provenance(enables_awareness_of_automation_bias/2, 'celex:32024R1689/oj#art_14').
provenance(enables_correct_interpretation_of_output/2, 'celex:32024R1689/oj#art_14').
provenance(enables_decision_not_to_use_or_override/2, 'celex:32024R1689/oj#art_14').
provenance(enables_safe_intervention_or_stop/2, 'celex:32024R1689/oj#art_14').
provenance(requires_separate_verification_by_two_persons/2, 'celex:32024R1689/oj#art_14').
provenance(exempt_from_two_person_verification/1, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
