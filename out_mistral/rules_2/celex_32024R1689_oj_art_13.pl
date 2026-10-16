% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : be7733e5aa5e3de7d34b862d5c0db0108d15a813e070a82423f78b050044c504
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred sufficiently_transparent_operation/1, gloss('high-risk AI system operation is sufficiently transparent to enable deployers to interpret output and use it appropriately'), source('celex:32024R1689/oj#art_13').
:- pred appropriate_type_and_degree_of_transparency/1, gloss('appropriate type and degree of transparency ensured with view to achieving compliance with provider and deployer obligations'), source('celex:32024R1689/oj#art_13').
:- pred accompanied_by_instructions_for_use/1, gloss('high-risk AI system accompanied by instructions for use in appropriate digital format or otherwise'), source('celex:32024R1689/oj#art_13').
:- pred instructions_concise_complete_correct_clear/1, gloss('instructions for use are concise, complete, correct and clear'), source('celex:32024R1689/oj#art_13').
:- pred instructions_relevant_accessible_comprehensible/1, gloss('instructions for use are relevant, accessible and comprehensible to deployers'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_provider_identity_and_contact/1, gloss('instructions for use contain identity and contact details of provider and where applicable authorised representative'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_characteristics_capabilities_limitations/1, gloss('instructions for use contain characteristics, capabilities and limitations of performance'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_intended_purpose/1, gloss('instructions for use contain intended purpose of high-risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_accuracy_robustness_cybersecurity_metrics/1, gloss('instructions for use contain level of accuracy including metrics, robustness and cybersecurity against which system has been tested and validated'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_known_foreseeable_circumstances_impacting_accuracy/1, gloss('instructions for use contain any known and foreseeable circumstances that may have impact on expected level of accuracy, robustness and cybersecurity'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_risk_circumstances_health_safety_fundamental_rights/1, gloss('instructions for use contain any known or foreseeable circumstance related to use in accordance with intended purpose or under conditions of reasonably foreseeable misuse which may lead to risks to health and safety or fundamental rights'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_technical_capabilities_for_explaining_output/1, gloss('instructions for use contain where applicable technical capabilities and characteristics to provide information relevant to explain output'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_performance_specific_persons_or_groups/1, gloss('instructions for use contain when appropriate performance regarding specific persons or groups of persons on which system is intended to be used'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_input_data_specifications/1, gloss('instructions for use contain when appropriate specifications for input data or any other relevant information in terms of training, validation and testing data sets used'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_information_to_interpret_output/1, gloss('instructions for use contain where applicable information to enable deployers to interpret output and use it appropriately'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_predetermined_changes/1, gloss('instructions for use contain changes to high-risk AI system and its performance which have been pre-determined by provider at moment of initial conformity assessment'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_human_oversight_measures/1, gloss('instructions for use contain human oversight measures including technical measures put in place to facilitate interpretation of outputs by deployers'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_computational_hardware_resources/1, gloss('instructions for use contain computational and hardware resources needed'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_expected_lifetime/1, gloss('instructions for use contain expected lifetime of high-risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_maintenance_care_measures/1, gloss('instructions for use contain necessary maintenance and care measures including their frequency to ensure proper functioning including as regards software updates'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_log_mechanisms_description/1, gloss('instructions for use contain where relevant description of mechanisms included within high-risk AI system that allows deployers to properly collect, store and interpret logs'), source('celex:32024R1689/oj#art_13').

sufficiently_transparent_operation(S) :-
    high_risk_ai_system(S).

appropriate_type_and_degree_of_transparency(S) :-
    high_risk_ai_system(S),
    sufficiently_transparent_operation(S).

accompanied_by_instructions_for_use(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).

instructions_concise_complete_correct_clear(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_relevant_accessible_comprehensible(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_provider_identity_and_contact(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_characteristics_capabilities_limitations(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_intended_purpose(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S),
    intended_purpose(S).

instructions_contain_accuracy_robustness_cybersecurity_metrics(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).

instructions_contain_known_foreseeable_circumstances_impacting_accuracy(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).

instructions_contain_risk_circumstances_health_safety_fundamental_rights(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S),
    reasonably_foreseeable_misuse_conditions(S).

instructions_contain_technical_capabilities_for_explaining_output(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).

instructions_contain_performance_specific_persons_or_groups(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).

instructions_contain_input_data_specifications(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S),
    training_data(S).

instructions_contain_information_to_interpret_output(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).

instructions_contain_predetermined_changes(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_human_oversight_measures(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_computational_hardware_resources(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_expected_lifetime(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_maintenance_care_measures(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

instructions_contain_log_mechanisms_description(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).

provenance(sufficiently_transparent_operation/1, 'celex:32024R1689/oj#art_13').
provenance(appropriate_type_and_degree_of_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_concise_complete_correct_clear/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_relevant_accessible_comprehensible/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_provider_identity_and_contact/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics_capabilities_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_intended_purpose/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_accuracy_robustness_cybersecurity_metrics/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_known_foreseeable_circumstances_impacting_accuracy/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_risk_circumstances_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_technical_capabilities_for_explaining_output/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_performance_specific_persons_or_groups/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_input_data_specifications/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_information_to_interpret_output/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_computational_hardware_resources/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_expected_lifetime/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_maintenance_care_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_mechanisms_description/1, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
