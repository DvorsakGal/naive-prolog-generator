% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 129bf5233a21c5bc198ec6694d9430d355b1b3b3d91bdff13d846cec8c455d3f
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred required_technical_documentation_for_general_purpose_ai_model/1, gloss('technical documentation content required for all general-purpose AI model providers'), source('celex:32024R1689/oj#anx_11').
:- pred required_additional_documentation_for_systemic_risk_model/1, gloss('additional technical documentation content required for general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_11').

required_technical_documentation_for_general_purpose_ai_model(Doc) :-
    general_purpose_ai_model_documentation(Doc),
    contains_general_description(Doc),
    contains_development_process_description(Doc).

required_additional_documentation_for_systemic_risk_model(Doc) :-
    general_purpose_ai_model_documentation(Doc),
    systemic_risk_model_documentation(Doc),
    contains_evaluation_strategy_description(Doc),
    contains_adversarial_testing_description(Doc),
    contains_system_architecture_description(Doc).

provenance(required_technical_documentation_for_general_purpose_ai_model/1, 'celex:32024R1689/oj#anx_11').
provenance(required_additional_documentation_for_systemic_risk_model/1, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
