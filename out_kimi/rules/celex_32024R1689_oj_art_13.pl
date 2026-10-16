% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ac25ba6a6d40a65b286dacdcec938d87df1a33720a91ff8eccfb5ef8d8362884
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred must_ensure_transparency/2, gloss('provider must ensure AI system is sufficiently transparent'), source('celex:32024R1689/oj#art_13/par_1').
:- pred must_provide_instructions_for_use/2, gloss('provider must provide instructions for use with high-risk AI system'), source('celex:32024R1689/oj#art_13/par_2').
:- pred instructions_for_use_content/2, gloss('required content of instructions for use'), source('celex:32024R1689/oj#art_13/par_3').

must_ensure_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    designed_and_developed_by(P, S),
    sufficient_transparency_for_interpretation(S),
    sufficient_transparency_for_appropriate_use(S).

sufficient_transparency_for_interpretation(S) :-
    high_risk_ai_system(S),
    deployer_can_interpret_output(S).

sufficient_transparency_for_appropriate_use(S) :-
    high_risk_ai_system(S),
    deployer_can_use_appropriately(S).

appropriate_transparency(S) :-
    high_risk_ai_system(S),
    type_and_degree_appropriate_for_compliance(S, obligations(provider_and_deployer)).

must_provide_instructions_for_use(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    instructions_for_use(I),
    accompanies(I, S),
    appropriate_format(I),
    concise(I),
    complete(I),
    correct(I),
    clear(I),
    relevant(I),
    accessible(I),
    comprehensible(I).

instructions_for_use_content(I, identity_and_contact(P, R)) :-
    instructions_for_use(I),
    provider(P),
    accompanies(I, S),
    high_risk_ai_system(S),
    developed_by(P, S),
    authorised_representative(R),
    mandated_by(R, P).

instructions_for_use_content(I, characteristics_capabilities_limitations(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S).

instructions_for_use_content(I, intended_purpose(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S).

instructions_for_use_content(I, accuracy_robustness_cybersecurity(S, Level, Metrics)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    tested_and_validated_against(S, Level),
    accuracy_metrics(Metrics),
    robustness_metrics(Metrics),
    cybersecurity_metrics(Metrics),
    known_foreseeable_circumstances_affecting(S, Level).

instructions_for_use_content(I, risks_to_health_safety_fundamental_rights(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    (   intended_use_circumstances_leading_to_risks(S)
    ;   reasonably_foreseeable_misuse_circumstances_leading_to_risks(S)
    ),
    risks_to_health_and_safety(S),
    risks_to_fundamental_rights(S).

instructions_for_use_content(I, explainability_capabilities(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    technical_capabilities_for_explanation(S).

instructions_for_use_content(I, performance_on_specific_persons_or_groups(S, Groups)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    when_appropriate,
    intended_persons_or_groups(S, Groups).

instructions_for_use_content(I, input_data_specifications(S, DataInfo)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    when_appropriate,
    input_data_specifications(DataInfo),
    training_data_info(DataInfo),
    validation_data_info(DataInfo),
    testing_data_info(DataInfo),
    relevant_for_intended_purpose(DataInfo, S).

instructions_for_use_content(I, output_interpretation_information(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    applicable,
    enables_deployer_to_interpret_output(S),
    enables_deployer_to_use_appropriately(S).

instructions_for_use_content(I, predetermined_changes(S, Changes)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    pre_determined_changes(S, Changes),
    determined_at_conformity_assessment(Changes),
    initial_conformity_assessment(S).

instructions_for_use_content(I, human_oversight_measures(S, Measures)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    human_oversight_measures(S, Measures),
    technical_measures_for_output_interpretation(Measures).

instructions_for_use_content(I, computational_and_hardware_resources(S, Resources)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    computational_resources_needed(S, Resources),
    hardware_resources_needed(S, Resources).

instructions_for_use_content(I, expected_lifetime(S, Lifetime)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    expected_lifetime(S, Lifetime).

instructions_for_use_content(I, maintenance_and_care(S, Measures, Frequency)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    maintenance_measures(S, Measures),
    care_measures(S, Measures),
    frequency(Measures, Frequency),
    necessary_for_proper_functioning(S, Measures),
    includes_software_updates(Measures).

instructions_for_use_content(I, log_mechanisms(S, Mechanisms)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    when_relevant,
    log_collection_mechanisms(S, Mechanisms),
    log_storage_mechanisms(S, Mechanisms),
    log_interpretation_mechanisms(S, Mechanisms),
    enables_compliance_with_article_12(S, Mechanisms).

provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(sufficient_transparency_for_interpretation/1, 'celex:32024R1689/oj#art_13').
provenance(sufficient_transparency_for_appropriate_use/1, 'celex:32024R1689/oj#art_13').
provenance(appropriate_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_content/2, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
