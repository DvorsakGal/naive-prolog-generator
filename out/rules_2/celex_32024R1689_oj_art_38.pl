% unit       : celex:32024R1689/oj#art_38
% title      : Coordination of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : gpt-oss:120b-cloud
% prompt sha : 797a9ca5b982a6e32fb2256ef5f4b3c9730c21957d861d715c6dcb3902096419
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred notified_by/2, gloss('notifying authority notifies notified body'), source('celex:32024R1689/oj#art_38').
:- pred coordination_of_notified_bodies/1, gloss('coordination and cooperation between notified bodies for high‑risk AI systems'), source('celex:32024R1689/oj#art_38').
:- pred participation_of_notified_body_in_group/3, gloss('participation of a notified body in the sectoral group referred to in paragraph 1'), source('celex:32024R1689/oj#art_38').

must_ensure(commission, coordination_of_notified_bodies(S)) :-
    high_risk_ai_system(S).

must_ensure(N, participation_of_notified_body_in_group(N, B, group_par_1)) :-
    notifying_authority(N),
    notified_body(B),
    notified_by(N, B).

must_provide(commission, exchange_of_knowledge_between_notifying_authorities).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
