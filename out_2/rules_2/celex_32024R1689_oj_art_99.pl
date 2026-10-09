% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 3a0d041e2d8d910125474634b7e58bb34d1d385772cfcdb12a4af864162216c4
% cached     : False
% title      : Penalties
:- pred must_lay_down_rules_on_penalties/2, gloss('Member State shall lay down rules on penalties'), source('celex:32024R1689/oj#art_99').
must_lay_down_rules_on_penalties(MS, penalties_rules) :-
    member_state(MS).

provenance(must_lay_down_rules_on_penalties/2, 'celex:32024R1689/oj#art_99').

:- pred must_notify/2, gloss('Member State shall notify the Commission of the rules on penalties'), source('celex:32024R1689/oj#art_99').
must_notify(MS, penalty_rules_notification) :-
    member_state(MS).

provenance(must_notify/2, 'celex:32024R1689/oj#art_99').

:- pred must_report/2, gloss('Member State shall report annually to the Commission on administrative fines issued'), source('celex:32024R1689/oj#art_99').
must_report(MS, annual_fine_report) :-
    member_state(MS).

provenance(must_report/2, 'celex:32024R1689/oj#art_99').

:- pred penalty_amount/2, gloss('Maximum administrative fine for a specific type of non‑compliance'), source('celex:32024R1689/oj#art_99').
penalty_amount(non_compliance_with_art5, max_fine(eur(35000000), percent(7))).
penalty_amount(non_compliance_with_operator_obligations, max_fine(eur(15000000), percent(3))).
penalty_amount(supply_of_incorrect_information, max_fine(eur(7500000), percent(1))).

provenance(penalty_amount/2, 'celex:32024R1689/oj#art_99').

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
