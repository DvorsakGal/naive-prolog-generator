% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 45b79ef6ad8d53f30ac0bc8809033ebca62dc63a1089da2f0b57bf78745e09d5
% cached     : False
% title      : Penalties
:- pred must_lay_down_penalty_rules/1, gloss('Member State obligation to establish rules on penalties and enforcement measures'), source('celex:32024R1689/oj#art_99').
:- pred must_notify_penalty_rules/2, gloss('Member State obligation to notify Commission of penalty rules and amendments'), source('celex:32024R1689/oj#art_99').
:- pred must_report_annual_fines/2, gloss('Member State obligation to report issued administrative fines and litigation annually'), source('celex:32024R1689/oj#art_99').
:- pred penalty_for_prohibited_practice/2, gloss('Administrative fine applicable to non-compliance with Article 5 prohibitions'), source('celex:32024R1689/oj#art_99').
:- pred penalty_for_operator_obligation/2, gloss('Administrative fine applicable to non-compliance with operator or notified body obligations'), source('celex:32024R1689/oj#art_99').
:- pred penalty_for_misleading_information/2, gloss('Administrative fine applicable to supply of incorrect or misleading information'), source('celex:32024R1689/oj#art_99').
:- pred sme_penalty_cap_applies/2, gloss('Penalty cap for SMEs is the lower of percentage or fixed amount'), source('celex:32024R1689/oj#art_99').
:- pred must_consider_circumstances_for_fine/2, gloss('Authority obligation to consider relevant circumstances when imposing fines'), source('celex:32024R1689/oj#art_99').

must_lay_down_penalty_rules(MemberState) :-
    operator(_Operator),
    prohibited_practice_infringement(_Infringement).

must_notify_penalty_rules(MemberState, Commission) :-
    must_lay_down_penalty_rules(MemberState),
    ai_office(Commission).

must_report_annual_fines(MemberState, Commission) :-
    must_lay_down_penalty_rules(MemberState),
    ai_office(Commission).

penalty_for_prohibited_practice(Infringement, Fine) :-
    prohibited_practice_infringement(Infringement),
    administrative_fine(Fine).

penalty_for_operator_obligation(Infringement, Fine) :-
    operator(_Operator),
    \+ prohibited_practice_infringement(Infringement),
    administrative_fine(Fine).

penalty_for_misleading_information(Supply, Fine) :-
    incorrect_or_misleading_supply(Supply),
    administrative_fine(Fine).

sme_penalty_cap_applies(Offender, Fine) :-
    sme(Offender),
    administrative_fine(Fine).

must_consider_circumstances_for_fine(Authority, Infringement) :-
    national_competent_authority(Authority),
    (prohibited_practice_infringement(Infringement) ; operator_obligation_infringement(Infringement)).

provenance(must_lay_down_penalty_rules/1, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99').
provenance(penalty_for_prohibited_practice/2, 'celex:32024R1689/oj#art_99').
provenance(penalty_for_operator_obligation/2, 'celex:32024R1689/oj#art_99').
provenance(penalty_for_misleading_information/2, 'celex:32024R1689/oj#art_99').
provenance(sme_penalty_cap_applies/2, 'celex:32024R1689/oj#art_99').
provenance(must_consider_circumstances_for_fine/2, 'celex:32024R1689/oj#art_99').

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
