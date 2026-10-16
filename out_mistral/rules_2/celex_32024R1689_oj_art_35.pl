% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : f5d0fa62c9e26abd7f899d977893858d7336db6c17b2aaea243c46a0d45259c5
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign_single_identification_number/2, gloss('Commission assigns a single identification number to a notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available_list_of_notified_bodies/1, gloss('Commission makes publicly available the list of notified bodies with identification numbers and notified activities'), source('celex:32024R1689/oj#art_35').
:- pred must_keep_list_up_to_date/1, gloss('Commission ensures the list of notified bodies is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign_single_identification_number(commission, B) :-
    notified_body(B).

must_assign_single_identification_number(commission, B) :-
    notified_body(B),
    notified_under_multiple_union_acts(B).

notified_under_multiple_union_acts(B) :-
    notified_body(B),
    notified_under_union_act(B, _Act1),
    notified_under_union_act(B, _Act2),
    _Act1 \= _Act2.

notified_under_union_act(B, Act) :-
    notified_body(B),
    notified_under(B, Act).

must_make_publicly_available_list_of_notified_bodies(commission) :-
    list_of_notified_bodies(List),
    includes_identification_numbers(List),
    includes_notified_activities(List).

must_keep_list_up_to_date(commission) :-
    list_of_notified_bodies(List),
    up_to_date(List).

provenance(must_assign_single_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available_list_of_notified_bodies/1, 'celex:32024R1689/oj#art_35').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
