% unit       : celex:32024R1689/oj#art_94
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 16eb5a8f69e02e992bd94776a8ee30a36253f870e3c3783d3ffebb776c461234
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6e0bc409d82bb28e0d149818e14eec9f864947d0d49b62b981c9a39c5579cfca
% cached     : False
% title      : Procedural rights of economic operators of the general-purpose AI model
:- pred must_have/2, gloss('obligation for an actor to have a given right or entitlement'), source('celex:32024R1689/oj#art_94').

must_have(Provider, procedural_rights) :-
    provider(Provider),
    provides(Provider, System),
    general_purpose_ai_system(System).

provenance(must_have/2, 'celex:32024R1689/oj#art_94').

references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').
