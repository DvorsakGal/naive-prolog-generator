% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4ec421118c039a217232d7bbaa7cac541037e0f07c9db9b974306685dbee4839
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred technical_documentation/1, gloss('technical documentation of an AI system'), source('celex:32024R1689/oj#anx_4').
:- pred contains_element/2, gloss('documentation contains a specific required element'), source('celex:32024R1689/oj#anx_4').
:- pred required_technical_documentation/1, gloss('technical documentation meeting requirements of Annex IV'), source('celex:32024R1689/oj#anx_4').

provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_element/2, 'celex:32024R1689/oj#anx_4').
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_4').

references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

required_technical_documentation(Doc) :-
    technical_documentation(Doc),
    contains_element(Doc, general_description),
    contains_element(Doc, development_process_and_elements),
    contains_element(Doc, monitoring_functioning_and_control),
    contains_element(Doc, performance_metrics_appropriateness),
    contains_element(Doc, risk_management_system_description),
    contains_element(Doc, lifecycle_changes_description),
    contains_element(Doc, applied_standards_and_specifications),
    contains_element(Doc, eu_declaration_of_conformity_copy),
    contains_element(Doc, post_market_monitoring_system_description).

contains_element(Doc, general_description) :-
    contains_element(Doc, intended_purpose_provider_version),
    contains_element(Doc, hardware_software_interaction),
    contains_element(Doc, software_firmware_versions),
    contains_element(Doc, market_placement_forms),
    contains_element(Doc, intended_hardware),
    contains_element(Doc, product_component_features),
    contains_element(Doc, user_interface_description),
    contains_element(Doc, instructions_for_use).

contains_element(Doc, development_process_and_elements) :-
    contains_element(Doc, development_methods_and_steps),
    contains_element(Doc, design_specifications),
    contains_element(Doc, system_architecture_and_resources),
    contains_element(Doc, data_requirements_and_sets),
    contains_element(Doc, human_oversight_assessment),
    contains_element(Doc, predetermined_changes),
    contains_element(Doc, validation_and_testing_procedures),
    contains_element(Doc, cybersecurity_measures).
