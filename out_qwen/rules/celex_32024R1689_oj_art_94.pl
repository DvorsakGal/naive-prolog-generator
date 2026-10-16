% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 286fd875401a505e55c58fa6acc699cb68f60a9bf5ef686f6941b98aa7206e0a
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred procedural_rights_apply/1, gloss('procedural rights under Regulation 2019/1020 Article 18 apply'), source('celex:32024R1689/oj#art_94').

procedural_rights_apply(P) :-
    provider(P),
    general_purpose_ai_model_provider(P).

general_purpose_ai_model_provider(P) :-
    provider(P),
    provides_general_purpose_ai_model(P, _M).

:- pred provides_general_purpose_ai_model/2, gloss('provider develops or places a general-purpose AI model on the market'), source('celex:32024R1689/oj#art_94').

provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_94').
provenance(provides_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
