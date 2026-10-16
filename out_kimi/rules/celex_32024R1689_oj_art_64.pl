% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 80e5dfc329f2f8e9f16375348f3344f6c0df33e966b04c6b9f1f30fcf9648d8d
% cached     : False
% title      : AI Office
:- pred must_develop_expertise/2, gloss('Commission shall develop Union expertise in AI field'), source('celex:32024R1689/oj#art_64').
:- pred must_facilitate_tasks/2, gloss('Member States shall facilitate tasks entrusted to AI Office'), source('celex:32024R1689/oj#art_64').

must_develop_expertise(commission, expertise(ai, union)) :-
    ai_office(_Office).

must_facilitate_tasks(MemberState, facilitation(AI_Office)) :-
    member_state(MemberState),
    ai_office(AI_Office).

provenance(must_develop_expertise/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
