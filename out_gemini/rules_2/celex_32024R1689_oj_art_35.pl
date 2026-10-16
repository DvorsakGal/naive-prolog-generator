% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 293f3ce5f5c56a701e3b3c2d5db7ececffb01594d4b0a459d596906556694752
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign(Actor, Object), gloss('actor must assign an item to a target'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available(Actor, Object), gloss('actor must make an item publicly available'), source('celex:32024R1689/oj#art_35').
:- pred must_keep_up_to_date(Actor, Object), gloss('actor must keep an item up to date'), source('celex:32024R1689/oj#art_35').

% Paragraph 1: The Commission shall assign a single identification number to each notified body.
must_assign(Commission, identification_number(Body)) :-
    commission(Commission),
    notified_body(Body).

% Paragraph 2: The Commission shall make publicly available the list of the bodies notified under this Regulation,
% including their identification numbers and the activities for which they have been notified.
must_make_publicly_available(Commission, list_of_notified_bodies) :-
    commission(Commission).

% Paragraph 2: The Commission shall ensure that the list is kept up to date.
must_keep_up_to_date(Commission, list_of_notified_bodies) :-
    commission(Commission).

% Provenance
provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_35').

% References
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
