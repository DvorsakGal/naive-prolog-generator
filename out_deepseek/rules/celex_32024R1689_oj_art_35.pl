% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d734d3d0f9446f54dffea4c0a77b711594bb9106e86ee0d8c42c408383b06d67
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign/2, gloss('entity obliged to assign something to another entity'), source('celex:32024R1689/oj#art_35').
:- pred must_make_publicly_available/2, gloss('entity obliged to make something publicly available'), source('celex:32024R1689/oj#art_35').
:- pred must_ensure_kept_up_to_date/2, gloss('entity obliged to ensure something is kept up to date'), source('celex:32024R1689/oj#art_35').

must_assign(Commission, identification_number(Body)) :-
    notified_body(Body).

must_make_publicly_available(Commission, list_of_notified_bodies) :-
    notified_body(_).

must_ensure_kept_up_to_date(Commission, list_of_notified_bodies).

provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_kept_up_to_date/2, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
