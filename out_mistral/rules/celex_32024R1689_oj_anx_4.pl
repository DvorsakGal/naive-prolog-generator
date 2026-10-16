% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b1fb54740f97bc8314a7f33fa73b3fca40c89fd778a45c494ae872e8a365df6e
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred technical_documentation/1, gloss('technical documentation for an AI system'), source('celex:32024R1689/oj#anx_4').
:- pred must_contain_technical_documentation/2, gloss('provider must ensure technical documentation contains specified information'), source('celex:32024R1689/oj#anx_4').
:- pred technical_documentation_contains/2, gloss('technical documentation contains specified element'), source('celex:32024R1689/oj#anx_4').

% Main obligation: technical documentation shall contain at least the listed information
must_contain_technical_documentation(Provider, S) :-
    provider(Provider),
    ai_system(S),
    technical_documentation(Doc, S),
    technical_documentation_contains(Doc, general_description(S)),
    technical_documentation_contains(Doc, development_description(S)),
    technical_documentation_contains(Doc, monitoring_functioning_control(S)),
    technical_documentation_contains(Doc, performance_metrics_appropriateness(S)),
    technical_documentation_contains(Doc, risk_management_system_description(S)),
    technical_documentation_contains(Doc, lifecycle_changes_description(S)),
    technical_documentation_contains(Doc, harmonised_standards_list(S)),
    technical_documentation_contains(Doc, eu_declaration_of_conformity_copy(S)),
    technical_documentation_contains(Doc, post_market_performance_evaluation(S)).

% Helper: technical documentation is associated with an AI system
technical_documentation(Doc, S) :-
    ai_system(S),
    Doc = documentation(S).

% Element 1: General description of the AI system
technical_documentation_contains(Doc, general_description(S)) :-
    technical_documentation(Doc, S),
    contains(Doc, intended_purpose_description(S)),
    contains(Doc, provider_name_and_version(S)),
    contains(Doc, interaction_with_external_hardware_software(S)),
    contains(Doc, software_firmware_versions(S)),
    contains(Doc, forms_of_market_placement(S)),
    contains(Doc, hardware_description(S)),
    contains(Doc, product_external_features_illustration(S)),
    contains(Doc, deployer_user_interface_description(S)),
    contains(Doc, instructions_for_use_for_deployer(S)).

% Element 1(a): intended purpose, provider name, version
contains(Doc, intended_purpose_description(S)) :-
    technical_documentation(Doc, S),
    intended_purpose(S).

contains(Doc, provider_name_and_version(S)) :-
    technical_documentation(Doc, S),
    provider(P),
    places_on_market(P, S).

% Element 1(b): interaction with external hardware/software
contains(Doc, interaction_with_external_hardware_software(_S)).

% Element 1(c): software/firmware versions and update requirements
contains(Doc, software_firmware_versions(_S)).

% Element 1(d): forms of market placement
contains(Doc, forms_of_market_placement(S)) :-
    technical_documentation(Doc, S),
    placing_on_market(S).

contains(Doc, forms_of_market_placement(S)) :-
    technical_documentation(Doc, S),
    putting_into_service(S).

% Element 1(e): hardware description
contains(Doc, hardware_description(_S)).

% Element 1(f): product external features (where AI system is a component)
contains(Doc, product_external_features_illustration(S)) :-
    technical_documentation(Doc, S),
    safety_component(S).

% Element 1(g)-(h): user-interface and instructions for use
contains(Doc, deployer_user_interface_description(_S)).

contains(Doc, instructions_for_use_for_deployer(S)) :-
    technical_documentation(Doc, S),
    deployer(D),
    instructions_for_use(I),
    provides(I, D).

% Element 2: Detailed description of development elements and process
technical_documentation_contains(Doc, development_description(S)) :-
    technical_documentation(Doc, S),
    contains(Doc, development_methods_and_steps(S)),
    contains(Doc, design_specifications(S)),
    contains(Doc, system_architecture_description(S)),
    contains(Doc, data_requirements_description(S)),
    contains(Doc, human_oversight_assessment(S)),
    contains(Doc, predetermined_changes_description(S)),
    contains(Doc, validation_testing_procedures(S)),
    contains(Doc, cybersecurity_measures(S)).

% Element 2(a): development methods and steps
contains(Doc, development_methods_and_steps(_S)).

% Element 2(b): design specifications
contains(Doc, design_specifications(S)) :-
    technical_documentation(Doc, S),
    ai_system(S).

% Element 2(c): system architecture
contains(Doc, system_architecture_description(S)) :-
    technical_documentation(Doc, S),
    ai_system(S).

% Element 2(d): data requirements
contains(Doc, data_requirements_description(S)) :-
    technical_documentation(Doc, S),
    training_data(D).

% Element 2(e): human oversight assessment
contains(Doc, human_oversight_assessment(_S)).

% Element 2(f): pre-determined changes (where applicable)
contains(Doc, predetermined_changes_description(S)) :-
    technical_documentation(Doc, S),
    substantial_modification(S).

% Element 2(g): validation and testing procedures
contains(Doc, validation_testing_procedures(S)) :-
    technical_documentation(Doc, S),
    validation_data_set(D),
    testing_data(T).

% Element 2(h): cybersecurity measures
contains(Doc, cybersecurity_measures(_S)).

% Element 3: Monitoring, functioning and control
technical_documentation_contains(Doc, monitoring_functioning_control(S)) :-
    technical_documentation(Doc, S),
    contains(Doc, capabilities_and_limitations(S)),
    contains(Doc, foreseeable_unintended_outcomes_and_risks(S)),
    contains(Doc, human_oversight_measures_monitoring(S)),
    contains(Doc, input_data_specifications(S)).

contains(Doc, capabilities_and_limitations(S)) :-
    technical_documentation(Doc, S),
    performance_of_ai_system(S).

contains(Doc, foreseeable_unintended_outcomes_and_risks(S)) :-
    technical_documentation(Doc, S),
    risk(R),
    reasonably_foreseeable_misuse(S).

contains(Doc, human_oversight_measures_monitoring(_S)).

contains(Doc, input_data_specifications(S)) :-
    technical_documentation(Doc, S),
    input_data(D).

% Element 4: Appropriateness of performance metrics
technical_documentation_contains(Doc, performance_metrics_appropriateness(S)) :-
    technical_documentation(Doc, S),
    performance_of_ai_system(S).

% Element 5: Risk management system description
technical_documentation_contains(Doc, risk_management_system_description(S)) :-
    technical_documentation(Doc, S),
    post_market_monitoring_system(S).

% Element 6: Lifecycle changes description
technical_documentation_contains(Doc, lifecycle_changes_description(S)) :-
    technical_documentation(Doc, S),
    provider(P),
    places_on_market(P, S).

% Element 7: Harmonised standards list
technical_documentation_contains(Doc, harmonised_standards_list(S)) :-
    technical_documentation(Doc, S),
    harmonised_standard(H).

technical_documentation_contains(Doc, harmonised_standards_list(S)) :-
    technical_documentation(Doc, S),
    common_specification(C),
    \+ harmonised_standard_applied(S).

% Helper for "no harmonised standards applied"
harmonised_standard_applied(S) :-
    harmonised_standard(H),
    applies_to(H, S).

% Element 8: EU declaration of conformity copy
technical_documentation_contains(Doc, eu_declaration_of_conformity_copy(S)) :-
    technical_documentation(Doc, S),
    ce_marking(S).

% Element 9: Post-market performance evaluation
technical_documentation_contains(Doc, post_market_performance_evaluation(S)) :-
    technical_documentation(Doc, S),
    post_market_monitoring_system(S).

% Helper predicates
places_on_market(P, S) :-
    provider(P),
    placing_on_market(S).

provides(I, D) :-
    instructions_for_use(I),
    deployer(D).

% Provenance
provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(must_contain_technical_documentation/2, 'celex:32024R1689/oj#anx_4').
provenance(technical_documentation_contains/2, 'celex:32024R1689/oj#anx_4').

% References
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
