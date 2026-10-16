% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 33d8bcb37cc1aef73f590c873ead532d26acf7c4b34e892c79099585da1db557
% cached     : False
% title      : Penalties
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_99').
:- pred sme/1, gloss('small and medium-sized enterprise, including start-ups'), source('celex:32024R1689/oj#art_99').
:- pred undertaking/1, gloss('entity engaged in economic activity'), source('celex:32024R1689/oj#art_99').
:- pred non_compliance/2, gloss('actor has committed non-compliance with a specified provision or duty'), source('celex:32024R1689/oj#art_99').
:- pred supplied_misleading_info/2, gloss('actor supplied incorrect, incomplete or misleading info to an authority or notified body in reply to a request'), source('celex:32024R1689/oj#art_99').
:- pred max_fine_cap/3, gloss('maximum administrative fine cap applicable to actor for an infringement'), source('celex:32024R1689/oj#art_99').
:- pred must_lay_down_rules/2, gloss('actor must lay down rules on a matter'), source('celex:32024R1689/oj#art_99').
:- pred must_notify/2, gloss('actor must notify another entity of an object'), source('celex:32024R1689/oj#art_99').
:- pred must_report/2, gloss('actor must report an object to another entity'), source('celex:32024R1689/oj#art_99').

% Paragraph 1: Member States lay down rules on penalties for operators
must_lay_down_rules(MS, penalties(operators)) :-
    member_state(MS).

% Paragraph 2: Member States notify Commission of penalty rules and amendments
must_notify(MS, commission(penalty_rules)) :-
    member_state(MS).
must_notify(MS, commission(penalty_rules_amendment)) :-
    member_state(MS).

% Paragraph 3: Fines for non-compliance with Art 5 (prohibited AI practices)
% Standard undertakings: whichever is higher between EUR 35,000,000 and 7% turnover
max_fine_cap(Actor, prohibited_practices, higher_of(eur(35000000), percent(7))) :-
    non_compliance(Actor, prohibited_practices),
    undertaking(Actor),
    \+ sme(Actor).

% Standard non-undertakings: EUR 35,000,000
max_fine_cap(Actor, prohibited_practices, eur(35000000)) :-
    non_compliance(Actor, prohibited_practices),
    \+ undertaking(Actor),
    \+ sme(Actor).

% Paragraph 4: Fines for non-compliance with other provisions
% (Arts 16, 22, 23, 24, 26, 31, 33(1,3,4), 34, 50)
% Standard undertakings: whichever is higher between EUR 15,000,000 and 3% turnover
max_fine_cap(Actor, operator_or_notified_body_obligations, higher_of(eur(15000000), percent(3))) :-
    non_compliance(Actor, operator_or_notified_body_obligations),
    undertaking(Actor),
    \+ sme(Actor).

% Standard non-undertakings: EUR 15,000,000
max_fine_cap(Actor, operator_or_notified_body_obligations, eur(15000000)) :-
    non_compliance(Actor, operator_or_notified_body_obligations),
    \+ undertaking(Actor),
    \+ sme(Actor).

% Paragraph 5: Fines for incorrect/incomplete/misleading information
% Standard undertakings: whichever is higher between EUR 7,500,000 and 1% turnover
max_fine_cap(Actor, misleading_information, higher_of(eur(7500000), percent(1))) :-
    supplied_misleading_info(Actor, request),
    undertaking(Actor),
    \+ sme(Actor).

% Standard non-undertakings: EUR 7,500,000
max_fine_cap(Actor, misleading_information, eur(7500000)) :-
    supplied_misleading_info(Actor, request),
    \+ undertaking(Actor),
    \+ sme(Actor).

% Paragraph 6: SMEs (including start-ups) - whichever is lower
max_fine_cap(Actor, prohibited_practices, lower_of(eur(35000000), percent(7))) :-
    non_compliance(Actor, prohibited_practices),
    sme(Actor).

max_fine_cap(Actor, operator_or_notified_body_obligations, lower_of(eur(15000000), percent(3))) :-
    non_compliance(Actor, operator_or_notified_body_obligations),
    sme(Actor).

max_fine_cap(Actor, misleading_information, lower_of(eur(7500000), percent(1))) :-
    supplied_misleading_info(Actor, request),
    sme(Actor).

% Paragraph 8: Rules on fines for public authorities and bodies
must_lay_down_rules(MS, penalties(public_authorities)) :-
    member_state(MS).

% Paragraph 11: Annual reporting by Member States to Commission
must_report(MS, commission(annual_penalties_and_litigation)) :-
    member_state(MS).

% Provenance
provenance(must_lay_down_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify/2, 'celex:32024R1689/oj#art_99').
provenance(max_fine_cap/3, 'celex:32024R1689/oj#art_99').
provenance(must_report/2, 'celex:32024R1689/oj#art_99').

% References
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_24').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_26').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_5').
