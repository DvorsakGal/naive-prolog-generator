% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4a22edca8c8905e262d08c529c4a2bd7ed9a54c50f2bfbfdd513927910481086
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign_identification_number/2, gloss('Commission must assign a single identification number to a notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available/2, gloss('Commission must make publicly available the list of notified bodies'), source('celex:32024R1689/oj#art_35').
:- pred must_keep_list_up_to_date/1, gloss('Commission must ensure the list of notified bodies is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign_identification_number(Commission, Body) :-
    notified_body(Body).

must_make_publicly_available(Commission, list_of_notified_bodies) :-
    notified_body(_).

must_keep_list_up_to_date(Commission) :-
    notified_body(_).

provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
