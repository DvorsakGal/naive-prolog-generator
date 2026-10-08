% unit       : celex:32024R1689/oj#art_99
% title      : Penalties
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : gpt-oss:120b-cloud
% prompt sha : 166e19f0d73b4490426ca93e15824e8681d1355cb2cd7cc566e00d93008b91ab
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_99').

:- pred required_lay_down_rules_on_penalties/1, gloss('Member State shall lay down rules on penalties'), source('celex:32024R1689/oj#art_99').
:- pred required_notify_commission_of_penalties/1, gloss('Member State shall notify the Commission of the rules on penalties'), source('celex:32024R1689/oj#art_99').
:- pred required_report_annual_fines/1, gloss('Member State shall report annually to the Commission the administrative fines issued'), source('celex:32024R1689/oj#art_99').
:- pred required_lay_down_rules_on_fines_for_public_authorities/1, gloss('Member State shall lay down rules on fines for public authorities'), source('celex:32024R1689/oj#art_99').

:- pred prohibited_non_compliance_with_ai_practice/1, gloss('Operator non‑compliance with the prohibition of AI practices'), source('celex:32024R1689/oj#art_99').
:- pred penalty_up_to_35m_eur_or_7pct_turnover/1, gloss('Administrative fine up to EUR 35 000 000 or 7 % of worldwide turnover'), source('celex:32024R1689/oj#art_99').

:- pred prohibited_non_compliance_with_operator_or_notified_body_obligation/1, gloss('Operator or notified body non‑compliance with specific obligations'), source('celex:32024R1689/oj#art_99').
:- pred penalty_up_to_15m_eur_or_3pct_turnover/1, gloss('Administrative fine up to EUR 15 000 000 or 3 % of worldwide turnover'), source('celex:32024R1689/oj#art_99').

:- pred prohibited_incorrect_information_supply/1, gloss('Supply of incorrect, incomplete or misleading information to notified bodies or national competent authorities'), source('celex:32024R1689/oj#art_99').
:- pred penalty_up_to_7_5m_eur_or_1pct_turnover/1, gloss('Administrative fine up to EUR 7 500 000 or 1 % of worldwide turnover'), source('celex:32024R1689/oj#art_99').

% Duties of Member States
required_lay_down_rules_on_penalties(MS) :-
    member_state(MS),
    member_state(MS).

required_notify_commission_of_penalties(MS) :-
    member_state(MS),
    member_state(MS).

required_report_annual_fines(MS) :-
    member_state(MS),
    member_state(MS).

required_lay_down_rules_on_fines_for_public_authorities(MS) :-
    member_state(MS),
    member_state(MS).

% Penalties for non‑compliance with AI practice prohibition (Art 5)
prohibited_non_compliance_with_ai_practice(O) :-
    operator(O),
    operator(O).

penalty_up_to_35m_eur_or_7pct_turnover(O) :-
    prohibited_non_compliance_with_ai_practice(O),
    prohibited_non_compliance_with_ai_practice(O).

% Penalties for non‑compliance with obligations of providers, ARs, importers, distributors, deployers, notified bodies, transparency (Art 99 para 4)
prohibited_non_compliance_with_operator_or_notified_body_obligation(A) :-
    ( operator(A) ; notified_body(A) ),
    ( operator(A) ; notified_body(A) ).

penalty_up_to_15m_eur_or_3pct_turnover(A) :-
    prohibited_non_compliance_with_operator_or_notified_body_obligation(A),
    prohibited_non_compliance_with_operator_or_notified_body_obligation(A).

% Penalties for supplying incorrect information (Art 99 para 5)
prohibited_incorrect_information_supply(P) :-
    provider(P),
    provider(P).

penalty_up_to_7_5m_eur_or_1pct_turnover(P) :-
    prohibited_incorrect_information_supply(P),
    prohibited_incorrect_information_supply(P).

% Provenance
provenance(required_lay_down_rules_on_penalties/1, 'celex:32024R1689/oj#art_99').
provenance(required_notify_commission_of_penalties/1, 'celex:32024R1689/oj#art_99').
provenance(required_report_annual_fines/1, 'celex:32024R1689/oj#art_99').
provenance(required_lay_down_rules_on_fines_for_public_authorities/1, 'celex:32024R1689/oj#art_99').

provenance(prohibited_non_compliance_with_ai_practice/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_up_to_35m_eur_or_7pct_turnover/1, 'celex:32024R1689/oj#art_99').

provenance(prohibited_non_compliance_with_operator_or_notified_body_obligation/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_up_to_15m_eur_or_3pct_turnover/1, 'celex:32024R1689/oj#art_99').

provenance(prohibited_incorrect_information_supply/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_up_to_7_5m_eur_or_1pct_turnover/1, 'celex:32024R1689/oj#art_99').

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
