% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4beeb9d802236834a03ece89dd5462bba854eedb015b0763ddc4df82ac33d740
% cached     : False
% title      : Exercise of the delegation
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_97').
:- pred european_parliament/1, gloss('the European Parliament'), source('celex:32024R1689/oj#art_97').
:- pred council/1, gloss('the Council of the European Union'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act/1, gloss('act adopted by the Commission under delegated power'), source('celex:32024R1689/oj#art_97').
:- pred delegation_of_power/1, gloss('power to adopt delegated acts conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred member_state/1, gloss('a Member State of the European Union'), source('celex:32024R1689/oj#art_97').
:- pred expert/1, gloss('expert designated by a Member State for consultation'), source('celex:32024R1689/oj#art_97').

:- pred power_conferred_on_commission/1, gloss('delegated power is conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred delegation_period/1, gloss('delegation of power is for a period of five years from 1 August 2024'), source('celex:32024R1689/oj#art_97').
:- pred tacit_extension/1, gloss('delegation of power is tacitly extended for identical periods'), source('celex:32024R1689/oj#art_97').
:- pred report_on_delegation/1, gloss('Commission draws up a report on the delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred revocable_by/2, gloss('delegation of power may be revoked by the given institution'), source('celex:32024R1689/oj#art_97').
:- pred revocation_ends_delegation/2, gloss('decision of revocation puts an end to the specified delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred revocation_takes_effect/2, gloss('revocation takes effect the day following publication or at a later specified date'), source('celex:32024R1689/oj#art_97').
:- pred revocation_preserves_validity/2, gloss('revocation does not affect validity of delegated acts already in force'), source('celex:32024R1689/oj#art_97').
:- pred must_consult_experts/2, gloss('Commission must consult experts designated by each Member State before adopting a delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify/2, gloss('Commission must notify a delegated act simultaneously to the given institution'), source('celex:32024R1689/oj#art_97').
:- pred enters_into_force/1, gloss('delegated act enters into force under the specified conditions'), source('celex:32024R1689/oj#art_97').
:- pred no_objection/2, gloss('no objection expressed by the given institution within the period'), source('celex:32024R1689/oj#art_97').
:- pred informed_no_objection/2, gloss('institution has informed the Commission it will not object'), source('celex:32024R1689/oj#art_97').
:- pred objection_period/1, gloss('period for objection is three months from notification'), source('celex:32024R1689/oj#art_97').
:- pred period_extended/1, gloss('objection period is extended by three months at initiative of Parliament or Council'), source('celex:32024R1689/oj#art_97').

% Article 97(1): Power to adopt delegated acts is conferred on the Commission
power_conferred_on_commission(D) :-
    delegation_of_power(D),
    commission(C),
    conferred_on(D, C).

conferred_on(D, commission).

% Article 97(2): Delegation for five years from 1 August 2024, with report and tacit extension
delegation_period(D) :-
    delegation_of_power(D),
    period(years(5), from(date(2024, 8, 1))).

period(years(5), from(date(2024, 8, 1))).

report_on_delegation(D) :-
    delegation_of_power(D),
    commission(C),
    must_draw_up_report(C, D, before(months(9), end_of(period(years(5))))).

must_draw_up_report(commission, D, Deadline) :-
    delegation_of_power(D),
    before(months(9), end_of(period(years(5)))).

tacit_extension(D) :-
    delegation_of_power(D),
    \+ opposed_extension(D, european_parliament),
    \+ opposed_extension(D, council),
    before(months(3), end_of(period(years(5)))).

opposed_extension(D, I) :-
    delegation_of_power(D),
    institution(I),
    opposes_extension(I, D).

institution(european_parliament).
institution(council).

% Article 97(3): Revocation by European Parliament or Council
revocable_by(D, european_parliament) :-
    delegation_of_power(D).

revocable_by(D, council) :-
    delegation_of_power(D).

revocation_ends_delegation(Decision, D) :-
    decision_of_revocation(Decision),
    specifies_delegation(Decision, D),
    delegation_of_power(D).

revocation_takes_effect(Decision, Date) :-
    decision_of_revocation(Decision),
    published_in_official_journal(Decision, PubDate),
    Date is next_day(PubDate).

revocation_takes_effect(Decision, LaterDate) :-
    decision_of_revocation(Decision),
    specifies_later_date(Decision, LaterDate).

revocation_preserves_validity(Decision, Act) :-
    decision_of_revocation(Decision),
    delegated_act(Act),
    in_force_before(Act, Decision).

% Article 97(4): Consultation of experts before adopting delegated act
must_consult_experts(commission, Act) :-
    delegated_act(Act),
    before_adopting(Act),
    member_state(MS),
    expert(E),
    designated_by(E, MS).

% Article 97(5): Notification to European Parliament and Council
must_notify(commission, Act) :-
    delegated_act(Act),
    as_soon_as_adopted(Act),
    notify_simultaneously(Act, european_parliament),
    notify_simultaneously(Act, council).

% Article 97(6): Entry into force conditions
enters_into_force(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, delegation_of_power(_)),
    notified_to(Act, european_parliament),
    notified_to(Act, council),
    no_objection_within(Act, months(3)).

enters_into_force(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, delegation_of_power(_)),
    notified_to(Act, european_parliament),
    notified_to(Act, council),
    informed_no_objection(european_parliament, Act),
    informed_no_objection(council, Act),
    before_expiry_of_period(Act, months(3)).

no_objection_within(Act, Period) :-
    delegated_act(Act),
    \+ objection_expressed(european_parliament, Act, Period),
    \+ objection_expressed(council, Act, Period).

objection_expressed(I, Act, Period) :-
    institution(I),
    delegated_act(Act),
    expresses_objection(I, Act),
    within(Period).

period_extended(Act) :-
    delegated_act(Act),
    initiative(european_parliament, Act);
    initiative(council, Act).

% Provenance
provenance(power_conferred_on_commission/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/1, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(report_on_delegation/1, 'celex:32024R1689/oj#art_97').
provenance(revocable_by/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_ends_delegation/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_preserves_validity/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(enters_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(no_objection/2, 'celex:32024R1689/oj#art_97').
provenance(informed_no_objection/2, 'celex:32024R1689/oj#art_97').
provenance(objection_period/1, 'celex:32024R1689/oj#art_97').
provenance(period_extended/1, 'celex:32024R1689/oj#art_97').

% References
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
