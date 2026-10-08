% unit       : celex:32024R1689/oj#art_99
% title      : Penalties
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : gpt-oss:120b-cloud
% prompt sha : 9560e8adf638edc478f4a7d8ea7fbd7a2056b1fd97e7934649fc8b52111106a4
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_99').
:- pred required_lay_down_penalties_rules/1, gloss('Obligation for a Member State to lay down rules on penalties'), source('celex:32024R1689/oj#art_99').
:- pred required_notify_commission_of_penalties_rules/1, gloss('Obligation for a Member State to notify the Commission of the rules on penalties'), source('celex:32024R1689/oj#art_99').
:- pred required_notify_commission_of_amendment/1, gloss('Obligation for a Member State to notify the Commission of any amendment to the rules on penalties'), source('celex:32024R1689/oj#art_99').
:- pred required_fine_for_ai_practice_prohibition/2, gloss('Administrative fine applicable for non‑compliance with the prohibition of AI practices'), source('celex:32024R1689/oj#art_99').
:- pred required_fine_for_operator_obligation_non_compliance/2, gloss('Administrative fine applicable for non‑compliance with obligations of operators or notified bodies'), source('celex:32024R1689/oj#art_99').
:- pred required_fine_for_misleading_information/2, gloss('Administrative fine applicable for supplying incorrect, incomplete or misleading information to notified bodies or national competent authorities'), source('celex:32024R1689/oj#art_99').
:- pred required_rules_on_fines_for_public_authorities/1, gloss('Obligation for a Member State to lay down rules on fines for public authorities'), source('celex:32024R1689/oj#art_99').
:- pred required_annual_report_of_fines/1, gloss('Obligation for a Member State to report annually to the Commission on administrative fines issued'), source('celex:32024R1689/oj#art_99').

% --- Obligations of Member States ------------------------------------------------

required_lay_down_penalties_rules(MS) :-
    member_state(MS).

required_notify_commission_of_penalties_rules(MS) :-
    member_state(MS).

required_notify_commission_of_amendment(MS) :-
    member_state(MS).

required_rules_on_fines_for_public_authorities(MS) :-
    member_state(MS).

required_annual_report_of_fines(MS) :-
    member_state(MS).

% --- Administrative fines ---------------------------------------------------------

% Paragraph 3 – non‑compliance with the prohibition of AI practices (art.5)
required_fine_for_ai_practice_prohibition(Offender, eur(35000000)) :-
    non_compliance_with_prohibition(Offender, ai_practice),
    \+ undertaking(Offender).

required_fine_for_ai_practice_prohibition(Offender, percent(7)) :-
    non_compliance_with_prohibition(Offender, ai_practice),
    undertaking(Offender).

% Paragraph 4 – non‑compliance with obligations of operators or notified bodies
required_fine_for_operator_obligation_non_compliance(Offender, eur(15000000)) :-
    (operator(Offender) ; notified_body(Offender)),
    non_compliance_with_obligation(Offender, _Obligation),
    \+ undertaking(Offender).

required_fine_for_operator_obligation_non_compliance(Offender, percent(3)) :-
    (operator(Offender) ; notified_body(Offender)),
    non_compliance_with_obligation(Offender, _Obligation),
    undertaking(Offender).

% Paragraph 5 – supply of incorrect, incomplete or misleading information
required_fine_for_misleading_information(Offender, eur(7500000)) :-
    provides_incorrect_information(Offender),
    \+ undertaking(Offender).

required_fine_for_misleading_information(Offender, percent(1)) :-
    provides_incorrect_information(Offender),
    undertaking(Offender).

% --- Provenance -------------------------------------------------------------------

provenance(required_lay_down_penalties_rules/1, 'celex:32024R1689/oj#art_99').
provenance(required_notify_commission_of_penalties_rules/1, 'celex:32024R1689/oj#art_99').
provenance(required_notify_commission_of_amendment/1, 'celex:32024R1689/oj#art_99').
provenance(required_rules_on_fines_for_public_authorities/1, 'celex:32024R1689/oj#art_99').
provenance(required_annual_report_of_fines/1, 'celex:32024R1689/oj#art_99').
provenance(required_fine_for_ai_practice_prohibition/2, 'celex:32024R1689/oj#art_99').
provenance(required_fine_for_operator_obligation_non_compliance/2, 'celex:32024R1689/oj#art_99').
provenance(required_fine_for_misleading_information/2, 'celex:32024R1689/oj#art_99').

% --- References -------------------------------------------------------------------

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
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99').
