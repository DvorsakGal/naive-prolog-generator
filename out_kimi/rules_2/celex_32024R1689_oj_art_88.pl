% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : df617eb2aa5e5fea7756b67b60d977bf60d6967b7281755ad02af05ff2a165f4
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred commission_exclusive_supervision_enforcement/1, gloss('Commission has exclusive powers to supervise and enforce Chapter V'), source('celex:32024R1689/oj#art_88').
:- pred commission_entrusts_ai_office/1, gloss('Commission entrusts implementation to AI Office'), source('celex:32024R1689/oj#art_88').
:- pred market_surveillance_authority_may_request_commission/2, gloss('market surveillance authority may request Commission to exercise Chapter IX Section 5 powers'), source('celex:32024R1689/oj#art_88').
:- pred necessary_and_proportionate/1, gloss('necessary and proportionate to assist with tasks'), source('celex:32024R1689/oj#art_88').

commission_exclusive_supervision_enforcement(chapter_5) :-
    ai_office(ai_office).

commission_entrusts_ai_office(chapter_5) :-
    ai_office(ai_office).

market_surveillance_authority_may_request_commission(Authority, chapter_9_section_5) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate(Authority).

provenance(commission_exclusive_supervision_enforcement/1, 'celex:32024R1689/oj#art_88').
provenance(commission_entrusts_ai_office/1, 'celex:32024R1689/oj#art_88').
provenance(market_surveillance_authority_may_request_commission/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').
