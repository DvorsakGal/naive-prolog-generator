% unit       : celex:32024R1689/oj#art_35
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8bcca9d7fafb194bea4adcab26f66699202913023915a110ecaa8c24c66855af
% cached     : False
% title      : Identification numbers and lists of notified bodies
% Obligations concerning identification numbers for notified bodies
assign_identification_number(commission, identification_number(NB)) :-
    notified_body(NB).

% Obligation to make publicly available the list of notified bodies under the Regulation
make_publicly_available_list_of_notified_bodies(commission, list_of_notified_bodies(Act)) :-
    Act = 'celex:32024R1689/oj'.

% Obligation to keep the list up to date
ensure_list_up_to_date(commission, list_of_notified_bodies(Act)) :-
    Act = 'celex:32024R1689/oj'.

% Provenance
provenance(assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(make_publicly_available_list_of_notified_bodies/2, 'celex:32024R1689/oj#art_35').
provenance(ensure_list_up_to_date/2, 'celex:32024R1689/oj#art_35').

% References
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').
