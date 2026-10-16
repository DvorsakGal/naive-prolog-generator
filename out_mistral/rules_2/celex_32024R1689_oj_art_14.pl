% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 94d19b90a0f915df2cab028b12a50dcf7cdc45d3d3939e997eb0f8896c4fcd06
% cached     : False
% title      : Human oversight
:- pred effective_human_oversight/1, gloss('high-risk AI system can be effectively overseen by natural persons during use'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight_measures/1, gloss('measures for human oversight of high-risk AI system'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measures_commensurate/1, gloss('oversight measures commensurate with risks, level of autonomy and context of use'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measures_built_in_by_provider/1, gloss('oversight measures identified and built into system by provider before placing on market or putting into service'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measures_for_deployer/1, gloss('oversight measures identified by provider before placing on market or putting into service and appropriate for deployer to implement'), source('celex:32024R1689/oj#art_14').
:- pred deployer_enabled_to_understand_capacities_limitations/1, gloss('natural persons assigned human oversight enabled to properly understand relevant capacities and limitations and monitor operation'), source('celex:32024R1689/oj#art_14').
:- pred deployer_enabled_to_monitor_operation/1, gloss('natural persons assigned human oversight enabled to duly monitor operation including detecting and addressing anomalies, dysfunctions and unexpected performance'), source('celex:32024R1689/oj#art_14').
:- pred deployer_aware_of_automation_bias/1, gloss('natural persons assigned human oversight remain aware of possible tendency of automatically relying or over-relying on output (automation bias)'), source('celex:32024R1689/oj#art_14').
:- pred deployer_enabled_to_interpret_output/1, gloss('natural persons assigned human oversight enabled to correctly interpret output taking into account interpretation tools and methods available'), source('celex:32024R1689/oj#art_14').
:- pred deployer_enabled_to_decide_not_to_use/1, gloss('natural persons assigned human oversight enabled to decide not to use system or disregard, override or reverse output'), source('celex:32024R1689/oj#art_14').
:- pred deployer_enabled_to_intervene_or_interrupt/1, gloss('natural persons assigned human oversight enabled to intervene in operation or interrupt system through stop button or similar procedure to halt in safe state'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_by_two_persons_required/1, gloss('no action or decision taken on basis of identification unless separately verified and confirmed by at least two natural persons'), source('celex:32024R1689/oj#art_14').
:- pred annex_3_point_1_a_system/1, gloss('high-risk AI system referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_14').

effective_human_oversight(S) :-
    high_risk_ai_system(S),
    designed_for_effective_oversight(S).

designed_for_effective_oversight(S) :-
    high_risk_ai_system(S),
    has_appropriate_human_machine_interface_tools(S),
    overseen_by_natural_persons_during_use(S).

human_oversight_measures(S) :-
    high_risk_ai_system(S),
    oversight_aims_to_prevent_or_minimise_risks(S).

oversight_aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    aims_to_prevent_or_minimise_risks_to_health_safety_fundamental_rights(S),
    risks_persist_despite_other_requirements(S).

risks_persist_despite_other_requirements(S) :-
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose(S).

risks_persist_despite_other_requirements(S) :-
    high_risk_ai_system(S),
    reasonably_foreseeable_misuse_conditions(S).

oversight_measures_commensurate(S) :-
    high_risk_ai_system(S),
    commensurate_with_risks(S),
    commensurate_with_level_of_autonomy(S),
    commensurate_with_context_of_use(S).

human_oversight_measures(S) :-
    oversight_measures_commensurate(S),
    ensured_through_built_in_measures(S).

human_oversight_measures(S) :    oversight_measures_commensurate(S),
    ensured_through_deployer_measures(S).

human_oversight_measures(S) :-
    oversight_measures_commensurate(S),
    ensured_through_built_in_measures(S),
    ensured_through_deployer_measures(S).

ensured_through_built_in_measures(S) :-
    oversight_measures_built_in_by_provider(S).

ensured_through_deployer_measures(S) :-
    oversight_measures_for_deployer(S).

oversight_measures_built_in_by_provider(S) :-
    high_risk_ai_system(S),
    provider_identified_and_built(S),
    technically_feasible(S),
    before_placing_on_market_or_putting_into_service(S).

oversight_measures_for_deployer(S) :-
    high_risk_ai_system(S),
    provider_identified(S),
    before_placing_on_market_or_putting_into_service(S),
    appropriate_for_deployer_to_implement(S).

deployer_enabled_to_understand_capacities_limitations(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    enabled_to_understand_capacities_and_limitations(D, S).

deployer_enabled_to_monitor_operation(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    able_to_detect_anomalies_dysfunctions_unexpected_performance(D, S).

deployer_aware_of_automation_bias(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    aware_of_automation_bias(D, S).

deployer_enabled_to_interpret_output(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    interpretation_methods_available(D, S).

deployer_enabled_to_decide_not_to_use(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    can_decide_not_to_use(D, S).

deployer_enabled_to_intervene_or_interrupt(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    can_intervene_or_interrupt(D, S).

separate_verification_by_two_persons_required(S) :-
    annex_3_point_1_a_system(S),
    high_risk_ai_system(S),
    identification_based_action_or_decision(S),
    \+ separately_verified_and_confirmed(S).

separate_verification_by_two_persons_required(S) :-
    annex_3_point_1_a_system(S),
    high_risk_ai_system(S),
    identification_based_action_or_decision(S),
    separately_verified_and_confirmed(S),
    \+ verified_by_at_least_two_natural_persons(S).

annex_3_point_1_a_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3_point_1_a(S).

exempt_separate_verification_law_enforcement(S) :-
    annex_3_point_1_a_system(S),
    for_purposes_of_law_enforcement(S),
    union_law_considers_application_disproportionate(S).

exempt_separate_verification_law_enforcement(S) :-
    annex_3_point_1_a_system(S),
    for_purposes_of_law_enforcement(S),
    in_accordance_with_national_rules(S),
    union_law_considers_application_disproportionate(S).

exempt_separate_verification_migration_border_asylum(S) :-
    annex_3_point_1_a_system(S),
    used_for_migration_border_control_or_asylum(S),
    union_law_considers_application_disproportionate(S).

exempt_separate_verification_migration_border_asylum(S) :-
    annex_3_point_1_a_system(S),
    used_for_migration_border_control_or_asylum(S),
    in_accordance_with_national_rules(S),
    union_law_considers_application_disproportionate(S).

must_enable_deployer_capabilities(Provider, S) :-
    high_risk_ai_system(S),
    provider(Provider),
    deployer_enabled_to_understand_capacities_limitations(S),
    deployer_enabled_to_monitor_operation(S),
    deployer_aware_of_automation_bias(S),
    deployer_enabled_to_interpret_output(S),
    deployer_enabled_to_decide_not_to_use(S),
    deployer_enabled_to_intervene_or_interrupt(S).

provenance(effective_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_built_in_by_provider/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_for_deployer/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_understand_capacities_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_monitor_operation/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_aware_of_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_decide_not_to_use/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_intervene_or_interrupt/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_by_two_persons_required/1, 'celex:32024R1689/oj#art_14').
provenance(annex_3_point_1_a_system/1, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
