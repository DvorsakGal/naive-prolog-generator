% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c3ccfa03b5e0dd1af0eb2399e74563b99615d49252c3a66be9743f8c97ab69d9
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign_identification_number(Actor, Object), gloss('assign a single identification number to a notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available(Actor, Object), gloss('make publicly available the list of notified bodies'), source('celex:32024R1689/oj#art_35').
:- pred must_keep_up_to_date(Actor, Object), gloss('ensure the list of notified bodies is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign_identification_number(commission, Body) :-
    notified_body(Body).

must_make_publicly_available(commission, list_of_notified_bodies) :-
    true.

must_keep_up_to_date(commission, list_of_notified_bodies) :-
    true.

provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
