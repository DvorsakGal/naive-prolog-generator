% unit       : celex:32024R1689/oj#art_94
% title      : Procedural rights of economic operators of the general-purpose AI model
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : gpt-oss:120b-cloud
% prompt sha : b128e91883aca01048b1b73fef1977a5831b2a162f98ddb12e876e7e2ae5b917
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_procedural_rights/2, gloss('procedural rights that must be afforded'), source('celex:32024R1689/oj#art_94').

required_procedural_rights(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

provenance(required_procedural_rights/2, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
