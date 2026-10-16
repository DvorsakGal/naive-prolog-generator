% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 85ce64b606a0d1e52aceec268ed4eaa7153f0528d7a54b88cd5c84aa15925898
% cached     : False
% title      : Penalties
:- pred must_lay_down_penalty_rules(MemberState, Infringement), gloss('Member State obligation to establish penalty rules for infringements'), source('celex:32024R1689/oj#art_99').
:- pred must_notify_penalty_rules(MemberState, Commission), gloss('Member State obligation to notify penalty rules to Commission'), source('celex:32024R1689/oj#art_99').
:- pred must_report_annual_fines(MemberState, Commission), gloss('Member State obligation to report issued fines annually'), source('celex:32024R1689/oj#art_99').
:- pred administrative_fine_applies(Infringement, Tier), gloss('Infringement is subject to administrative fines of a specific tier'), source('celex:32024R1689/oj#art_99').
:- pred prohibited_practice_infringement(Infringement), gloss('Infringement relates to non-compliance with Article 5 prohibitions'), source('celex:32024R1689/oj#art_99').
:- pred operator_obligation_infringement(Infringement), gloss('Infringement relates to operator or notified body obligations other than Art 5'), source('celex:32024R1689/oj#art_99').
:- pred incorrect_information_infringement(Infringement), gloss('Infringement relates to supply of incorrect information to authorities'), source('celex:32024R1689/oj#art_99').
:- pred sme(Operator), gloss('Operator is an SME including start-ups'), source('celex:32024R1689/oj#art_99').
:- pred undertaking(Offender), gloss('Offender is an undertaking'), source('celex:32024R1689/oj#art_99').

must_lay_down_penalty_rules(MemberState, infringement(Regulation)) :-
    member_state(MemberState),
    regulation(Regulation).

must_notify_penalty_rules(MemberState, commission) :-
    member_state(MemberState).

must_report_annual_fines(MemberState, commission) :-
    member_state(MemberState).

administrative_fine_applies(Infringement, tier(percent(7), eur(35000000))) :-
    prohibited_practice_infringement(Infringement).

administrative_fine_applies(Infringement, tier(percent(3), eur(15000000))) :-
    operator_obligation_infringement(Infringement).

administrative_fine_applies(Infringement, tier(percent(1), eur(7500000))) :-
    incorrect_information_infringement(Infringement).

prohibited_practice_infringement(non_compliance(Article)) :-
    Article = 'celex:32024R1689/oj#art_5'.

operator_obligation_infringement(non_compliance(Article)) :-
    member(Article, [
        'celex:32024R1689/oj#art_16',
        'celex:32024R1689/oj#art_22',
        'celex:32024R1689/oj#art_23',
        'celex:32024R1689/oj#art_24',
        'celex:32024R1689/oj#art_26',
        'celex:32024R1689/oj#art_31',
        'celex:32024R1689/oj#art_33/par_1',
        'celex:32024R1689/oj#art_33/par_3',
        'celex:32024R1689/oj#art_33/par_4',
        'celex:32024R1689/oj#art_34',
        'celex:32024R1689/oj#art_50'
    ]).

incorrect_information_infringement(supply_of_information(Status, Recipient)) :-
    member(Status, [incorrect, incomplete, misleading]),
    member(Recipient, [notified_body, national_competent_authority]).

sme(Operator) :-
    operator(Operator),
    small_or_medium_enterprise(Operator).

undertaking(Offender) :-
    legal_entity(Offender),
    economic_activity(Offender).

provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine_applies/2, 'celex:32024R1689/oj#art_99').
provenance(prohibited_practice_infringement/1, 'celex:32024R1689/oj#art_99').
provenance(operator_obligation_infringement/1, 'celex:32024R1689/oj#art_99').
provenance(incorrect_information_infringement/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').

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
