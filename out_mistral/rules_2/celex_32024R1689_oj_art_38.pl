% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 01660ebd53f1f117bc626090413fc71068ccfc9d77bdaf55fe2e98a72f472a68
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination/1, gloss('Commission ensures appropriate coordination and cooperation between notified bodies active in conformity assessment procedures for high-risk AI systems'), source('celex:32024R1689/oj#art_38').
:- pred sectoral_group_of_notified_bodies/1, gloss('sectoral group of notified bodies for coordination and cooperation'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation/2, gloss('notifying authority ensures notified bodies participate in sectoral group work'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_exchange/2, gloss('Commission provides for exchange of knowledge and best practices between notifying authorities'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination(commission) :-
    sectoral_group_of_notified_bodies(G),
    operates_properly(G).

sectoral_group_of_notified_bodies(G) :-
    group_of_notified_bodies(G),
    sectoral(G).

operates_properly(G) :-
    coordination_and_cooperation_put_in_place(G),
    high_risk_ai_system_conformity_assessment_context(G).

group_of_notified_bodies(G) :-
    notified_body(B),
    member_of_group(B, G).

member_of_group(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G).

coordination_and_cooperation_put_in_place(G) :-
    sectoral_group_of_notified_bodies(G).

high_risk_ai_system_conformity_assessment_context(G) :-
    sectoral_group_of_notified_bodies(G),
    conformity_assessment_procedure(P),
    high_risk_ai_system(S),
    relates_to(P, S).

relates_to(P, S) :-
    conformity_assessment_procedure(P),
    high_risk_ai_system(S).

sectoral(G) :-
    sectoral_group_of_notified_bodies(G).

must_ensure_participation(NA, G) :-
    notifying_authority(NA),
    sectoral_group_of_notified_bodies(G),
    bodies_notified_by(NA, B),
    participates_in_work(B, G).

bodies_notified_by(NA, B) :-
    notifying_authority(NA),
    notified_body(B),
    notified_by(NA, B).

notified_by(NA, B) :-
    notifying_authority(NA),
    notified_body(B).

participates_in_work(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G),
    directly_or_through_representatives(B, G).

directly_or_through_representatives(B, G) :-
    participates_directly(B, G).
directly_or_through_representatives(B, G) :-
    participates_through_designated_representatives(B, G).

participates_directly(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G).

participates_through_designated_representatives(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G),
    designated_representatives(B, R),
    participates(R, G).

designated_representatives(B, R) :-
    notified_body(B),
    representative(R).

participates(R, G) :-
    sectoral_group_of_notified_bodies(G).

must_provide_exchange(commission, exchange(knowledge_and_best_practices, between_notifying_authorities)) :-
    notifying_authority(NA1),
    notifying_authority(NA2),
    NA1 \= NA2.

provenance(must_ensure_coordination/1, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
