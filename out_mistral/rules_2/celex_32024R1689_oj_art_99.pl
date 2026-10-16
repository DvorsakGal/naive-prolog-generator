% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 3e670183f5769fe1ba0d86deabbcb1d44bf508d251c0beec86e0c60761ca126d
% cached     : False
% title      : Penalties
:- pred member_state/1, gloss('a Member State of the European Union'), source('reconciled').
:- pred effective_proportionate_dissuasive/1, gloss('penalty is effective, proportionate and dissuasive'), source('reconciled').
:- pred annual_total_worldwide_turnover/2, gloss('annual total worldwide turnover of an entity in a financial year'), source('reconciled').
:- pred non_compliance_with_prohibition/1, gloss('non-compliance with the prohibition of AI practices under Article 5'), source('reconciled').
:- pred nature_gravity_duration/1, gloss('nature, gravity and duration of the infringement'), source('reconciled').
:- pred relevant_circumstance/1, gloss('circumstance to be taken into account when deciding on a fine'), source('reconciled').
:- pred inform_commission/2, gloss('Member State informs Commission'), source('reconciled').
:- pred must_report/2, gloss('who is obliged to report, what about'), source('reconciled').
:- pred without_delay/0, gloss('without delay'), source('reconciled').
:- pred without_delay/1, gloss('action taken without undue delay'), source('reconciled').

:- pred must_lay_down_penalty_rules/1, gloss('Member State lays down rules on penalties and enforcement measures for infringements by operators'), source('celex:32024R1689/oj#art_99').
:- pred penalty_applies_to_infringement/2, gloss('penalty applies to infringement by operator'), source('celex:32024R1689/oj#art_99').
:- pred administrative_fine_amount/3, gloss('administrative fine amount for infringement type, entity, and amount'), source('celex:32024R1689/oj#art_99').
:- pred fine_cap_eur/2, gloss('fine capped at EUR amount for infringement type'), source('celex:32024R1689/oj#art_99').
:- pred fine_cap_percent_turnover/3, gloss('fine capped at percentage of total worldwide annual turnover for infringement type'), source('celex:32024R1689/oj#art_99').
:- pred fine_cap_higher_of/2, gloss('fine is higher of two caps for infringement type'), source('celex:32024R1689/oj#art_99').
:- pred fine_reduced_for_sme/2, gloss('fine for SME is lower of applicable caps'), source('celex:32024R1689/oj#art_99').
:- pred must_notify_commission_penalties/1, gloss('Member State notifies Commission of penalty rules without delay'), source('celex:32024R1689/oj#art_99').
:- pred must_notify_commission_amendments/1, gloss('Member State notifies Commission of amendments to penalty rules without delay'), source('celex:32024R1689/oj#art_99').
:- pred must_take_into_account_sme_interests/1, gloss('penalties take into account interests of SMEs and their economic viability'), source('celex:32024R1689/oj#art_99').
:- pred must_consider_circumstances_for_fine/1, gloss('all relevant circumstances taken into account when deciding on fine'), source('celex:32024R1689/oj#art_99').
:- pred must_report_annual_fines/1, gloss('Member State reports annually to Commission about administrative fines issued'), source('celex:32024R1689/oj#art_99').
:- pred must_lay_down_rules_public_authorities/1, gloss('Member State lays down rules on fines for public authorities and bodies'), source('celex:32024R1689/oj#art_99').
:- pred fines_imposed_by_courts_or_bodies/1, gloss('fines imposed by competent national courts or other bodies with equivalent effect'), source('celex:32024R1689/oj#art_99').
:- pred procedural_safeguards_apply/1, gloss('exercise of powers subject to procedural safeguards including judicial remedies and due process'), source('celex:32024R1689/oj#art_99').

% Article 99(1): Member States shall lay down penalty rules
must_lay_down_penalty_rules(MS) :-
    member_state(MS).

penalty_applies_to_infringement(MS, O) :-
    member_state(MS),
    operator(O).

effective_proportionate_dissuasive(penalty_rules(MS)) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).

must_take_into_account_sme_interests(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).

% Article 99(2): Notification to Commission
must_notify_commission_penalties(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS),
    without_delay.

must_notify_commission_amendments(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS),
    without_delay.

inform_commission(MS, penalty_rules) :-
    must_notify_commission_penalties(MS).

inform_commission(MS, amendment(penalty_rules)) :-
    must_notify_commission_amendments(MS).

% Article 99(3): Non-compliance with Article 5 prohibitions - fines up to EUR 35,000,000 or 7% turnover
fine_cap_eur(non_compliance_with_prohibition, eur(35000000)).

fine_cap_percent_turnover(non_compliance_with_prohibition, percent(7), preceding_financial_year).

fine_cap_higher_of(non_compliance_with_prohibition, higher_of(eur(35000000), percent(7))).

administrative_fine_amount(non_compliance_with_prohibition, O, Amount) :-
    operator(O),
    fine_cap_higher_of(non_compliance_with_prohibition, Cap),
    fine_amount_within_cap(O, non_compliance_with_prohibition, Cap, Amount).

% Article 99(4): Non-compliance with operator/notified body obligations - fines up to EUR 15,000,000 or 3% turnover
fine_cap_eur(operator_obligations, eur(15000000)).

fine_cap_percent_turnover(operator_obligations, percent(3), preceding_financial_year).

fine_cap_higher_of(operator_obligations, higher_of(eur(15000000), percent(3))).

administrative_fine_amount(operator_obligations, O, Amount) :-
    operator(O),
    fine_cap_higher_of(operator_obligations, Cap),
    fine_amount_within_cap(O, operator_obligations, Cap, Amount).

% Article 99(5): Supply of incorrect, incomplete or misleading information - fines up to EUR 7,500,000 or 1% turnover
fine_cap_eur(misleading_information, eur(7500000)).

fine_cap_percent_turnover(misleading_information, percent(1), preceding_financial_year).

fine_cap_higher_of(misleading_information, higher_of(eur(7500000), percent(1))).

administrative_fine_amount(misleading_information, O, Amount) :-
    operator(O),
    fine_cap_higher_of(misleading_information, Cap),
    fine_amount_within_cap(O, misleading_information, Cap, Amount).

% Helper: fine amount within cap (higher of EUR or percentage for undertakings)
fine_amount_within_cap(O, Type, higher_of(EurCap, percent(P)), Amount) :-
    undertaking(O),
    annual_total_worldwide_turnover(O, Turnover),
    PercentAmount is Turnover * P / 100,
    Amount = max(EurCap, PercentAmount).

fine_amount_within_cap(O, _Type, higher_of(EurCap, _Percent), EurCap) :-
    \+ undertaking(O).

% Article 99(6): SMEs - lower of applicable caps
fine_reduced_for_sme(O, Type) :-
    sme(O),
    member_state(MS),
    penalty_applies_to_infringement(MS, O).

% Article 99(7): Circumstances to consider when deciding on fine
must_consider_circumstances_for_fine(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).

relevant_circumstance(nature_gravity_duration).

relevant_circumstance(previous_fines_same_infringement).

relevant_circumstance(previous_fines_other_law).

relevant_circumstance(size_turnover_market_share).

relevant_circumstance(aggravating_mitigating_factors).

relevant_circumstance(cooperation_with_authorities).

relevant_circumstance(degree_of_responsibility).

relevant_circumstance(manner_infringement_became_known).

relevant_circumstance(intentional_or_negligent).

relevant_circumstance(action_to_mitigate_harm).

% Article 99(8): Rules on fines for public authorities
must_lay_down_rules_public_authorities(MS) :-
    member_state(MS).

% Article 99(9): Fines imposed by courts or bodies with equivalent effect
fines_imposed_by_courts_or_bodies(MS) :-
    member_state(MS).

% Article 99(10): Procedural safeguards
procedural_safeguards_apply(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).

% Article 99(11): Annual reporting to Commission
must_report_annual_fines(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).

must_report(MS, annual_administrative_fines) :-
    must_report_annual_fines(MS).

% Helper predicates
:- pred undertaking/1, gloss('entity that is an undertaking'), source('celex:32024R1689/oj#art_99').
:- pred sme/1, gloss('small or medium-sized enterprise including start-up'), source('celex:32024R1689/oj#art_99').

% Provenance
provenance(must_lay_down_penalty_rules/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_applies_to_infringement/2, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine_amount/3, 'celex:32024R1689/oj#art_99').
provenance(fine_cap_eur/2, 'celex:32024R1689/oj#art_99').
provenance(fine_cap_percent_turnover/3, 'celex:32024R1689/oj#art_99').
provenance(fine_cap_higher_of/2, 'celex:32024R1689/oj#art_99').
provenance(fine_reduced_for_sme/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_penalties/1, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_amendments/1, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account_sme_interests/1, 'celex:32024R1689/oj#art_99').
provenance(must_consider_circumstances_for_fine/1, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/1, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_rules_public_authorities/1, 'celex:32024R1689/oj#art_99').
provenance(fines_imposed_by_courts_or_bodies/1, 'celex:32024R1689/oj#art_99').
provenance(procedural_safeguards_apply/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').

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
