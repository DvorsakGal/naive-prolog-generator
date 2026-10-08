% unit       : celex:32024R1689/oj#art_14
% title      : Human oversight
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : gpt-oss:120b-cloud
% prompt sha : 8e778f727a51e177ec3004f364b6151e1f9a865b299c7d9e733e27a3e4b775cb
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_14').
:- pred required_design_for_human_oversight/1, gloss('design and development enabling effective human oversight'), source('celex:32024R1689/oj#art_14').
:- pred objective_prevent_or_minimise_risk/1, gloss('human oversight aims to prevent or minimise health, safety or fundamental rights risks'), source('celex:32024R1689/oj#art_14').
:- pred usage_in_intended_purpose/1, gloss('AI system used in accordance with its intended purpose'), source('celex:32024R1689/oj#art_14').
:- pred usage_under_foreseeable_misuse/1, gloss('AI system used under reasonably foreseeable misuse'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_measures/1, gloss('oversight measures commensurate with risk, autonomy and context'), source('celex:32024R1689/oj#art_14').
:- pred commensurate_with_risk_autonomy_context/1, gloss('measures proportionate to risk, level of autonomy and context of use'), source('celex:32024R1689/oj#art_14').
:- pred provider_built_measures/1, gloss('measures built into the system by the provider before market placement'), source('celex:32024R1689/oj#art_14').
:- pred provider_identified_measures_for_deployer/1, gloss('measures identified by the provider for implementation by the deployer'), source('celex:32024R1689/oj#art_14').
:- pred required_provision_for_deployer/1, gloss('system provided to deployer so that natural persons can exercise oversight'), source('celex:32024R1689/oj#art_14').
:- pred enabled_understanding/1, gloss('natural persons can understand capacities and limitations'), source('celex:32024R1689/oj#art_14').
:- pred enabled_automation_bias_awareness/1, gloss('natural persons are aware of automation bias'), source('celex:32024R1689/oj#art_14').
:- pred enabled_interpret_output/1, gloss('natural persons can correctly interpret system output'), source('celex:32024R1689/oj#art_14').
:- pred enabled_decision_not_use/1, gloss('natural persons can decide not to use or override the system'), source('celex:32024R1689/oj#art_14').
:- pred enabled_intervention/1, gloss('natural persons can intervene or stop the system safely'), source('celex:32024R1689/oj#art_14').
:- pred required_two_person_verification/1, gloss('identifications must be verified by at least two competent natural persons'), source('celex:32024R1689/oj#art_14').
:- pred exception_two_person_verification/1, gloss('exception for law‑enforcement, migration, border control or asylum uses'), source('celex:32024R1689/oj#art_14').
:- pred law_enforcement_use/1, gloss('AI system used for law‑enforcement, migration, border control or asylum'), source('celex:32024R1689/oj#art_14').
:- pred annex_3_point_1_a/1, gloss('AI systems referred to in annex III point 1 a'), source('celex:32024R1689/oj#art_14').
:- pred provided_to_deployer/1, gloss('system is provided to the deployer'), source('celex:32024R1689/oj#art_14').

required_design_for_human_oversight(S) :-
    high_risk(S),
    effective_oversight_possible(S).

objective_prevent_or_minimise_risk(S) :-
    high_risk(S),
    (   usage_in_intended_purpose(S)
    ;   usage_under_foreseeable_misuse(S)
    ).

required_oversight_measures(S) :-
    high_risk(S),
    commensurate_with_risk_autonomy_context(S),
    (   provider_built_measures(S)
    ;   provider_identified_measures_for_deployer(S)
    ).

required_provision_for_deployer(S) :-
    high_risk(S),
    provided_to_deployer(S),
    enabled_understanding(S),
    enabled_automation_bias_awareness(S),
    enabled_interpret_output(S),
    enabled_decision_not_use(S),
    enabled_intervention(S).

required_two_person_verification(S) :-
    high_risk(S),
    annex_3_point_1_a(S),
    \+ exception_two_person_verification(S).

exception_two_person_verification(S) :-
    law_enforcement_use(S).

% -----------------------------------------------------------------
% Provenance
provenance(high_risk/1, 'celex:32024R1689/oj#art_14').
provenance(required_design_for_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(objective_prevent_or_minimise_risk/1, 'celex:32024R1689/oj#art_14').
provenance(usage_in_intended_purpose/1, 'celex:32024R1689/oj#art_14').
provenance(usage_under_foreseeable_misuse/1, 'celex:32024R1689/oj#art_14').
provenance(required_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(commensurate_with_risk_autonomy_context/1, 'celex:32024R1689/oj#art_14').
provenance(provider_built_measures/1, 'celex:32024R1689/oj#art_14').
provenance(provider_identified_measures_for_deployer/1, 'celex:32024R1689/oj#art_14').
provenance(required_provision_for_deployer/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_understanding/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_automation_bias_awareness/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_decision_not_use/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_intervention/1, 'celex:32024R1689/oj#art_14').
provenance(required_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(exception_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(law_enforcement_use/1, 'celex:32024R1689/oj#art_14').
provenance(annex_3_point_1_a/1, 'celex:32024R1689/oj#art_14').
provenance(provided_to_deployer/1, 'celex:32024R1689/oj#art_14').

% -----------------------------------------------------------------
% References
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
