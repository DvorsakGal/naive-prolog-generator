% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0543cb75181800c0a93c453754074cf0e83da94b4abb9c78df0b339718c39e75
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred technical_documentation/1, gloss('documentation containing required information for an AI system'), source('celex:32024R1689/oj#anx_4').
:- pred contains_general_description/1, gloss('documentation includes a general description of the AI system'), source('celex:32024R1689/oj#anx_4').
:- pred contains_element_description/1, gloss('documentation includes a detailed description of elements and development process'), source('celex:32024R1689/oj#anx_4').
:- pred contains_monitoring_information/1, gloss('documentation includes detailed monitoring, functioning and control information'), source('celex:32024R1689/oj#anx_4').
:- pred contains_performance_metrics_description/1, gloss('documentation includes description of appropriateness of performance metrics'), source('celex:32024R1689/oj#anx_4').
:- pred contains_risk_management_description/1, gloss('documentation includes detailed description of the risk management system'), source('celex:32024R1689/oj#anx_4').
:- pred contains_lifecycle_changes_description/1, gloss('documentation includes description of relevant changes through lifecycle'), source('celex:32024R1689/oj#anx_4').
:- pred contains_harmonised_standards_list/1, gloss('documentation includes list of harmonised standards applied'), source('celex:32024R1689/oj#anx_4').
:- pred contains_eu_declaration_of_conformity/1, gloss('documentation includes a copy of the EU declaration of conformity'), source('celex:32024R1689/oj#anx_4').
:- pred contains_post_market_evaluation_description/1, gloss('documentation includes description of post-market performance evaluation system'), source('celex:32024R1689/oj#anx_4').

technical_documentation(D) :-
    contains_general_description(D),
    contains_element_description(D),
    contains_monitoring_information(D),
    contains_performance_metrics_description(D),
    contains_risk_management_description(D),
    contains_lifecycle_changes_description(D),
    contains_harmonised_standards_list(D),
    contains_eu_declaration_of_conformity(D),
    contains_post_market_evaluation_description(D).

provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_general_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_element_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_monitoring_information/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_performance_metrics_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_risk_management_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_lifecycle_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_harmonised_standards_list/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_post_market_evaluation_description/1, 'celex:32024R1689/oj#anx_4').

references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
