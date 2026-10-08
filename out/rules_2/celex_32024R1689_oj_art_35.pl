% unit       : celex:32024R1689/oj#art_35
% title      : Identification numbers and lists of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : gpt-oss:120b-cloud
% prompt sha : 8e120d6e1ce0c4c5a508b2f698b9b5647860724346266656c9022c9390e0a6db
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_assign_identification_number/2, gloss('Commission must assign a single identification number to each notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_publish_notified_body_list/1, gloss('Commission must make publicly available the list of notified bodies'), source('celex:32024R1689/oj#art_35').
:- pred must_ensure_list_up_to_date/1, gloss('Commission must ensure the list of notified bodies is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign_identification_number(commission, Body) :-
    notified_body(Body).

must_publish_notified_body_list(commission).

must_ensure_list_up_to_date(commission).

provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_publish_notified_body_list/1, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_list_up_to_date/1, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
