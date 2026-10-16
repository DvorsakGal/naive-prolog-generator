% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : fd96c4939bc806a69c83adef3d0c67e830d723546ccb18b573e7674c3ceeccfc
% cached     : False
% title      : Penalties
:- pred must_lay_down_penalty_rules/2, gloss('Member State must lay down rules on penalties and enforcement measures'), source('celex:32024R1689/oj#art_99/par_1').
:- pred must_notify_penalty_rules/2, gloss('Member State must notify Commission of penalty rules'), source('celex:32024R1689/oj#art_99/par_2').
:- pred must_notify_amendment/2, gloss('Member State must notify Commission of any amendment to penalty rules'), source('celex:32024R1689/oj#art_99/par_2').
:- pred prohibited_practice_infringement/1, gloss('infringement of prohibited AI practices under Article 5'), source('celex:32024R1689/oj#art_99/par_3').
:- pred operator_notified_body_infringement/1, gloss('infringement of operator or notified body obligations under Article 99(4)'), source('celex:32024R1689/oj#art_99/par_4').
:- pred incorrect_information_supply/1, gloss('supply of incorrect, incomplete or misleading information to notified bodies or national competent authorities'), source('celex:32024R1689/oj#art_99/par_5').
:- pred sme_startup/1, gloss('SME including start-up'), source('celex:32024R1689/oj#art_99/par_6').
:- pred must_report_annual_fines/2, gloss('Member State must report annually to Commission on administrative fines issued'), source('celex:32024R1689/oj#art_99/par_11').

% Paragraph 1
must_lay_down_penalty_rules(MemberState, infringement_of_regulation) :-
    member_state(MemberState),
    operator(_).

% Paragraph 2
must_notify_penalty_rules(MemberState, penalty_rules) :-
    member_state(MemberState),
    must_lay_down_penalty_rules(MemberState, _).

must_notify_amendment(MemberState, amendment(penalty_rules)) :-
    member_state(MemberState),
    must_lay_down_penalty_rules(MemberState, _).

% Paragraph 3
fine_cap(prohibited_practice_infringement, cap(eur(35000000), percent_of_turnover(7))) :-
    prohibited_practice_infringement(_).

prohibited_practice_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_5').

% Paragraph 4
fine_cap(operator_notified_body_infringement, cap(eur(15000000), percent_of_turnover(3))) :-
    operator_notified_body_infringement(_).

operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_16').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_22').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_23').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_24').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_26').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_31').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_33/par_1').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_33/par_3').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_33/par_4').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_34').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_50').

% Paragraph 5
fine_cap(incorrect_information_supply, cap(eur(7500000), percent_of_turnover(1))) :-
    incorrect_information_supply(_).

incorrect_information_supply(S) :-
    supply_of_information(S),
    ( incorrect(S) ; incomplete(S) ; misleading(S) ),
    recipient(S, R),
    ( notified_body(R) ; national_competent_authority(R) ).

% Paragraph 6
fine_cap(sme_startup_infringement, cap(Amount, Percent)) :-
    sme_startup(Offender),
    infringement(Offender, I),
    ( fine_cap(prohibited_practice_infringement, cap(Amount1, Percent1)),
      I = prohibited_practice_infringement(_)
    ; fine_cap(operator_notified_body_infringement, cap(Amount2, Percent2)),
      I = operator_notified_body_infringement(_)
    ; fine_cap(incorrect_information_supply, cap(Amount3, Percent3)),
      I = incorrect_information_supply(_)
    ),
    lower_of(Amount, Percent, Amount1, Percent1, Amount2, Percent2, Amount3, Percent3).

% Paragraph 11
must_report_annual_fines(MemberState, annual_report(fines)) :-
    member_state(MemberState).

% Provenance
provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99/par_1').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99/par_2').
provenance(must_notify_amendment/2, 'celex:32024R1689/oj#art_99/par_2').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(prohibited_practice_infringement/1, 'celex:32024R1689/oj#art_99/par_3').
provenance(operator_notified_body_infringement/1, 'celex:32024R1689/oj#art_99/par_4').
provenance(incorrect_information_supply/1, 'celex:32024R1689/oj#art_99/par_5').
provenance(sme_startup/1, 'celex:32024R1689/oj#art_99/par_6').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99/par_11').

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
