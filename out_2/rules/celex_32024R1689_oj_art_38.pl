% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6b8a25835fc28e71ae0fc94ed2de7e625b88df787801891f52429af19fe4fdf1
% cached     : False
% title      : Coordination of notified bodies
% New predicates introduced
:- pred must_ensure/2, gloss('obligation to ensure'), source('celex:32024R1689/oj#art_38').
:- pred must_provide/2, gloss('obligation to provide'), source('celex:32024R1689/oj#art_38').
:- pred bodies_participate_in_group/2, gloss('participation of notified bodies in sectoral group'), source('celex:32024R1689/oj#art_38').

% Obligations
must_ensure(commission, coordination_of_notified_bodies(high_risk_ai_system, sectoral_group)).

must_ensure(Authority, bodies_participate_in_group(Authority, sectoral_group)) :-
    notifying_authority(Authority).

must_provide(commission, exchange_of_knowledge_and_best_practices_between_notifying_authorities).

% Provenance
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').

% References
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
