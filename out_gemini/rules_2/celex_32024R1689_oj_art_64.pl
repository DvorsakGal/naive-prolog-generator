% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b846f9328fbcc25173be11f6010e19fd1eba9acfd86dbba349f90f54b562a80b
% cached     : False
% title      : AI Office
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_64').
:- pred must_develop(Actor, Object), gloss('Actor is obligated to develop Object'), source('celex:32024R1689/oj#art_64').
:- pred must_facilitate(Actor, Object), gloss('Actor is obligated to facilitate Object'), source('celex:32024R1689/oj#art_64').

% Article 64(1): The Commission shall develop Union expertise and capabilities in the field of AI through the AI Office.
must_develop(Commission, expertise_and_capabilities(union, ai, through(Office))) :-
    commission(Commission),
    ai_office(Office).

% Article 64(2): Member States shall facilitate the tasks entrusted to the AI Office, as reflected in this Regulation.
must_facilitate(MS, tasks_of(Office)) :-
    member_state(MS),
    ai_office(Office).

provenance(must_develop/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
