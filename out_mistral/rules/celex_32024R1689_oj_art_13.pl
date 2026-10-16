% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 793125ab068cf700df3245e7475ec92fe7fd6a488f05edd6cbe1feb583b9e652
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_13').
:- pred sufficiently_transparent/1, gloss('operation transparent enough for deployers to interpret output and use appropriately'), source('celex:32024R1689/oj#art_13').
:- pred appropriate_transparency/1, gloss('appropriate type and degree of transparency ensured'), source('celex:32024R1689/oj#art_13').
:- pred accompanied_by_instructions_for_use/2, gloss('high-risk AI system accompanied by instructions for use in appropriate format'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_information/2, gloss('instructions for use contain specified information element'), source('celex:32024R1689/oj#art_13').
:- pred must_design_for_transparency/1, gloss('provider must design high-risk AI system for sufficient transparency'), source('celex:32024R1689/oj#art_13').
:- pred must_provide_instructions/1, gloss('provider must provide instructions for use with high-risk AI system'), source('celex:32024R1689/oj#art_13').

sufficiently_transparent(S) :-
    high_risk_ai_system(S),
    enables_deployer_interpretation(S),
    enables_appropriate_use(S).

appropriate_transparency(S) :-
    sufficiently_transparent(S),
    achieves_compliance_with_obligations(S).

enables_deployer_interpretation(S) :-
    high_risk_ai_system(S),
    deployer_can_interpret_output(S).

enables_appropriate_use(S) :-
    high_risk_ai_system(S),
    deployer_can_use_appropriately(S).

achieves_compliance_with_obligations(S) :-
    high_risk_ai_system(S),
    complies_with_provider_obligations(S),
    complies_with_deployer_obligations(S).

must_design_for_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    must_ensure_sufficient_transparency(P, S).

must_ensure_sufficient_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    sufficiently_transparent(S).

must_provide_instructions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    accompanied_by_instructions_for_use(S, instructions(digital_or_other)).

accompanied_by_instructions_for_use(S, Format) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I),
    format_appropriate(Format),
    information_concise(I),
    information_complete(I),
    information_correct(I),
    information_clear(I),
    information_relevant(I),
    information_accessible(I),
    information_comprehensible(I).

instructions_contain_information(I, identity_and_contact_details(provider)) :-
    instructions_for_use(I),
    contains(I, identity(provider)),
    contains(I, contact_details(provider)).

instructions_contain_information(I, identity_and_contact_details(authorised_representative)) :-
    instructions_for_use(I),
    contains(I, identity(authorised_representative)),
    contains(I, contact_details(authorised_representative)).

instructions_contain_information(I, characteristics_capabilities_limitations) :-
    instructions_for_use(I),
    contains(I, characteristics(S)),
    contains(I, capabilities(S)),
    contains(I, limitations_of_performance(S)).

instructions_contain_information(I, intended_purpose_info) :-
    instructions_for_use(I),
    contains(I, intended_purpose(S)).

instructions_contain_information(I, accuracy_robustness_cybersecurity_metrics) :-
    instructions_for_use(I),
    contains(I, level_of_accuracy(metrics)),
    contains(I, robustness(metrics)),
    contains(I, cybersecurity(metrics)),
    tested_and_validated_against(S, metrics),
    expected_performance(S, metrics),
    known_circumstances_impacting(S, metrics).

instructions_contain_information(I, risks_to_health_safety_fundamental_rights) :-
    instructions_for_use(I),
    contains(I, known_or_foreseeable_circumstances),
    circumstances_related_to_use(S),
    circumstances_may_lead_to_risks(S, health_and_safety),
    circumstances_may_lead_to_risks(S, fundamental_rights).

instructions_contain_information(I, technical_capabilities_for_explainability) :-
    instructions_for_use(I),
    contains(I, technical_capabilities(S)),
    contains(I, characteristics(S)),
    capabilities_provide_information_relevant_to_explain_output(S).

instructions_contain_information(I, performance_regarding_specific_persons_or_groups) :-
    instructions_for_use(I),
    contains(I, performance(S, specific_persons_or_groups)).

instructions_contain_information(I, specifications_for_input_data) :-
    instructions_for_use(I),
    contains(I, specifications(input_data)),
    contains(I, information(training_data_sets)),
    contains(I, information(validation_data_sets)),
    contains(I, information(testing_data_sets)),
    takes_into_account(S, intended_purpose(S)).

instructions_contain_information(I, information_to_interpret_output) :-
    instructions_for_use(I),
    contains(I, information_enabling_deployers),
    enables_interpretation_of_output(S),
    enables_appropriate_use(S).

instructions_contain_information(I, predetermined_changes) :-
    instructions_for_use(I),
    contains(I, changes(S)),
    contains(I, performance_changes(S)),
    predetermined_by_provider(S),
    at_moment_of_initial_conformity_assessment(S).

instructions_contain_information(I, human_oversight_measures) :-
    instructions_for_use(I),
    contains(I, human_oversight_measures(S)),
    contains(I, technical_measures(S)),
    measures_facilitate_interpretation(S, deployers).

instructions_contain_information(I, computational_hardware_resources) :-
    instructions_for_use(I),
    contains(I, computational_resources(S)),
    contains(I, hardware_resources(S)).

instructions_contain_information(I, expected_lifetime) :-
    instructions_for_use(I),
    contains(I, expected_lifetime(S)).

instructions_contain_information(I, maintenance_and_care_measures) :-
    instructions_for_use(I),
    contains(I, maintenance_measures(S)),
    contains(I, care_measures(S)),
    contains(I, frequency(S)),
    ensures_proper_functioning(S),
    includes_software_updates(S).

instructions_contain_information(I, log_mechanisms_description) :-
    instructions_for_use(I),
    contains(I, description(mechanisms)),
    mechanisms_included_within(S),
    mechanisms_allow_deployers(S),
    allows_collection_of_logs(S),
    allows_storage_of_logs(S),
    allows_interpretation_of_logs(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent/1, 'celex:32024R1689/oj#art_13').
provenance(appropriate_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_information/2, 'celex:32024R1689/oj#art_13').
provenance(must_design_for_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/1, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
