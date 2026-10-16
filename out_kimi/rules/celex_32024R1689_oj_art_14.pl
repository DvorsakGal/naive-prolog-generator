% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f33003e76188f1da327846a9b45f35d740db248080b5dfdd1a6479e4e8cbae95
% cached     : False
% title      : Human oversight
:- pred designed_for_human_oversight/1, gloss('high-risk AI system designed and developed to be effectively overseen by natural persons'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight_objective/1, gloss('human oversight aims to prevent or minimise risks to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measure_commensurate/1, gloss('oversight measures commensurate with risks, autonomy and context of use'), source('celex:32024R1689/oj#art_14').
:- pred built_in_oversight_measure/1, gloss('measure identified and built into high-risk AI system by provider before placing on market or putting into service'), source('celex:32024R1689/oj#art_14').
:- pred deployer_oversight_measure/1, gloss('measure identified by provider for deployer to implement'), source('celex:32024R1689/oj#art_14').
:- pred enable_understand_capacity_and_limitations/1, gloss('natural persons enabled to understand capacities and limitations and monitor operation'), source('celex:32024R1689/oj#art_14').
:- pred enable_awareness_automation_bias/1, gloss('natural persons enabled to remain aware of automation bias tendency'), source('celex:32024R1689/oj#art_14').
:- pred enable_interpret_output/1, gloss('natural persons enabled to correctly interpret system output'), source('celex:32024R1689/oj#art_14').
:- pred enable_decide_not_to_use/1, gloss('natural persons enabled to decide not to use or to disregard, override or reverse output'), source('celex:32024R1689/oj#art_14').
:- pred enable_intervene_or_interrupt/1, gloss('natural persons enabled to intervene or interrupt system through stop button or similar procedure'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_required/1, gloss('separate verification by at least two natural persons required for biometric identification systems'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_exempt/1, gloss('separate verification requirement does not apply for law enforcement, migration, border control or asylum'), source('celex:32024R1689/oj#art_14').

designed_for_human_oversight(S) :-
    high_risk_ai_system(S),
    human_machine_interface_tools(S),
    effectively_overseen_by_natural_persons(S).

human_oversight_objective(S) :-
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose_or_foreseeable_misuse(S),
    risk_to_health_safety_or_fundamental_rights_emerges(S),
    other_requirements_of_chapter_3_section_2_applied(S).

oversight_measure_commensurate(S) :-
    high_risk_ai_system(S),
    risks_level_of_autonomy_and_context_of_use(S, Risks, Autonomy, Context),
    measure_type(built_in_oversight_measure(S); deployer_oversight_measure(S)).

built_in_oversight_measure(S) :-
    high_risk_ai_system(S),
    technically_feasible(S),
    measure_identified_and_built_by_provider(S),
    before_placing_on_market_or_putting_into_service(S).

deployer_oversight_measure(S) :-
    high_risk_ai_system(S),
    measure_identified_by_provider(S),
    before_placing_on_market_or_putting_into_service(S),
    appropriate_for_deployer_implementation(S).

enable_understand_capacity_and_limitations(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, understand_capacities_and_limitations),
    persons_enabled(Persons, monitor_operation),
    persons_enabled(Persons, detect_and_address_anomalies_dysfunctions_unexpected_performance).

enable_awareness_automation_bias(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, remain_aware_of_automation_bias),
    used_to_provide_information_or_recommendations_for_decisions(S).

enable_interpret_output(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, correctly_interpret_output),
    interpretation_tools_and_methods_available(S).

enable_decide_not_to_use(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, decide_not_to_use_or_disregard_override_reverse_output).

enable_intervene_or_interrupt(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, intervene_in_operation),
    persons_enabled(Persons, interrupt_system),
    stop_button_or_similar_procedure(S),
    allows_system_to_come_to_halt_in_safe_state(S).

separate_verification_required(S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_1_point_a(S),
    \+ separate_verification_exempt(S).

separate_verification_exempt(S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_1_point_a(S),
    used_for_purposes_of_law_enforcement_migration_border_control_or_asylum(S),
    union_or_national_law_considers_requirement_disproportionate(S).

must_ensure_no_action_without_separate_verification(Deployer, S) :-
    deployer(Deployer),
    separate_verification_required(S),
    identification_resulting_from_system(Identification),
    \+ separately_verified_and_confirmed(Identification),
    \+ at_least_two_natural_persons_with_necessary_competence_training_and_confirmed(Identification).

must_ensure_verification_by_two_persons(Deployer, S) :-
    deployer(Deployer),
    separate_verification_required(S),
    identification_resulting_from_system(Identification),
    separately_verified_and_confirmed(Identification),
    at_least_two_natural_persons_with_necessary_competence_training_and_confirmed(Identification).

provenance(designed_for_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_objective/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measure_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(enable_understand_capacity_and_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(enable_awareness_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(enable_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(enable_decide_not_to_use/1, 'celex:32024R1689/oj#art_14').
provenance(enable_intervene_or_interrupt/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_required/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_exempt/1, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_no_action_without_separate_verification/2, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_verification_by_two_persons/2, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
