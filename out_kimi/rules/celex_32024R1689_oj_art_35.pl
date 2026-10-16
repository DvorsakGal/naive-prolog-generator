% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f406f430aad83526c00dda1d6869d68b94c327ca6cc97243ec58b9a759e6c2fb
% cached     : False
% title      : Identification numbers and lists of notified bodies
:- pred must_assign_identification_number/2, gloss('Commission shall assign a single identification number to each notified body'), source('celex:32024R1689/oj#art_35').
:- pred must_publish_list/2, gloss('Commission shall make publicly available the list of notified bodies'), source('celex:32024R1689/oj#art_35').
:- pred must_ensure_list_up_to_date/2, gloss('Commission shall ensure the list is kept up to date'), source('celex:32024R1689/oj#art_35').
:- pred notified_body_activity/2, gloss('activity for which a body has been notified'), source('celex:32024R1689/oj#art_35').

must_assign_identification_number(Commission, Body) :-
    ai_office(Commission),
    notified_body(Body).

must_publish_list(Commission, list_entry(Body, Number, Activities)) :-
    ai_office(Commission),
    notified_body(Body),
    identification_number(Body, Number),
    findall(Activity, notified_body_activity(Body, Activity), Activities).

must_ensure_list_up_to_date(Commission, list_entry(Body, Number, Activities)) :-
    ai_office(Commission),
    notified_body(Body),
    identification_number(Body, Number),
    findall(Activity, notified_body_activity(Body, Activity), Activities).

% Derived predicate for identification number assignment
:- pred identification_number/2, gloss('single identification number assigned to a notified body'), source('celex:32024R1689/oj#art_35').

identification_number(Body, Number) :-
    notified_body(Body),
    must_assign_identification_number(_Commission, Body).

provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_publish_list/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_list_up_to_date/2, 'celex:32024R1689/oj#art_35').
provenance(identification_number/2, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
