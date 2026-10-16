% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 464df0083cf3f148f96690c9ef233ce6c1a37f545da97ed6a55bad1b2234a1be
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred technical_documentation/1, gloss('technical documentation referred to in Article 11(1)'), source('celex:32024R1689/oj#anx_4').
:- pred contains_general_description/1, gloss('documentation contains a general description of the AI system'), source('celex:32024R1689/oj#anx_4').
:- pred contains_detailed_description_of_elements/1, gloss('documentation contains a detailed description of the elements and development process'), source('celex:32024R1689/oj#anx_4').
:- pred contains_monitoring_functioning_control_info/1, gloss('documentation contains detailed information about monitoring, functioning and control'), source('celex:32024R1689/oj#anx_4').
:- pred contains_performance_metrics_description/1, gloss('documentation contains a description of the appropriateness of performance metrics'), source('celex:32024R1689/oj#anx_4').
:- pred contains_risk_management_system_description/1, gloss('documentation contains a detailed description of the risk management system'), source('celex:32024R1689/oj#anx_4').
:- pred contains_lifecycle_changes_description/1, gloss('documentation contains a description of relevant changes made through the system lifecycle'), source('celex:32024R1689/oj#anx_4').
:- pred contains_harmonised_standards_list/1, gloss('documentation contains a list of harmonised standards applied'), source('celex:32024R1689/oj#anx_4').
:- pred contains_eu_declaration_of_conformity_copy/1, gloss('documentation contains a copy of the EU declaration of conformity'), source('celex:32024R1689/oj#anx_4').
:- pred contains_post_market_evaluation_system_description/1, gloss('documentation contains a description of the post-market evaluation system'), source('celex:32024R1689/oj#anx_4').

technical_documentation(D) :-
    contains_general_description(D),
    contains_detailed_description_of_elements(D),
    contains_monitoring_functioning_control_info(D),
    contains_performance_metrics_description(D),
    contains_risk_management_system_description(D),
    contains_lifecycle_changes_description(D),
    contains_harmonised_standards_list(D),
    contains_eu_declaration_of_conformity_copy(D),
    contains_post_market_evaluation_system_description(D).

provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_general_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_detailed_description_of_elements/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_monitoring_functioning_control_info/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_performance_metrics_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_risk_management_system_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_lifecycle_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_harmonised_standards_list/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_post_market_evaluation_system_description/1, 'celex:32024R1689/oj#anx_4').

references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
