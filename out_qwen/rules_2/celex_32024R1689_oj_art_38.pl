% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 3a23ff6949c40d4fbcb20da3d2bf72895e89c1809dca432f74f14279ef6588a5
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination_of_notified_bodies/2, gloss('Commission must ensure coordination and cooperation between notified bodies active in conformity assessment for high-risk AI systems'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation_in_sectoral_group/2, gloss('Notifying authority must ensure its notified bodies participate in the sectoral group of notified bodies'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_exchange_of_knowledge/2, gloss('Commission must provide for exchange of knowledge and best practices between notifying authorities'), source('celex:32024R1689/oj#art_38').
:- pred active_in_conformity_assessment_for_high_risk_ai_systems/1, gloss('notified body is active in conformity assessment procedures for high-risk AI systems'), source('celex:32024R1689/oj#art_38').
:- pred sectoral_group_of_notified_bodies/1, gloss('sectoral group of notified bodies for coordination and cooperation'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination_of_notified_bodies(commission, sectoral_group_of_notified_bodies) :-
    active_in_conformity_assessment_for_high_risk_ai_systems(_Body).

active_in_conformity_assessment_for_high_risk_ai_systems(Body) :-
    notified_body(Body),
    conformity_assessment(CA),
    high_risk_ai_system(S),
    conformity_assessment_carried_out(CA),
    covered_by_union_harmonisation_legislation(S).

must_ensure_participation_in_sectoral_group(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    active_in_conformity_assessment_for_high_risk_ai_systems(Body).

must_provide_exchange_of_knowledge(commission, notifying_authority(_)).

provenance(must_ensure_coordination_of_notified_bodies/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation_in_sectoral_group/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange_of_knowledge/2, 'celex:32024R1689/oj#art_38').
provenance(active_in_conformity_assessment_for_high_risk_ai_systems/1, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
