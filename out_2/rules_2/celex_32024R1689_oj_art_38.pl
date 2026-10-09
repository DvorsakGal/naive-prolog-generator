% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 02068df06644b6d0175d88ea6d584ab06c90f153d10039440821f6fdd962ac45
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure/2, gloss('obligation to ensure'), source('celex:32024R1689/oj#art_38').
:- pred must_provide/2, gloss('obligation to provide'), source('celex:32024R1689/oj#art_38').

must_ensure(_Commission, coordination_and_cooperation_between_notified_bodies(HR)) :-
    high_risk_ai_system(HR).

must_ensure(_Authority, participation_of_notified_bodies_in_group(_Authority)) :-
    notifying_authority(_Authority).

must_provide(_Commission, exchange_of_knowledge_and_best_practices_between_notifying_authorities) :-
    notifying_authority(_).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
