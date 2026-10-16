% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a4d92af844981a5f3604b548b7f62e30f3bc871ac8be9a9d4f4c2888006ae898
% cached     : False
% title      : Exercise of the delegation
:- pred power_to_adopt_delegated_acts_conferred/1, gloss('power to adopt delegated acts is conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred delegation_of_power/1, gloss('delegation of power for a specific purpose'), source('celex:32024R1689/oj#art_97').
:- pred delegation_period/1, gloss('period for which delegation of power is conferred'), source('celex:32024R1689/oj#art_97').
:- pred report_on_delegation/1, gloss('report drawn up in respect of the delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred tacit_extension/1, gloss('tacit extension of delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred revocation_of_delegation/1, gloss('revocation of delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred consultation_of_experts/1, gloss('consultation of experts before adopting a delegated act'), source('celex:32024R1689/oj#art_97').
:- pred notification_of_delegated_act/1, gloss('notification of a delegated act to Parliament and Council'), source('celex:32024R1689/oj#art_97').
:- pred entry_into_force_of_delegated_act/1, gloss('conditions for entry into force of a delegated act'), source('celex:32024R1689/oj#art_97').

% Paragraph 1
power_to_adopt_delegated_acts_conferred(Commission) :-
    % The power is conferred subject to conditions in this article.
    % This is a declarative fact; the conditions are elaborated below.
    true.

% Paragraph 2
delegation_of_power(power(Articles)) :-
    member(Article, [
        'celex:32024R1689/oj#art_6/par_6',
        'celex:32024R1689/oj#art_6/par_7',
        'celex:32024R1689/oj#art_7/par_1',
        'celex:32024R1689/oj#art_7/par_3',
        'celex:32024R1689/oj#art_11/par_3',
        'celex:32024R1689/oj#art_43/par_5',
        'celex:32024R1689/oj#art_43/par_6',
        'celex:32024R1689/oj#art_47/par_5',
        'celex:32024R1689/oj#art_51/par_3',
        'celex:32024R1689/oj#art_52/par_4',
        'celex:32024R1689/oj#art_53/par_5',
        'celex:32024R1689/oj#art_53/par_6'
    ]),
    Articles = Article.

delegation_period(period(years(5), from(date(2024, 8, 1)))) :-
    true.

must_draw_up_report(Commission, delegation_of_power) :-
    delegation_period(period(years(5), from(_))),
    deadline(months(9), before_end_of(period(years(5)))).

tacit_extension(period(identical_duration)) :-
    delegation_period(period(years(5), _)),
    \+ objection_to_extension(European_Parliament, period(identical_duration)),
    \+ objection_to_extension(Council, period(identical_duration)),
    deadline_for_objection(months(3), before_end_of(period(years(5)))).

% Paragraph 3
revocation_of_delegation(power(Articles)) :-
    delegation_of_power(power(Articles)),
    (   revoked_by(European_Parliament)
    ;   revoked_by(Council)
    ).

effect_of_revocation(Decision) :-
    revocation_of_delegation(power(_)),
    decision_of_revocation(Decision),
    ends_delegation(Decision).

takes_effect(Decision, day_following_publication) :-
    decision_of_revocation(Decision),
    published_in_official_journal(Decision).

takes_effect(Decision, later_date_specified(Decision)) :-
    decision_of_revocation(Decision),
    later_date_specified_in_decision(Decision).

validity_of_existing_acts_unaffected(Decision) :-
    decision_of_revocation(Decision),
    delegated_acts_in_force(Acts),
    unaffected_by(Acts, Decision).

% Paragraph 4
must_consult_experts(Commission, before_adopting(delegated_act)) :-
    power_to_adopt_delegated_acts_conferred(Commission),
    experts_designated_by_member_states(Experts),
    principles_of_interinstitutional_agreement(agreement('13 April 2016', 'Better Law-Making')).

% Paragraph 5
must_notify(Commission, delegated_act(Act)) :-
    adopts_delegated_act(Commission, Act),
    simultaneously_notify(Commission, Act, European_Parliament),
    simultaneously_notify(Commission, Act, Council).

% Paragraph 6
entry_into_force_of_delegated_act(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, power(Articles)),
    delegation_of_power(power(Articles)),
    notification_of_delegated_act(Act),
    period_of_three_months_elapsed(Act),
    \+ objection_expressed(European_Parliament, Act),
    \+ objection_expressed(Council, Act).

entry_into_force_of_delegated_act(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, power(Articles)),
    delegation_of_power(power(Articles)),
    notification_of_delegated_act(Act),
    before_expiry_of_period(Act, months(3)),
    both_informed_no_objection(European_Parliament, Council, Commission, Act).

extension_of_objection_period(Act, months(3)) :-
    delegated_act(Act),
    (   initiative_of(European_Parliament)
    ;   initiative_of(Council)
    ).

% Provenance
provenance(power_to_adopt_delegated_acts_conferred/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(revocation_of_delegation/1, 'celex:32024R1689/oj#art_97').
provenance(effect_of_revocation/1, 'celex:32024R1689/oj#art_97').
provenance(takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(validity_of_existing_acts_unaffected/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(entry_into_force_of_delegated_act/1, 'celex:32024R1689/oj#art_97').
provenance(extension_of_objection_period/2, 'celex:32024R1689/oj#art_97').

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
