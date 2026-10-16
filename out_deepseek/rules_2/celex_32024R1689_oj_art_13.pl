% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : ed8889a54f946ac91c14359a5fbbd16a38c32d6c1e7cadba8d214f5e1afc8acb
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred must_ensure_transparency/2, gloss('high-risk AI system must be designed to ensure transparent operation'), source('celex:32024R1689/oj#art_13').
:- pred must_provide_instructions_for_use/2, gloss('high-risk AI system must be accompanied by instructions for use'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_identity/2, gloss('instructions for use contain identity and contact details'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_characteristics/2, gloss('instructions for use contain characteristics, capabilities and limitations'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_changes/2, gloss('instructions for use contain pre-determined changes'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_oversight_measures/2, gloss('instructions for use contain human oversight measures'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_resources/2, gloss('instructions for use contain computational and hardware resources'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_log_mechanisms/2, gloss('instructions for use contain description of log mechanisms'), source('celex:32024R1689/oj#art_13').

must_ensure_transparency(S, D) :-
    high_risk_ai_system(S),
    deployer(D),
    operation_sufficiently_transparent(S, D).

operation_sufficiently_transparent(S, D) :-
    high_risk_ai_system(S),
    deployer(D),
    enables_interpretation_of_output(S, D),
    enables_appropriate_use(S, D).

must_provide_instructions_for_use(S, I) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I),
    in_appropriate_digital_format(I),
    concise_complete_correct_clear(I),
    relevant_accessible_comprehensible(I, D),
    deployer(D).

instructions_contain_identity(I, P) :-
    instructions_for_use(I),
    provider(P),
    contains_identity_and_contact(I, P).

instructions_contain_identity(I, R) :-
    instructions_for_use(I),
    authorised_representative(R),
    contains_identity_and_contact(I, R).

instructions_contain_characteristics(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_intended_purpose(I, S),
    contains_accuracy_robustness_cybersecurity(I, S),
    contains_foreseeable_risks(I, S),
    contains_explanation_capabilities(I, S),
    contains_performance_on_persons(I, S),
    contains_input_specifications(I, S),
    contains_output_interpretation_info(I, S).

instructions_contain_changes(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_pre_determined_changes(I, S).

instructions_contain_oversight_measures(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_human_oversight_measures(I, S),
    contains_technical_interpretation_measures(I, S).

instructions_contain_resources(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_computational_hardware_needs(I, S),
    contains_expected_lifetime(I, S),
    contains_maintenance_and_care(I, S).

instructions_contain_log_mechanisms(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_log_mechanism_description(I, S).

% Supporting predicates
:- pred operation_sufficiently_transparent/2, gloss('operation is sufficiently transparent'), source('celex:32024R1689/oj#art_13').
:- pred enables_interpretation_of_output/2, gloss('enables deployer to interpret output'), source('celex:32024R1689/oj#art_13').
:- pred enables_appropriate_use/2, gloss('enables deployer to use system appropriately'), source('celex:32024R1689/oj#art_13').
:- pred accompanies/2, gloss('instructions accompany the system'), source('celex:32024R1689/oj#art_13').
:- pred in_appropriate_digital_format/1, gloss('in appropriate digital format or otherwise'), source('celex:32024R1689/oj#art_13').
:- pred concise_complete_correct_clear/1, gloss('information is concise, complete, correct and clear'), source('celex:32024R1689/oj#art_13').
:- pred relevant_accessible_comprehensible/2, gloss('information is relevant, accessible and comprehensible'), source('celex:32024R1689/oj#art_13').
:- pred contains_identity_and_contact/2, gloss('contains identity and contact details'), source('celex:32024R1689/oj#art_13').
:- pred contains_intended_purpose/2, gloss('contains intended purpose'), source('celex:32024R1689/oj#art_13').
:- pred contains_accuracy_robustness_cybersecurity/2, gloss('contains accuracy, robustness and cybersecurity information'), source('celex:32024R1689/oj#art_13').
:- pred contains_foreseeable_risks/2, gloss('contains known or foreseeable risks'), source('celex:32024R1689/oj#art_13').
:- pred contains_explanation_capabilities/2, gloss('contains technical capabilities to explain output'), source('celex:32024R1689/oj#art_13').
:- pred contains_performance_on_persons/2, gloss('contains performance on specific persons or groups'), source('celex:32024R1689/oj#art_13').
:- pred contains_input_specifications/2, gloss('contains specifications for input data'), source('celex:32024R1689/oj#art_13').
:- pred contains_output_interpretation_info/2, gloss('contains information to interpret output'), source('celex:32024R1689/oj#art_13').
:- pred contains_pre_determined_changes/2, gloss('contains pre-determined changes'), source('celex:32024R1689/oj#art_13').
:- pred contains_human_oversight_measures/2, gloss('contains human oversight measures'), source('celex:32024R1689/oj#art_13').
:- pred contains_technical_interpretation_measures/2, gloss('contains technical measures for interpretation'), source('celex:32024R1689/oj#art_13').
:- pred contains_computational_hardware_needs/2, gloss('contains computational and hardware resources needed'), source('celex:32024R1689/oj#art_13').
:- pred contains_expected_lifetime/2, gloss('contains expected lifetime'), source('celex:32024R1689/oj#art_13').
:- pred contains_maintenance_and_care/2, gloss('contains maintenance and care measures'), source('celex:32024R1689/oj#art_13').
:- pred contains_log_mechanism_description/2, gloss('contains description of log mechanisms'), source('celex:32024R1689/oj#art_13').

provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_identity/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_changes/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_oversight_measures/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_resources/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_mechanisms/2, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
