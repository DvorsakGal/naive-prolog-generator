% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : d14e209951c62f1009e75d1f2194748bc45371efcaf35d5184657259fd007831
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred required_technical_documentation_element/2, gloss('specific information element required in technical documentation for an AI system'), source('celex:32024R1689/oj#anx_4').
:- pred general_description_of_ai_system/1, gloss('general description of the AI system including purpose and provider'), source('celex:32024R1689/oj#anx_4').
:- pred detailed_development_description/1, gloss('detailed description of AI system elements and development process'), source('celex:32024R1689/oj#anx_4').
:- pred monitoring_and_control_information/1, gloss('detailed information about monitoring functioning and control of AI system'), source('celex:32024R1689/oj#anx_4').
:- pred performance_metrics_appropriateness_description/1, gloss('description of appropriateness of performance metrics for specific AI system'), source('celex:32024R1689/oj#anx_4').
:- pred risk_management_system_description/1, gloss('detailed description of risk management system'), source('celex:32024R1689/oj#anx_4').
:- pred lifecycle_changes_description/1, gloss('description of relevant changes made by provider through lifecycle'), source('celex:32024R1689/oj#anx_4').
:- pred harmonised_standards_list/1, gloss('list of harmonised standards applied or solutions adopted'), source('celex:32024R1689/oj#anx_4').
:- pred eu_declaration_of_conformity_copy/1, gloss('copy of EU declaration of conformity'), source('celex:32024R1689/oj#anx_4').
:- pred post_market_monitoring_system_description/1, gloss('detailed description of system to evaluate performance in post-market phase'), source('celex:32024R1689/oj#anx_4').

required_technical_documentation_element(S, general_description) :-
    ai_system(S),
    general_description_of_ai_system(S).

required_technical_documentation_element(S, development_process) :-
    ai_system(S),
    detailed_development_description(S).

required_technical_documentation_element(S, monitoring_control) :-
    ai_system(S),
    monitoring_and_control_information(S).

required_technical_documentation_element(S, performance_metrics) :-
    ai_system(S),
    performance_metrics_appropriateness_description(S).

required_technical_documentation_element(S, risk_management) :-
    ai_system(S),
    risk_management_system_description(S).

required_technical_documentation_element(S, lifecycle_changes) :-
    ai_system(S),
    lifecycle_changes_description(S).

required_technical_documentation_element(S, standards_compliance) :-
    ai_system(S),
    harmonised_standards_list(S).

required_technical_documentation_element(S, declaration_of_conformity) :-
    ai_system(S),
    eu_declaration_of_conformity_copy(S).

required_technical_documentation_element(S, post_market_monitoring) :-
    ai_system(S),
    post_market_monitoring_system_description(S).

provenance(required_technical_documentation_element/2, 'celex:32024R1689/oj#anx_4').
provenance(general_description_of_ai_system/1, 'celex:32024R1689/oj#anx_4').
provenance(detailed_development_description/1, 'celex:32024R1689/oj#anx_4').
provenance(monitoring_and_control_information/1, 'celex:32024R1689/oj#anx_4').
provenance(performance_metrics_appropriateness_description/1, 'celex:32024R1689/oj#anx_4').
provenance(risk_management_system_description/1, 'celex:32024R1689/oj#anx_4').
provenance(lifecycle_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(harmonised_standards_list/1, 'celex:32024R1689/oj#anx_4').
provenance(eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_4').
provenance(post_market_monitoring_system_description/1, 'celex:32024R1689/oj#anx_4').

references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
