% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 02714be0ab73cea29d056156ec896c8e628ba807b3ba1d622133ccba703da367
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign_identification_number/2, gloss('Commission shall assign a single identification number to each notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available/2, gloss('Commission shall make publicly available the list of notified bodies'), source('celex:32024R1689/oj#art_35').
:- pred must_ensure_list_up_to_date/2, gloss('Commission shall ensure the list is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign_identification_number(Commission, Body) :-
    notified_body(Body),
    commission(Commission).

must_make_publicly_available(Commission, list(notified_bodies)) :-
    commission(Commission).

must_ensure_list_up_to_date(Commission, list(notified_bodies)) :-
    commission(Commission).

provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_list_up_to_date/2, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
