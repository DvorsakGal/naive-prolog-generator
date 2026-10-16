% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 21a5088ef054b6def1b71d69aec0c50766d994b30b8e2e14c9ec68363d45eb12
% cached     : False
% title      : Penalties
:- pred must_lay_down_penalty_rules/2, gloss('Member State must lay down rules on penalties and enforcement measures'), source('celex:32024R1689/oj#art_99').
:- pred must_notify_penalty_rules/2, gloss('Member State must notify the Commission of penalty rules'), source('celex:32024R1689/oj#art_99').
:- pred must_notify_amendments/2, gloss('Member State must notify the Commission of amendments to penalty rules'), source('celex:32024R1689/oj#art_99').
:- pred subject_to_fine/2, gloss('infringement subject to administrative fine'), source('celex:32024R1689/oj#art_99').
:- pred fine_cap/2, gloss('maximum fine for an infringement'), source('celex:32024R1689/oj#art_99').
:- pred sme_fine_cap/2, gloss('maximum fine for SMEs'), source('celex:32024R1689/oj#art_99').
:- pred must_report_fines/2, gloss('Member State must report annually on fines issued'), source('celex:32024R1689/oj#art_99').
:- pred must_lay_down_public_authority_fine_rules/1, gloss('Member State must lay down rules on fines for public authorities'), source('celex:32024R1689/oj#art_99').
:- pred fine_decision_factors/1, gloss('factors to consider when deciding on a fine'), source('celex:32024R1689/oj#art_99').

must_lay_down_penalty_rules(MemberState, infringement(operators)) :-
    member_state(MemberState).

must_notify_penalty_rules(MemberState, penalty_rules) :-
    member_state(MemberState).

must_notify_amendments(MemberState, penalty_rules) :-
    member_state(MemberState).

subject_to_fine(infringement(art_5), fine(eur(35000000), percent(7))).
subject_to_fine(infringement(art_16), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_22), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_23), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_24), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_26), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_31), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_33_par_1), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_33_par_3), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_33_par_4), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_34), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_50), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(misleading_information), fine(eur(7500000), percent(1))).

fine_cap(infringement(art_5), fine(eur(35000000), percent(7))).
fine_cap(infringement(art_16), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_22), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_23), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_24), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_26), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_31), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_33_par_1), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_33_par_3), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_33_par_4), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_34), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_50), fine(eur(15000000), percent(3))).
fine_cap(infringement(misleading_information), fine(eur(7500000), percent(1))).

sme_fine_cap(infringement(I), fine(Amount, Percent)) :-
    fine_cap(infringement(I), fine(Amount, Percent)).

must_report_fines(MemberState, annual_report) :-
    member_state(MemberState).

must_lay_down_public_authority_fine_rules(MemberState) :-
    member_state(MemberState).

fine_decision_factors([
    nature_gravity_duration_consequences,
    prior_fines_by_market_surveillance_authorities,
    prior_fines_by_other_authorities,
    size_turnover_market_share,
    aggravating_or_mitigating_factors,
    degree_of_cooperation,
    degree_of_responsibility,
    manner_infringement_became_known,
    intentional_or_negligent_character,
    action_to_mitigate_harm
]).

provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_amendments/2, 'celex:32024R1689/oj#art_99').
provenance(subject_to_fine/2, 'celex:32024R1689/oj#art_99').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(sme_fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_fines/2, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_public_authority_fine_rules/1, 'celex:32024R1689/oj#art_99').
provenance(fine_decision_factors/1, 'celex:32024R1689/oj#art_99').

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
