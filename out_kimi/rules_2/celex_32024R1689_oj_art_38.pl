% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 05670cbe7f169c1317fb4e110563e83e0a94b60767e26acaeef28dbd162d455a
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination/1, gloss('Commission shall ensure coordination and cooperation between notified bodies'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation/1, gloss('notifying authority shall ensure bodies notified by it participate in group work'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_knowledge_exchange/1, gloss('Commission shall provide for exchange of knowledge and best practices between notifying authorities'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination(Commission) :-
    commission(Commission),
    high_risk_ai_system(S),
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    conformity_assessment_procedure(B1),
    conformity_assessment_procedure(B2),
    appropriate_coordination_between(B1, B2),
    cooperation_between(B1, B2),
    sectoral_group_of_notified_bodies(G),
    operated_properly(G).

must_ensure_participation(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority),
    notified_body(B),
    notified_by(B, NotifyingAuthority),
    sectoral_group_of_notified_bodies(G),
    participates_in_work(B, G).

participates_in_work(B, G) :-
    participates_directly(B, G).

participates_in_work(B, G) :-
    designated_representative(B, R),
    participates_directly(R, G).

must_provide_knowledge_exchange(Commission) :-
    commission(Commission),
    notifying_authority(A1),
    notifying_authority(A2),
    A1 \= A2,
    exchange_of_knowledge_and_best_practices(A1, A2).

provenance(must_ensure_coordination/1, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/1, 'celex:32024R1689/oj#art_38').
provenance(must_provide_knowledge_exchange/1, 'celex:32024R1689/oj#art_38').
provenance(participates_in_work/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
