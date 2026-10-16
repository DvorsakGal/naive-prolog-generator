% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a682b500387e3cc1c2496fd9a4605a58337549cacb65f5a5634601ca93f42394
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred procedural_rights_apply/1, gloss('economic operators of general-purpose AI models have procedural rights under Regulation 2019/1020 Article 18 applied mutatis mutandis'), source('celex:32024R1689/oj#art_94').

procedural_rights_apply(P) :-
    provider(P),
    general_purpose_ai_model(P).

provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
