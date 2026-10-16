% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 28eeffb8f1498c49e91161d5d4f8fa2d268aa3a75bdc90ae4e5db07d986d4396
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred must_apply_mutatis_mutandis/2, gloss('procedural rights apply with necessary adaptations'), source('celex:32024R1689/oj#art_94').

must_apply_mutatis_mutandis(providers_of_general_purpose_ai_model, procedural_rights_of_economic_operators).

applies_to(general_purpose_ai_model_providers, procedural_rights_of_economic_operators) :-
    must_apply_mutatis_mutandis(providers_of_general_purpose_ai_model, procedural_rights_of_economic_operators).

provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(M),
    develops(P, M).

applies_to(P, procedural_rights_of_economic_operators) :-
    provider_of_general_purpose_ai_model(P),
    must_apply_mutatis_mutandis(providers_of_general_purpose_ai_model, procedural_rights_of_economic_operators).

provenance(must_apply_mutatis_mutandis/2, 'celex:32024R1689/oj#art_94').
provenance(applies_to/2, 'celex:32024R1689/oj#art_94').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
