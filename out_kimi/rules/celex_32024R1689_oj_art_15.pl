% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 13647c2e9592094d459dbd2528c33b62f99be9fd4715277868ce2e21364f0f04
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred appropriate_level/2, gloss('appropriate level of a property for a system'), source('celex:32024R1689/oj#art_15').
:- pred accuracy/1, gloss('property of correct performance'), source('celex:32024R1689/oj#art_15').
:- pred robustness/1, gloss('property of resilience to errors and attacks'), source('celex:32024R1689/oj#art_15').
:- pred cybersecurity/1, gloss('property of resilience against unauthorised alteration'), source('celex:32024R1689/oj#art_15').
:- pred consistent_performance/2, gloss('consistent performance of a system in a property throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred lifecycle/1, gloss('entire lifecycle of a system'), source('celex:32024R1689/oj#art_15').
:- pred declared_in_instructions/2, gloss('property declared in instructions for use'), source('celex:32024R1689/oj#art_15').
:- pred resilient_against_errors/1, gloss('resilient against errors faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred error_fault_inconsistency/1, gloss('error fault or inconsistency in system or environment'), source('celex:32024R1689/oj#art_15').
:- pred interaction_with_natural_persons/1, gloss('interaction with natural persons causing errors'), source('celex:32024R1689/oj#art_15').
:- pred interaction_with_other_systems/1, gloss('interaction with other systems causing errors'), source('celex:32024R1689/oj#art_15').
:- pred technical_organisational_measures_taken/1, gloss('technical and organisational measures taken for resilience'), source('celex:32024R1689/oj#art_15').
:- pred technical_redundancy_solution/1, gloss('technical redundancy solution for robustness'), source('celex:32024R1689/oj#art_15').
:- pred backup_plan/1, gloss('backup plan as redundancy solution'), source('celex:32024R1689/oj#art_15').
:- pred fail_safe_plan/1, gloss('fail-safe plan as redundancy solution'), source('celex:32024R1689/oj#art_15').
:- pred continues_to_learn/1, gloss('system continues to learn after placement or putting into service'), source('celex:32024R1689/oj#art_15').
:- pred eliminate_or_reduce_biased_outputs/1, gloss('eliminate or reduce risk of biased outputs influencing future input'), source('celex:32024R1689/oj#art_15').
:- pred feedback_loop/1, gloss('feedback loop where biased outputs influence future input'), source('celex:32024R1689/oj#art_15').
:- pred mitigation_measures_for_feedback_loops/1, gloss('mitigation measures duly address feedback loops'), source('celex:32024R1689/oj#art_15').
:- pred resilient_against_unauthorised_alteration/1, gloss('resilient against unauthorised third party alteration'), source('celex:32024R1689/oj#art_15').
:- pred unauthorised_third_party/1, gloss('unauthorised third party attempting alteration'), source('celex:32024R1689/oj#art_15').
:- pred alter_use/2, gloss('alter the use of a system'), source('celex:32024R1689/oj#art_15').
:- pred alter_outputs/2, gloss('alter the outputs of a system'), source('celex:32024R1689/oj#art_15').
:- pred alter_performance/2, gloss('alter the performance of a system'), source('celex:32024R1689/oj#art_15').
:- pred exploit_vulnerability/2, gloss('exploit vulnerability of a system'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_to_circumstances_and_risks/1, gloss('technical solution appropriate to circumstances and risks'), source('celex:32024R1689/oj#art_15').
:- pred ai_specific_vulnerability/1, gloss('vulnerability specific to AI systems'), source('celex:32024R1689/oj#art_15').
:- pred prevent_attack/2, gloss('prevent an attack on a system'), source('celex:32024R1689/oj#art_15').
:- pred detect_attack/2, gloss('detect an attack on a system'), source('celex:32024R1689/oj#art_15').
:- pred respond_to_attack/2, gloss('respond to an attack on a system'), source('celex:32024R1689/oj#art_15').
:- pred resolve_attack/2, gloss('resolve an attack on a system'), source('celex:32024R1689/oj#art_15').
:- pred control_for_attack/2, gloss('control for an attack on a system'), source('celex:32024R1689/oj#art_15').
:- pred data_poisoning_attack/1, gloss('attack manipulating training data set'), source('celex:32024R1689/oj#art_15').
:- pred model_poisoning_attack/1, gloss('attack manipulating pre-trained components used in training'), source('celex:32024R1689/oj#art_15').
:- pred adversarial_example_attack/1, gloss('input designed to cause model mistake'), source('celex:32024R1689/oj#art_15').
:- pred model_evasion_attack/1, gloss('model evasion attack'), source('celex:32024R1689/oj#art_15').
:- pred confidentiality_attack/1, gloss('confidentiality attack on model'), source('celex:32024R1689/oj#art_15').
:- pred model_flaw/1, gloss('flaw in model'), source('celex:32024R1689/oj#art_15').

required_accuracy(S) :-
    high_risk_ai_system(S).

required_robustness(S) :-
    high_risk_ai_system(S).

required_cybersecurity(S) :-
    high_risk_ai_system(S).

appropriate_level(accuracy, S) :-
    high_risk_ai_system(S).

appropriate_level(robustness, S) :-
    high_risk_ai_system(S).

appropriate_level(cybersecurity, S) :-
    high_risk_ai_system(S).

consistent_performance(accuracy, S) :-
    high_risk_ai_system(S),
    lifecycle(L),
    throughout(S, L).

consistent_performance(robustness, S) :-
    high_risk_ai_system(S),
    lifecycle(L),
    throughout(S, L).

consistent_performance(cybersecurity, S) :-
    high_risk_ai_system(S),
    lifecycle(L),
    throughout(S, L).

must_achieve(_Provider, appropriate_level(accuracy, S)) :-
    high_risk_ai_system(S).

must_achieve(_Provider, appropriate_level(robustness, S)) :-
    high_risk_ai_system(S).

must_achieve(_Provider, appropriate_level(cybersecurity, S)) :-
    high_risk_ai_system(S).

must_ensure(_Provider, consistent_performance(accuracy, S)) :-
    high_risk_ai_system(S).

must_ensure(_Provider, consistent_performance(robustness, S)) :-
    high_risk_ai_system(S).

must_ensure(_Provider, consistent_performance(cybersecurity, S)) :-
    high_risk_ai_system(S).

declared_in_instructions(accuracy, S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I).

declared_in_instructions(accuracy_metrics, S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I).

resilient_against_errors(S) :-
    high_risk_ai_system(S),
    error_fault_inconsistency(E),
    occurs_in(E, S),
    occurs_in(E, environment(S)).

resilient_against_errors(S) :-
    high_risk_ai_system(S),
    error_fault_inconsistency(E),
    interaction_with_natural_persons(E),
    causes(E, S).

resilient_against_errors(S) :-
    high_risk_ai_system(S),
    error_fault_inconsistency(E),
    interaction_with_other_systems(E),
    causes(E, S).

must_be_resilient(_Provider, S) :-
    high_risk_ai_system(S),
    resilient_against_errors(S).

technical_organisational_measures_taken(S) :-
    high_risk_ai_system(S),
    resilient_against_errors(S).

must_take_measures(_Provider, technical_organisational_measures(S)) :-
    high_risk_ai_system(S),
    resilient_against_errors(S).

technical_redundancy_solution(S) :-
    high_risk_ai_system(S),
    robustness(R),
    achieves(S, R).

backup_plan(S) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(S).

fail_safe_plan(S) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(S).

continues_to_learn(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).
continues_to_learn(S) :-
    high_risk_ai_system(S),
    putting_into_service(S).

eliminate_or_reduce_biased_outputs(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(F),
    risk_of(F, S).

mitigation_measures_for_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(F),
    duly_addressed(F, S).

must_develop_to_eliminate_or_reduce(_Provider, S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    eliminate_or_reduce_biased_outputs(S).

must_ensure(_Provider, mitigation_measures_for_feedback_loops(S)) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(F).

resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    alter_use(T, S).
resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    alter_outputs(T, S).
resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    alter_performance(T, S).
resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    exploit_vulnerability(T, S).

must_be_resilient(_Provider, unauthorised_alteration(S)) :-
    high_risk_ai_system(S),
    resilient_against_unauthorised_alteration(S).

appropriate_to_circumstances_and_risks(S) :-
    high_risk_ai_system(S),
    technical_solution(T),
    ensures_cybersecurity(T, S).

ai_specific_vulnerability(data_poisoning_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(model_poisoning_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(adversarial_example_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(model_evasion_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(confidentiality_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(model_flaw(S)) :-
    high_risk_ai_system(S).

must_include_measures(_Provider, prevent_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, detect_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, respond_to_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, resolve_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, control_for_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, prevent_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, detect_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, respond_to_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, resolve_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, control_for_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, prevent_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, detect_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, respond_to_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, resolve_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, control_for_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, prevent_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, detect_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, respond_to_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, resolve_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, control_for_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, prevent_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, detect_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, respond_to_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, resolve_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, control_for_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, prevent_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, detect_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, respond_to_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, resolve_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).

must_include_measures(_Provider, control_for_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).

provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_level/2, 'celex:32024R1689/oj#art_15').
provenance(consistent_performance/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve/2, 'celex:32024R1689/oj#art_15').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_15').
provenance(declared_in_instructions/2, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_errors/1, 'celex:32024R1689/oj#art_15').
provenance(technical_organisational_measures_taken/1, 'celex:32024R1689/oj#art_15').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_15').
provenance(technical_redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(backup_plan/1, 'celex:32024R1689/oj#art_15').
provenance(fail_safe_plan/1, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn/1, 'celex:32024R1689/oj#art_15').
provenance(eliminate_or_reduce_biased_outputs/1, 'celex:32024R1689/oj#art_15').
provenance(feedback_loop/1, 'celex:32024R1689/oj#art_15').
provenance(mitigation_measures_for_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(must_develop_to_eliminate_or_reduce/2, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(unauthorised_third_party/1, 'celex:32024R1689/oj#art_15').
provenance(alter_use/2, 'celex:32024R1689/oj#art_15').
provenance(alter_outputs/2, 'celex:32024R1689/oj#art_15').
provenance(alter_performance/2, 'celex:32024R1689/oj#art_15').
provenance(exploit_vulnerability/2, 'celex:32024R1689/oj#art_15').
provenance(appropriate_to_circumstances_and_risks/1, 'celex:32024R1689/oj#art_15').
provenance(ai_specific_vulnerability/1, 'celex:32024R1689/oj#art_15').
provenance(prevent_attack/2, 'celex:32024R1689/oj#art_15').
provenance(detect_attack/2, 'celex:32024R1689/oj#art_15').
provenance(respond_to_attack/2, 'celex:32024R1689/oj#art_15').
provenance(resolve_attack/2, 'celex:32024R1689/oj#art_15').
provenance(control_for_attack/2, 'celex:32024R1689/oj#art_15').
provenance(data_poisoning_attack/1, 'celex:32024R1689/oj#art_15').
provenance(model_poisoning_attack/1, 'celex:32024R1689/oj#art_15').
provenance(adversarial_example_attack/1, 'celex:32024R1689/oj#art_15').
provenance(model_evasion_attack/1, 'celex:32024R1689/oj#art_15').
provenance(confidentiality_attack/1, 'celex:32024R1689/oj#art_15').
provenance(model_flaw/1, 'celex:32024R1689/oj#art_15').
provenance(must_include_measures/2, 'celex:32024R1689/oj#art_15').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
