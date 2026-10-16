% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 20b71627bea372df64e654cd4963e94662e7dafe7fa10fb00376e533a915e242
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred procedural_rights_apply/1, gloss('procedural rights of economic operators apply'), source('celex:32024R1689/oj#art_94').

procedural_rights_apply(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides_model(Provider, Model).

provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
