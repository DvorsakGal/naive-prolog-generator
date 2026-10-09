% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 895de33cde9115220c5fd80bb5ffaef23bc2a1a62e80a7a40e03ec5ec8bd566c
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_35').
:- pred must_assign/2, gloss('Commission shall assign a single identification number to each notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_ensure_up_to_date/2, gloss('Commission shall ensure the publicly available list is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign(Commission, identification_number(Body)) :-
    commission(Commission),
    notified_body(Body).

must_make_publicly_available(Commission, notified_body_list) :-
    commission(Commission).

must_ensure_up_to_date(Commission, notified_body_list) :-
    commission(Commission).

provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_up_to_date/2, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
