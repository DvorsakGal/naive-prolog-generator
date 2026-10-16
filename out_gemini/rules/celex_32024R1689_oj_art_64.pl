% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ef71cd7b7c33e348a1ab2e6eee5baa7ecefa5770d384ca4e3def93bf7bd9e55d
% cached     : False
% title      : AI Office
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_64').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_64').
:- pred must_develop_expertise_and_capabilities(Actor, Object), gloss('Actor is obliged to develop Union expertise and capabilities in AI through the specified body'), source('celex:32024R1689/oj#art_64').
:- pred must_facilitate_tasks(Actor, Object), gloss('Actor is obliged to facilitate the tasks entrusted to the specified entity'), source('celex:32024R1689/oj#art_64').

% Article 64(1)
must_develop_expertise_and_capabilities(Commission, through(Office)) :-
    commission(Commission),
    ai_office(Office).

% Article 64(2)
must_facilitate_tasks(State, tasks_of(Office)) :-
    member_state(State),
    ai_office(Office).

provenance(must_develop_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
