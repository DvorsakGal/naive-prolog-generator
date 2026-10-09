% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : d58040c722a5ef672d6b5e32827953df8e294137fc9d320567696e86a46b8e00
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred procedural_rights_of_economic_operators_of_general_purpose_ai_model_applies/1,
    gloss('procedural rights of economic operators of the general‑purpose AI model apply to provider'), 
    source('celex:32024R1689/oj#art_94').

:- pred specific_procedural_rights/1,
    gloss('more specific procedural rights provided for in this regulation'), 
    source('celex:32024R1689/oj#art_94').

procedural_rights_of_economic_operators_of_general_purpose_ai_model_applies(Provider) :-
    general_purpose_ai_model_provider(Provider),
    \+ specific_procedural_rights(Provider).

provenance(procedural_rights_of_economic_operators_of_general_purpose_ai_model_applies/1, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
