% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 431dd936a59098213cb2249bc8a1b6d9fb4fbd4356f9b9dfdf5da9055ad600ed
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination_and_cooperation/2, gloss('Commission must ensure coordination and cooperation between notified bodies'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation_in_sectoral_group/2, gloss('notifying authority must ensure its notified bodies participate in the sectoral group'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_exchange_of_knowledge/2, gloss('Commission must provide for exchange of knowledge and best practices between notifying authorities'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination_and_cooperation(Commission, sectoral_group(notified_bodies)) :-
    ai_office(Commission),
    high_risk_ai_system(_S),
    conformity_assessment(_CA),
    notified_body(B),
    offers_conformity_assessment_activities(B).

must_ensure_participation_in_sectoral_group(Authority, sectoral_group(notified_bodies)) :-
    notifying_authority(Authority),
    notified_body(B),
    must_ensure_coordination_and_cooperation(_Commission, sectoral_group(notified_bodies)).

must_provide_exchange_of_knowledge(Commission, exchange(knowledge_and_best_practices, notifying_authorities)) :-
    ai_office(Commission),
    notifying_authority(_A).

provenance(must_ensure_coordination_and_cooperation/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation_in_sectoral_group/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange_of_knowledge/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
