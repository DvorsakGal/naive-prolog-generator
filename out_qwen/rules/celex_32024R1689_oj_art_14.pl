% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 17f4db7859daed6a2d72e3191b100a50b2cf3e138e8c818d88cb7977ec8c6323
% cached     : False
% title      : Human oversight
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight_measure/1, gloss('measure ensuring effective human oversight of an AI system'), source('celex:32024R1689/oj#art_14').
:- pred built_in_oversight_measure/1, gloss('oversight measure built into the system by the provider'), source('celex:32024R1689/oj#art_14').
:- pred deployer_implemented_oversight_measure/1, gloss('oversight measure identified by provider for implementation by deployer'), source('celex:32024R1689/oj#art_14').
:- pred biometric_identification_system_for_law_enforcement/1, gloss('high-risk AI system for biometric ID used in law enforcement, migration, border control or asylum'), source('celex:32024R1689/oj#art_14').
:- pred disproportionate_verification_requirement/1, gloss('situation where separate verification by two persons is considered disproportionate under Union or national law'), source('celex:32024R1689/oj#art_14').

must_design_for_human_oversight(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    human_oversight_measure(System).

human_oversight_measure(System) :-
    high_risk_ai_system(System),
    commensurate_with_risks_and_autonomy(System),
    (built_in_oversight_measure(System) ; deployer_implemented_oversight_measure(System)).

built_in_oversight_measure(System) :-
    high_risk_ai_system(System),
    technically_feasible_to_build_in(System),
    before_placing_on_market_or_service(System).

deployer_implemented_oversight_measure(System) :-
    high_risk_ai_system(System),
    appropriate_for_deployer_implementation(System),
    before_placing_on_market_or_service(System).

must_enable_oversight_capability(System, Capability) :-
    high_risk_ai_system(System),
    oversight_capability(Capability),
    appropriate_and_proportionate(System, Capability).

oversight_capability(understand_capacities_and_limitations).
oversight_capability(monitor_operation).
oversight_capability(aware_of_automation_bias).
oversight_capability(interpret_output).
oversight_capability(decide_not_to_use_or_override).
oversight_capability(intervene_or_interrupt_safely).

must_verify_identification_by_two_persons(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    biometric_identification_system(System),
    \+ exempt_from_two_person_verification(System).

exempt_from_two_person_verification(System) :-
    biometric_identification_system_for_law_enforcement(System),
    disproportionate_verification_requirement(System).

biometric_identification_system_for_law_enforcement(System) :-
    high_risk_ai_system(System),
    biometric_identification(System),
    (law_enforcement_purpose(System) ; migration_purpose(System) ; border_control_purpose(System) ; asylum_purpose(System)).

provenance(must_design_for_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(must_enable_oversight_capability/2, 'celex:32024R1689/oj#art_14').
provenance(oversight_capability/1, 'celex:32024R1689/oj#art_14').
provenance(must_verify_identification_by_two_persons/2, 'celex:32024R1689/oj#art_14').
provenance(exempt_from_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(biometric_identification_system_for_law_enforcement/1, 'celex:32024R1689/oj#art_14').
provenance(disproportionate_verification_requirement/1, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
