% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1716d6c5cd4e26a38a52510a927f1ca030736f08075f39b2db913dec9d1dc628
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_35').
:- pred must_assign(Actor, Object), gloss('Actor is obliged to assign Object'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available(Actor, Object), gloss('Actor is obliged to make Object publicly available'), source('celex:32024R1689/oj#art_35').
:- pred must_ensure_up_to_date(Actor, Object), gloss('Actor is obliged to keep Object up to date'), source('celex:32024R1689/oj#art_35').

% Paragraph 1: The Commission shall assign a single identification number to each notified body,
% even where a body is notified under more than one Union act.
must_assign(Commission, single_identification_number(Body)) :-
    commission(Commission),
    notified_body(Body).

% Paragraph 2: The Commission shall make publicly available the list of the bodies notified
% under this Regulation, including their identification numbers and the activities for which
% they have been notified.
must_make_publicly_available(Commission, list_of_notified_bodies) :-
    commission(Commission).

% Paragraph 2: The Commission shall ensure that the list is kept up to date.
must_ensure_up_to_date(Commission, list_of_notified_bodies) :-
    commission(Commission).

provenance(commission/1, 'celex:32024R1689/oj#art_35').
provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_up_to_date/2, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
