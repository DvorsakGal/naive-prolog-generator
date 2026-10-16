% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 2a11788af13ad95af7ae15874ddee1bff808e3df8a7848adba11668652761b56
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred procedural_rights_apply/1, gloss('procedural rights of economic operators apply'), source('celex:32024R1689/oj#art_94').

procedural_rights_apply(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides_model(Provider, Model).

provides_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
provenance(provides_model/2, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
