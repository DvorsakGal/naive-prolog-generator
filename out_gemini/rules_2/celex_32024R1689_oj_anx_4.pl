% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : e31c9e94abc5812583f989d2b606a09ca24c445fe7f6038d44f223354dbe3e80
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred contains_element/2, gloss('technical documentation contains the specified element or information'), source('celex:32024R1689/oj#anx_4').
:- pred compliant_technical_documentation/2, gloss('technical documentation meets the Annex IV requirements for the AI system'), source('celex:32024R1689/oj#anx_4').

% Annex IV specifies that technical documentation must contain at least the following elements,
% as applicable to the relevant AI system.
compliant_technical_documentation(Doc, System) :-
    technical_documentation(Doc),
    ai_system(System),
    contains_element(Doc, general_description(System)),
    contains_element(Doc, development_process_and_elements(System)),
    contains_element(Doc, monitoring_functioning_and_control(System)),
    contains_element(Doc, appropriateness_of_performance_metrics(System)),
    contains_element(Doc, risk_management_system_description(System)),
    contains_element(Doc, lifecycle_changes_description(System)),
    contains_element(Doc, standards_and_specifications(System)),
    contains_element(Doc, eu_declaration_of_conformity(System)),
    contains_element(Doc, post_market_monitoring_system_description(System)).

% Item 1 breakdown: General description
contains_element(Doc, general_description(System)) :-
    contains_element(Doc, intended_purpose_provider_and_version(System)),
    contains_element(Doc, system_interaction_description(System)),
    contains_element(Doc, software_firmware_versions_and_update_requirements(System)),
    contains_element(Doc, market_placement_forms_description(System)),
    contains_element(Doc, hardware_requirements_description(System)),
    contains_element(Doc, product_component_markings_and_layout(System)),
    contains_element(Doc, user_interface_description(System)),
    contains_element(Doc, instructions_for_use(System)).

% Item 2 breakdown: Detailed description of elements and development process
contains_element(Doc, development_process_and_elements(System)) :-
    contains_element(Doc, development_methods_and_steps(System)),
    contains_element(Doc, design_specifications(System)),
    contains_element(Doc, architecture_and_computational_resources(System)),
    contains_element(Doc, data_requirements_and_datasheets(System)),
    contains_element(Doc, human_oversight_measures_assessment(System)),
    contains_element(Doc, predetermined_changes_description(System)),
    contains_element(Doc, validation_and_testing_procedures(System)),
    contains_element(Doc, cybersecurity_measures(System)).

provenance(compliant_technical_documentation/2, 'celex:32024R1689/oj#anx_4').
provenance(contains_element/2, 'celex:32024R1689/oj#anx_4').

references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
