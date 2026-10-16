% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 545397bc851cd7b5838e7da075699cbacf2e82fe14e61303d8f6b9aa2fd87f92
% cached     : False
% title      : Exercise of the delegation
:- pred delegated_act/1, gloss('act adopted by the Commission under delegated powers'), source('celex:32024R1689/oj#art_97').
:- pred power_to_adopt_delegated_acts/1, gloss('authority to adopt delegated acts conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred delegation_period/1, gloss('period for which delegated power is conferred'), source('celex:32024R1689/oj#art_97').
:- pred report_on_delegation/1, gloss('report on exercise of delegated power'), source('celex:32024R1689/oj#art_97').
:- pred tacit_extension/1, gloss('automatic extension of delegation period'), source('celex:32024R1689/oj#art_97').
:- pred revocation_of_delegation/1, gloss('decision revoking delegated power'), source('celex:32024R1689/oj#art_97').
:- pred consultation_of_experts/1, gloss('consultation with Member State experts before adoption'), source('celex:32024R1689/oj#art_97').
:- pred notification_of_delegated_act/1, gloss('notification of adopted delegated act to Parliament and Council'), source('celex:32024R1689/oj#art_97').
:- pred objection_period/1, gloss('period for Parliament or Council to object to delegated act'), source('celex:32024R1689/oj#art_97').
:- pred entry_into_force_condition/1, gloss('condition for delegated act to enter into force'), source('celex:32024R1689/oj#art_97').

power_to_adopt_delegated_acts(commission).

delegation_period(years(5)).
delegation_period_start(date(2024, 8, 1)).

must_draw_up_report(commission, delegation_report) :-
    power_to_adopt_delegated_acts(commission),
    delegation_period(years(5)),
    before_end_of_period(months(9), delegation_period).

tacit_extension_applies(delegation_period) :-
    power_to_adopt_delegated_acts(commission),
    \+ opposition_expressed(european_parliament, extension),
    \+ opposition_expressed(council, extension),
    before_end_of_period(months(3), current_period).

may_revoke(european_parliament, delegation_power).
may_revoke(council, delegation_power).

revocation_takes_effect(revocation_decision, day_after_publication) :-
    revocation_of_delegation(revocation_decision).

revocation_takes_effect(revocation_decision, specified_date) :-
    revocation_of_delegation(revocation_decision),
    later_date_specified(revocation_decision).

exempt_validity_of_existing_acts(revocation_decision) :-
    revocation_of_delegation(revocation_decision).

must_consult_experts(commission, member_state_experts) :-
    power_to_adopt_delegated_acts(commission),
    before_adopting(delegated_act(_)).

must_notify(commission, delegated_act(A)) :-
    power_to_adopt_delegated_acts(commission),
    adopts(commission, delegated_act(A)),
    notify(european_parliament, delegated_act(A)),
    notify(council, delegated_act(A)).

objection_period(months(3)).

entry_into_force_condition(delegated_act(A)) :-
    delegated_act(A),
    \+ objection_expressed(european_parliament, A),
    \+ objection_expressed(council, A),
    within(objection_period, notification_of(delegated_act(A))).

entry_into_force_condition(delegated_act(A)) :-
    delegated_act(A),
    informed(european_parliament, commission, no_objection(A)),
    informed(council, commission, no_objection(A)),
    before_expiry(objection_period, notification_of(delegated_act(A))).

extended_objection_period(months(6)) :-
    initiative(european_parliament, extension).
extended_objection_period(months(6)) :-
    initiative(council, extension).

provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period_start/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension_applies/1, 'celex:32024R1689/oj#art_97').
provenance(may_revoke/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(exempt_validity_of_existing_acts/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(objection_period/1, 'celex:32024R1689/oj#art_97').
provenance(entry_into_force_condition/1, 'celex:32024R1689/oj#art_97').
provenance(extended_objection_period/1, 'celex:32024R1689/oj#art_97').

references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_47/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_51/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_52/par_4').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_6').
