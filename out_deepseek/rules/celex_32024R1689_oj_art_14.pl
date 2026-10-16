% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3892748452f99068c6bbff7c30704ae2c8e8b38fba3a9f8e49202c2d231cd85b
% cached     : False
% title      : Human oversight
:- pred must_be_effectively_overseen/2, gloss('high-risk AI system must be overseen by natural persons'), source('celex:32024R1689/oj#art_14/par_1').
:- pred human_oversight_aims_to_prevent_risks/1, gloss('human oversight aims to prevent or minimise risks'), source('celex:32024R1689/oj#art_14/par_2').
:- pred oversight_measures_commensurate/1, gloss('oversight measures commensurate with risks, autonomy and context'), source('celex:32024R1689/oj#art_14/par_3').
:- pred oversight_measure_type_a/1, gloss('oversight measure built into the system by the provider'), source('celex:32024R1689/oj#art_14/par_3/pnt_a').
:- pred oversight_measure_type_b/1, gloss('oversight measure identified by the provider for the deployer'), source('celex:32024R1689/oj#art_14/par_3/pnt_b').
:- pred human_oversight_capability/2, gloss('natural person assigned oversight has a required capability'), source('celex:32024R1689/oj#art_14/par_4').
:- pred must_verify_identification/2, gloss('deployer must have identification verified by two persons'), source('celex:32024R1689/oj#art_14/par_5').
:- pred exempt_from_dual_verification/1, gloss('system exempt from two-person verification requirement'), source('celex:32024R1689/oj#art_14/par_5').

% Paragraph 1
must_be_effectively_overseen(S, natural_persons) :-
    high_risk_ai_system(S),
    designed_for_human_oversight(S).

designed_for_human_oversight(S) :-
    high_risk_ai_system(S),
    appropriate_human_machine_interface_tools(S).

% Paragraph 2
human_oversight_aims_to_prevent_risks(S) :-
    high_risk_ai_system(S),
    oversight_aims_to_prevent_or_minimise_risks(S).

oversight_aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    risks_to_health_safety_or_fundamental_rights(S).

risks_to_health_safety_or_fundamental_rights(S) :-
    high_risk_ai_system(S),
    (   used_in_accordance_with_intended_purpose(S)
    ;   used_under_reasonably_foreseeable_misuse(S)
    ),
    risks_persist_despite_other_requirements(S).

% Paragraph 3
oversight_measures_commensurate(S) :-
    high_risk_ai_system(S),
    commensurate_with_risks_autonomy_and_context(S),
    (   oversight_measure_type_a(S)
    ;   oversight_measure_type_b(S)
    ).

oversight_measure_type_a(S) :-
    high_risk_ai_system(S),
    technically_feasible(S),
    built_into_system_by_provider(S),
    before_placing_on_market_or_putting_into_service(S).

oversight_measure_type_b(S) :-
    high_risk_ai_system(S),
    identified_by_provider(S),
    appropriate_for_deployer_implementation(S),
    before_placing_on_market_or_putting_into_service(S).

% Paragraph 4
human_oversight_capability(S, understand_capacities_and_limitations) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).

human_oversight_capability(S, monitor_operation) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).

human_oversight_capability(S, remain_aware_of_automation_bias) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).

human_oversight_capability(S, correctly_interpret_output) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).

human_oversight_capability(S, decide_not_to_use_or_override_output) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).

human_oversight_capability(S, intervene_or_interrupt) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).

% Paragraph 5
must_verify_identification(S, at_least_two_natural_persons) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3_point_1_a(S),
    \+ exempt_from_dual_verification(S).

exempt_from_dual_verification(S) :-
    high_risk_ai_system(S),
    used_for_purposes(law_enforcement, migration, border_control, asylum),
    disproportionate_under_union_or_national_law(dual_verification_requirement).

% Provenance
provenance(must_be_effectively_overseen/2, 'celex:32024R1689/oj#art_14/par_1').
provenance(human_oversight_aims_to_prevent_risks/1, 'celex:32024R1689/oj#art_14/par_2').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14/par_3').
provenance(oversight_measure_type_a/1, 'celex:32024R1689/oj#art_14/par_3/pnt_a').
provenance(oversight_measure_type_b/1, 'celex:32024R1689/oj#art_14/par_3/pnt_b').
provenance(human_oversight_capability/2, 'celex:32024R1689/oj#art_14/par_4').
provenance(must_verify_identification/2, 'celex:32024R1689/oj#art_14/par_5').
provenance(exempt_from_dual_verification/1, 'celex:32024R1689/oj#art_14/par_5').

% References
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
