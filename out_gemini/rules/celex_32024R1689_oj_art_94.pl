% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 74fd2a71969ccb6557b341b6980787a70db3ce29197b2dfc6550e9a766772fbc
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred procedural_rights_apply/2, gloss('procedural rights under a given legal instrument apply to an entity'), source('celex:32024R1689/oj#art_94').
:- pred provider_of_general_purpose_ai_model/1, gloss('entity that is a provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_94').
:- pred develops_or_places/2, gloss('entity develops or places an AI model or system'), source('celex:32024R1689/oj#art_94').

procedural_rights_apply(regulation_2019_1020_article_18, P) :-
    provider_of_general_purpose_ai_model(P).

provider_of_general_purpose_ai_model(P) :-
    provider(P),
    develops_or_places(P, M),
    general_purpose_ai_model(M).

provenance(procedural_rights_apply/2, 'celex:32024R1689/oj#art_94').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
