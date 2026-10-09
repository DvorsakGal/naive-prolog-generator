% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 477611b58027e6b5f705654d620c87efcac7540c631d03cf8c64d977a233ff5b
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred must_provide_technical_documentation/2, gloss('provider must provide technical documentation item'), source('celex:32024R1689/oj#anx_4').
:- pred required_technical_documentation/1, gloss('required item in technical documentation'), source('celex:32024R1689/oj#anx_4').

required_technical_documentation(general_description).
required_technical_documentation(detailed_description_of_elements).
required_technical_documentation(monitoring_function_control_information).
required_technical_documentation(performance_metrics_appropriateness_description).
required_technical_documentation(risk_management_system_description).
required_technical_documentation(provider_lifecycle_changes_description).
required_technical_documentation(harmonised_standards_list).
required_technical_documentation(eu_declaration_of_conformity_copy).
required_technical_documentation(post_market_performance_evaluation_description).

must_provide_technical_documentation(Provider, Item) :-
    provider(Provider),
    required_technical_documentation(Item).

provenance(must_provide_technical_documentation/2, 'celex:32024R1689/oj#anx_4').
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_4').

references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
