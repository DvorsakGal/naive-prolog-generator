% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bc3bdaa5ac0675d68ed95e90d9b1699b15f71a7592c18a68af71d025e09e80a4
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination/2, gloss('Commission shall ensure coordination and cooperation between notified bodies'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation/2, gloss('notifying authority shall ensure bodies notified by it participate in sectoral group work'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_exchange/2, gloss('Commission shall provide for exchange of knowledge and best practices'), source('celex:32024R1689/oj#art_38').
:- pred sectoral_group_of_notified_bodies/1, gloss('group of notified bodies for coordination and cooperation'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination(commission, coordination(high_risk_ai_systems, notified_bodies, conformity_assessment_procedures)) :-
    notified_body(Body),
    conformity_assessment(Body).

must_ensure_participation(NotifyingAuthority, participation(Body, sectoral_group_of_notified_bodies)) :-
    notifying_authority(NotifyingAuthority),
    notified_body(Body).

must_provide_exchange(commission, exchange(knowledge_and_best_practices, notifying_authorities)) :-
    notifying_authority(_).

provenance(must_ensure_coordination/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
