% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 7398847a372a11d259b65a05b6c39d7299d139f2841bf316795903170679975e
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign_single_identification_number/2, gloss('Commission shall assign a single identification number to each notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_make_list_publicly_available/2, gloss('Commission shall make publicly available the list of notified bodies including identification numbers and activities'), source('celex:32024R1689/oj#art_35').
:- pred must_keep_list_up_to_date/2, gloss('Commission shall ensure that the list of notified bodies is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign_single_identification_number(commission, Body) :-
    notified_body(Body).

must_make_list_publicly_available(commission, list(notified_bodies)) :-
    true.

must_keep_list_up_to_date(commission, list(notified_bodies)) :-
    true.

provenance(must_assign_single_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_list_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
