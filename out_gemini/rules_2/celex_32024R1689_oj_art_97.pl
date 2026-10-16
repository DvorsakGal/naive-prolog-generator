% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : bb05860c67d6b69341a1a0af91e7b4bc9a0f7012a6a2c976ddd1a81e38c4c1c8
% cached     : False
% title      : Exercise of the delegation
:- pred delegated_power_conferred/2, gloss('Delegation of power is conferred on the Commission under specified article/matter'), source('celex:32024R1689/oj#art_97').
:- pred tacitly_extended/1, gloss('Delegation of power is tacitly extended for five years'), source('celex:32024R1689/oj#art_97').
:- pred opposed_extension/1, gloss('Parliament or Council opposed tacit extension of delegation'), source('celex:32024R1689/oj#art_97').
:- pred revoked_delegation/1, gloss('European Parliament or Council has decided to revoke delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred delegated_power_active/2, gloss('Delegation of power to the Commission is currently active and not revoked'), source('celex:32024R1689/oj#art_97').
:- pred must_consult/2, gloss('Commission must consult designated experts before adopting delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify/2, gloss('Commission must notify adopted delegated act to Parliament and Council'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act_enters_into_force/1, gloss('Delegated act enters into force after notification and expiry of scrutiny period without objection'), source('celex:32024R1689/oj#art_97').
:- pred objection_expressed/1, gloss('Objection to delegated act expressed by Parliament or Council within scrutiny period'), source('celex:32024R1689/oj#art_97').
:- pred non_objection_confirmed/1, gloss('Parliament and Council both informed Commission that they will not object'), source('celex:32024R1689/oj#art_97').
:- pred scrutiny_period_expired/1, gloss('Scrutiny period for delegated act has expired'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act/1, gloss('Act is an adopted delegated act under the regulation'), source('celex:32024R1689/oj#art_97').

% Paragraph 1 & 2: Conferred powers
delegated_power_conferred(commission, article(6, par(6))).
delegated_power_conferred(commission, article(6, par(7))).
delegated_power_conferred(commission, article(7, par(1))).
delegated_power_conferred(commission, article(7, par(3))).
delegated_power_conferred(commission, article(11, par(3))).
delegated_power_conferred(commission, article(43, par(5))).
delegated_power_conferred(commission, article(43, par(6))).
delegated_power_conferred(commission, article(47, par(5))).
delegated_power_conferred(commission, article(51, par(3))).
delegated_power_conferred(commission, article(52, par(4))).
delegated_power_conferred(commission, article(53, par(5))).
delegated_power_conferred(commission, article(53, par(6))).

% Paragraph 2: Tacit extension
tacitly_extended(Power) :-
    delegated_power_conferred(commission, Power),
    \+ opposed_extension(Power).

% Paragraph 2: Duty to report
must_report(commission, delegation_of_power(months(9), before_end_of_period)).

% Paragraph 2 & 3: Active power
delegated_power_active(commission, Power) :-
    delegated_power_conferred(commission, Power),
    \+ revoked_delegation(Power).

% Paragraph 4: Consultation
must_consult(commission, experts(member_states, Act)) :-
    delegated_act(Act).

% Paragraph 5: Notification
must_notify(commission, delegated_act(Act, european_parliament_and_council)) :-
    delegated_act(Act).

% Paragraph 6: Entry into force
delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    scrutiny_period_expired(Act),
    \+ objection_expressed(Act).

delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    non_objection_confirmed(Act).

provenance(delegated_power_conferred/2, 'celex:32024R1689/oj#art_97').
provenance(tacitly_extended/1, 'celex:32024R1689/oj#art_97').
provenance(delegated_power_active/2, 'celex:32024R1689/oj#art_97').
provenance(must_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act_enters_into_force/1, 'celex:32024R1689/oj#art_97').

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
