% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ab2590ce5b8d213afdf418589a39eca8af4a6931c6cff68ea2127ad260f78797
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred required_technical_documentation_content/2, gloss('specific information element required in technical documentation for an AI system'), source('celex:32024R1689/oj#anx_4').
:- pred technical_documentation_applies/1, gloss('AI system for which technical documentation is required'), source('celex:32024R1689/oj#anx_4').

technical_documentation_applies(S) :-
    ai_system(S).

required_technical_documentation_content(S, general_description) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, intended_purpose_description) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, provider_name_and_version) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, interaction_description) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, software_firmware_versions) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, market_placement_forms) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, hardware_description) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, product_component_visuals) :-
    technical_documentation_applies(S),
    safety_component(S).

required_technical_documentation_content(S, user_interface_description) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, instructions_for_use) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, development_methods) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, design_specifications) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, system_architecture) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, data_requirements) :-
    technical_documentation_applies(S),
    training_data(_D).

required_technical_documentation_content(S, human_oversight_assessment) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, predetermined_changes) :-
    technical_documentation_applies(S),
    substantial_modification(S).

required_technical_documentation_content(S, validation_testing_procedures) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, cybersecurity_measures) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, monitoring_functioning_control) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, performance_metrics_appropriateness) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, risk_management_system_description) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, lifecycle_changes_description) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, harmonised_standards_list) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, eu_declaration_of_conformity) :-
    technical_documentation_applies(S).

required_technical_documentation_content(S, post_market_monitoring_system) :-
    technical_documentation_applies(S).

provenance(required_technical_documentation_content/2, 'celex:32024R1689/oj#anx_4').
provenance(technical_documentation_applies/1, 'celex:32024R1689/oj#anx_4').

references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
