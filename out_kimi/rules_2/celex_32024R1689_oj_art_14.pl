% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : d94384fbbc887a326b9be157f8ca80a546721627cb0bf4c4dae37ce627cef2a2
% cached     : False
% title      : Human oversight
:- pred human_oversight_effective/1, gloss('high-risk AI system can be effectively overseen by natural persons'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight_prevents_or_minimises_risks/1, gloss('human oversight aims to prevent or minimise risks to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measures_commensurate/1, gloss('oversight measures are commensurate with risks, autonomy and context'), source('celex:32024R1689/oj#art_14').
:- pred built_in_oversight_measures/1, gloss('measures identified and built into the system by provider before placing on market'), source('celex:32024R1689/oj#art_14').
:- pred deployer_implemented_oversight_measures/1, gloss('measures appropriate to be implemented by deployer'), source('celex:32024R1689/oj#art_14').
:- pred enables_understand_capacity_and_limitations/1, gloss('natural persons enabled to understand capacities and limitations and monitor operation'), source('celex:32024R1689/oj#art_14').
:- pred enables_awareness_automation_bias/1, gloss('natural persons enabled to remain aware of automation bias tendency'), source('celex:32024R1689/oj#art_14').
:- pred enables_correct_interpretation/1, gloss('natural persons enabled to correctly interpret output'), source('celex:32024R1689/oj#art_14').
:- pred enables_decision_not_to_use_or_override/1, gloss('natural persons enabled to decide not to use or to disregard, override or reverse output'), source('celex:32024R1689/oj#art_14').
:- pred enables_intervention_or_interruption/1, gloss('natural persons enabled to intervene or interrupt system through stop button'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_by_two_persons_required/1, gloss('separate verification by at least two natural persons required'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_exempt/1, gloss('separate verification requirement does not apply'), source('celex:32024R1689/oj#art_14').

human_oversight_effective(S) :-
    high_risk_ai_system(S),
    designed_and_developed_with_human_machine_interface(S).

human_oversight_prevents_or_minimises_risks(S) :-
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose_or_foreseeable_misuse(S),
    risk_to_health_safety_or_rights_persists_despite_other_requirements(S).

oversight_measures_commensurate(S) :-
    high_risk_ai_system(S),
    oversight_measures(Measures),
    commensurate_with(Measures, risk_level(S)),
    commensurate_with(Measures, level_of_autonomy(S)),
    commensurate_with(Measures, context_of_use(S)).

built_in_oversight_measures(S) :-
    high_risk_ai_system(S),
    measures_identified_and_built_into_system_by_provider(S),
    technically_feasible(S),
    before_placing_on_market_or_putting_into_service(S).

deployer_implemented_oversight_measures(S) :-
    high_risk_ai_system(S),
    measures_identified_by_provider(S),
    appropriate_for_deployer_implementation(S),
    before_placing_on_market_or_putting_into_service(S).

enables_understand_capacity_and_limitations(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, understand_capacities_and_limitations(S)),
    enabled_to(NP, monitor_operation(S)),
    enabled_to(NP, detect_and_address_anomalies(S)).

enables_awareness_automation_bias(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, remain_aware_of_automation_bias),
    used_to_provide_information_or_recommendations_for_decisions(S).

enables_correct_interpretation(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, interpret_output_correctly),
    interpretation_tools_and_methods_available(S).

enables_decision_not_to_use_or_override(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, decide_not_to_use(S)),
    enabled_to(NP, disregard_output(S)),
    enabled_to(NP, override_output(S)),
    enabled_to(NP, reverse_output(S)).

enables_intervention_or_interruption(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, intervene_in_operation(S)),
    enabled_to(NP, interrupt_system(S)),
    stop_button_or_similar_procedure(S),
    allows_safe_halt(S).

separate_verification_by_two_persons_required(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    action_or_decision_based_on_identification(S),
    \+ separate_verification_exempt(S).

separate_verification_exempt(S) :-
    high_risk_ai_system(S),
    used_for_law_enforcement_migration_border_control_asylum(S),
    union_or_national_law_considers_requirement_disproportionate(S).

must_ensure_human_oversight(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    designed_and_developed(Provider, S),
    human_machine_interface_tools_appropriate(S).

must_ensure_oversight_measures(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    (built_in_oversight_measures(S); deployer_implemented_oversight_measures(S)).

must_provide_for_deployer_capabilities(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    provided_to_deployer(Provider, S),
    enables_understand_capacity_and_limitations(S),
    enables_awareness_automation_bias(S),
    enables_correct_interpretation(S),
    enables_decision_not_to_use_or_override(S),
    enables_intervention_or_interruption(S).

provenance(human_oversight_effective/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_prevents_or_minimises_risks/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(enables_understand_capacity_and_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(enables_awareness_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(enables_correct_interpretation/1, 'celex:32024R1689/oj#art_14').
provenance(enables_decision_not_to_use_or_override/1, 'celex:32024R1689/oj#art_14').
provenance(enables_intervention_or_interruption/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_by_two_persons_required/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_exempt/1, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_oversight_measures/2, 'celex:32024R1689/oj#art_14').
provenance(must_provide_for_deployer_capabilities/2, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
