% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1cebbea76950da37d83b0dccf817290a9b218c0832631f2f9dadec8726e48359
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred required_technical_documentation_content/1, gloss('content requirements for technical documentation of general-purpose AI models'), source('celex:32024R1689/oj#anx_11').
:- pred required_systemic_risk_documentation_content/1, gloss('additional content requirements for technical documentation of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_11').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model presenting systemic risk'), source('celex:32024R1689/oj#anx_11').

required_technical_documentation_content(M) :-
    general_purpose_ai_model(M).

required_systemic_risk_documentation_content(M) :-
    general_purpose_ai_model_with_systemic_risk(M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

provenance(required_technical_documentation_content/1, 'celex:32024R1689/oj#anx_11').
provenance(required_systemic_risk_documentation_content/1, 'celex:32024R1689/oj#anx_11').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
