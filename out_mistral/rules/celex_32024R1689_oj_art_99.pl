% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : eb43289c9d49ff1c40ce3ac6f7ccf00d7a3e77d7626b8c4b42404f8f5cab41e1
% cached     : False
% title      : Penalties
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_99').
:- pred administrative_fine/1, gloss('monetary penalty imposed for infringement'), source('celex:32024R1689/oj#art_99').
:- pred infringement/1, gloss('violation of the regulation by an operator'), source('celex:32024R1689/oj#art_99').
:- pred penalty_rule/1, gloss('rule on penalties laid down by a Member State'), source('celex:32024R1689/oj#art_99').
:- pred enforcement_measure/1, gloss('measure to ensure implementation of penalties'), source('celex:32024R1689/oj#art_99').
:- pred sme/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_99').
:- pred start_up/1, gloss('newly established innovative enterprise'), source('celex:32024R1689/oj#art_99').
:- pred undertaking/1, gloss('entity engaged in economic activity'), source('celex:32024R1689/oj#art_99').
:- pred total_worldwide_annual_turnover/1, gloss('total worldwide annual turnover of an undertaking'), source('celex:32024R1689/oj#art_99').
:- pred preceding_financial_year/1, gloss('financial year before the infringement'), source('celex:32024R1689/oj#art_99').
:- pred public_authority/1, gloss('public authority of a Member State'), source('celex:32024R1689/oj#art_99').
:- pred public_body/1, gloss('body established under public law'), source('celex:32024R1689/oj#art_99').
:- pred incorrect_information/1, gloss('information that is incorrect, incomplete or misleading'), source('celex:32024R1689/oj#art_99').
:- pred must_lay_down_penalty_rules/2, gloss('Member State must lay down rules on penalties and enforcement measures'), source('celex:32024R1689/oj#art_99').
:- pred must_notify_commission/2, gloss('Member State must notify Commission of penalty rules'), source('celex:32024R1689/oj#art_99').
:- pred must_report_annually/2, gloss('Member State must report annually to Commission on fines'), source('celex:32024R1689/oj#art_99').
:- pred fine_applies/2, gloss('administrative fine applies to infringement type'), source('celex:32024R1689/oj#art_99').
:- pred fine_amount/2, gloss('amount or percentage cap for a fine'), source('celex:32024R1689/oj#art_99').
:- pred effective_proportionate_dissuasive/1, gloss('penalty is effective, proportionate and dissuasive'), source('celex:32024R1689/oj#art_99').
:- pred takes_into_account_sme_interests/1, gloss('penalty takes into account interests of SMEs and start-ups'), source('celex:32024R1689/oj#art_99').
:- pred reduced_fine_for_sme/1, gloss('fine for SME is reduced to lower amount or percentage'), source('celex:32024R1689/oj#art_99').
:- pred circumstance_for_fine_decision/1, gloss('circumstance to be taken into account when deciding on fine'), source('celex:32024R1689/oj#art_99').
:- pred procedural_safeguard_applies/1, gloss('exercise of powers subject to procedural safeguards'), source('celex:32024R1689/oj#art_99').

must_lay_down_penalty_rules(MemberState, PenaltyRule) :-
    member_state(MemberState),
    penalty_rule(PenaltyRule),
    applies_to_infringement(PenaltyRule, infringement(operator(O))),
    effective_proportionate_dissuasive(PenaltyRule),
    takes_into_account_sme_interests(PenaltyRule).

must_notify_commission(MemberState, penalty_rules) :-
    member_state(MemberState),
    without_delay,
    at_latest_by(entry_into_application).

must_notify_commission(MemberState, amendment(PenaltyRule)) :-
    member_state(MemberState),
    penalty_rule(PenaltyRule),
    amendment_to(PenaltyRule),
    without_delay.

must_report_annually(MemberState, administrative_fines_issued) :-
    member_state(MemberState),
    annual_basis,
    report_to(commission).

fine_applies(Fine, noncompliance_with_prohibition(art_5)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_16)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_22)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_23)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_24)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_26)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_31)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_33_par_1)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_33_par_3)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_33_par_4)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_34)) :-
    administrative_fine(Fine).

fine_applies(Fine, noncompliance_with_obligation(art_50)) :-
    administrative_fine(Fine).

fine_applies(Fine, supply_of_incorrect_information) :-
    administrative_fine(Fine).

fine_amount(Fine, eur(35000000)) :-
    fine_applies(Fine, noncompliance_with_prohibition(art_5)),
    \+ undertaking(offender(Fine)).

fine_amount(Fine, percent(7)) :-
    fine_applies(Fine, noncompliance_with_prohibition(art_5)),
    undertaking(offender(Fine)),
    total_worldwide_annual_turnover(offender(Fine), Turnover),
    preceding_financial_year(offender(Fine)),
    Fine is 0.07 * Turnover,
    Fine > 35000000.

fine_amount(Fine, eur(15000000)) :-
    fine_applies(Fine, noncompliance_with_obligation(_)),
    \+ undertaking(offender(Fine)).

fine_amount(Fine, percent(3)) :-
    fine_applies(Fine, noncompliance_with_obligation(_)),
    undertaking(offender(Fine)),
    total_worldwide_annual_turnover(offender(Fine), Turnover),
    preceding_financial_year(offender(Fine)),
    Fine is 0.03 * Turnover,
    Fine > 15000000.

fine_amount(Fine, eur(7500000)) :-
    fine_applies(Fine, supply_of_incorrect_information),
    \+ undertaking(offender(Fine)).

fine_amount(Fine, percent(1)) :-
    fine_applies(Fine, supply_of_incorrect_information),
    undertaking(offender(Fine)),
    total_worldwide_annual_turnover(offender(Fine), Turnover),
    preceding_financial_year(offender(Fine)),
    Fine is 0.01 * Turnover,
    Fine > 7500000.

reduced_fine_for_sme(Fine) :-
    administrative_fine(Fine),
    offender(Fine, O),
    sme(O).

reduced_fine_for_sme(Fine) :-
    administrative_fine(Fine),
    offender(Fine, O),
    start_up(O).

circumstance_for_fine_decision(nature_gravity_duration_of_infringement).

circumstance_for_fine_decision(consequences_of_infringement).

circumstance_for_fine_decision(purpose_of_ai_system).

circumstance_for_fine_decision(number_of_affected_persons).

circumstance_for_fine_decision(level_of_damage_suffered).

circumstance_for_fine_decision(previous_fines_by_market_surveillance_authorities).

circumstance_for_fine_decision(previous_fines_by_other_authorities).

circumstance_for_fine_decision(size_of_operator).

circumstance_for_fine_decision(annual_turnover_of_operator).

circumstance_for_fine_decision(market_share_of_operator).

circumstance_for_fine_decision(aggravating_or_mitigating_factors).

circumstance_for_fine_decision(financial_benefits_gained).

circumstance_for_fine_decision(losses_avoided).

circumstance_for_fine_decision(degree_of_cooperation).

circumstance_for_fine_decision(degree_of_responsibility).

circumstance_for_fine_decision(technical_and_organisational_measures).

circumstance_for_fine_decision(manner_infringement_became_known).

circumstance_for_fine_decision(operator_notified_infringement).

circumstance_for_fine_decision(intentional_or_negligent_character).

circumstance_for_fine_decision(action_taken_to_mitigate_harm).

procedural_safeguard_applies(exercise_of_powers(art_99)).

provenance(member_state/1, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine/1, 'celex:32024R1689/oj#art_99').
provenance(infringement/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_rule/1, 'celex:32024R1689/oj#art_99').
provenance(enforcement_measure/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').
provenance(start_up/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').
provenance(total_worldwide_annual_turnover/1, 'celex:32024R1689/oj#art_99').
provenance(preceding_financial_year/1, 'celex:32024R1689/oj#art_99').
provenance(public_authority/1, 'celex:32024R1689/oj#art_99').
provenance(public_body/1, 'celex:32024R1689/oj#art_99').
provenance(incorrect_information/1, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_99').
provenance(fine_applies/2, 'celex:32024R1689/oj#art_99').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_99').
provenance(effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_99').
provenance(takes_into_account_sme_interests/1, 'celex:32024R1689/oj#art_99').
provenance(reduced_fine_for_sme/1, 'celex:32024R1689/oj#art_99').
provenance(circumstance_for_fine_decision/1, 'celex:32024R1689/oj#art_99').
provenance(procedural_safeguard_applies/1, 'celex:32024R1689/oj#art_99').

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
