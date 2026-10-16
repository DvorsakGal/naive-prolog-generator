% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8233a23f4bdcab2284e9c4ee86bd47f9531cd0aad3da73f1c6012a1985d5eb28
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign_identification_number/2, gloss('Commission assigns a single identification number to a notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available/2, gloss('Commission makes publicly available a list of notified bodies with their identification numbers and notified activities'), source('celex:32024R1689/oj#art_35').
:- pred must_keep_up_to_date/2, gloss('Commission ensures a list is kept up to date'), source('celex:32024R1689/oj#art_35').
:- pred single_identification_number/1, gloss('a notified body has a single identification number even when notified under multiple Union acts'), source('celex:32024R1689/oj#art_35').
:- pred list_of_notified_bodies/1, gloss('publicly available list of notified bodies including identification numbers and notified activities'), source('celex:32024R1689/oj#art_35').

must_assign_identification_number(ai_office, B) :-
    notified_body(B),
    single_identification_number(B).

single_identification_number(B) :-
    notified_body(B).

must_make_publicly_available(ai_office, list_of_notified_bodies(L)) :-
    list_of_notified_bodies(L),
    includes_identification_numbers(L),
    includes_notified_activities(L).

list_of_notified_bodies(L) :-
    findall(B, notified_body(B), L).

includes_identification_numbers(L) :-
    member(B, L),
    notified_body(B),
    single_identification_number(B).

includes_notified_activities(L) :-
    member(B, L),
    notified_body(B),
    notified_activities(B, _Activities).

must_keep_up_to_date(ai_office, list_of_notified_bodies(L)) :-
    list_of_notified_bodies(L).

provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_35').
provenance(single_identification_number/1, 'celex:32024R1689/oj#art_35').
provenance(list_of_notified_bodies/1, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
