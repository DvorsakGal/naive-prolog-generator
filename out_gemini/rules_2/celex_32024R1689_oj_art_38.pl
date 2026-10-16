% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 9cd78d7043183b086f621278000bc0ebc44573241aacea5de01e1e3867b758fd
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure/2, gloss('actor must ensure a certain condition or outcome'), source('celex:32024R1689/oj#art_38').
:- pred sectoral_group_of_notified_bodies/1, gloss('sectoral group of notified bodies established for coordination under the regulation'), source('celex:32024R1689/oj#art_38').
:- pred notified_by/2, gloss('notified body was notified by a notifying authority'), source('celex:32024R1689/oj#art_38').
:- pred participates_in_work_of/2, gloss('entity participates directly or through designated representatives in a group'), source('celex:32024R1689/oj#art_38').
:- pred must_provide/2, gloss('actor must provide for a specified activity'), source('celex:32024R1689/oj#art_38').

% Paragraph 1: The Commission shall ensure that appropriate coordination and cooperation between notified bodies are put in place and operated in the form of a sectoral group of notified bodies.
must_ensure(Commission, coordination_and_cooperation(sectoral_group_of_notified_bodies)) :-
    commission(Commission).

% Paragraph 2: Each notifying authority shall ensure that the bodies notified by it participate in the work of the sectoral group.
must_ensure(Authority, participation(Body, Group)) :-
    notifying_authority(Authority),
    notified_body(Body),
    notified_by(Body, Authority),
    sectoral_group_of_notified_bodies(Group),
    \+ participates_in_work_of(Body, Group).

% Paragraph 3: The Commission shall provide for the exchange of knowledge and best practices between notifying authorities.
must_provide(Commission, exchange_of_knowledge_and_best_practices(notifying_authorities)) :-
    commission(Commission).

% Provenance
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').

% References
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
