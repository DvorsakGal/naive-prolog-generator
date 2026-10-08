% unit       : celex:32024R1689/oj#art_64
% title      : AI Office
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : gpt-oss:120b-cloud
% prompt sha : b6fa12be9087cbfe34b208fc40a0a2084f608bba7bb88220e0ba6756cca5fd3d
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred ai_office/1, gloss('AI Office'), source('celex:32024R1689/oj#art_64').
:- pred expertise_and_capabilities_in_ai/1, gloss('Union expertise and capabilities in AI'), source('celex:32024R1689/oj#art_64').
:- pred tasks_entrusted_to_ai_office/1, gloss('tasks entrusted to the AI Office'), source('celex:32024R1689/oj#art_64').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_64').
:- pred ai_office_applies/1, gloss('AI Office applies to actor'), source('celex:32024R1689/oj#art_64').
:- pred member_state_applies/1, gloss('Member State applies to actor'), source('celex:32024R1689/oj#art_64').

must_develop_expertise_and_capabilities(Commission, Union) :-
    ai_office(_),
    ai_office_applies(Commission),
    expertise_and_capabilities_in_ai(Union).

must_facilitate(MemberState, Union) :-
    ai_office(_),
    member_state_applies(MemberState),
    tasks_entrusted_to_ai_office(Union).

ai_office_applies(Actor) :-
    ai_office(_).

member_state_applies(Actor) :-
    member_state(Actor).

provenance(ai_office_applies/1, 'celex:32024R1689/oj#art_64').
provenance(member_state_applies/1, 'celex:32024R1689/oj#art_64').
provenance(must_develop_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
