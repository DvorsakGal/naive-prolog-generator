% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 97c8260dcf0ec7b797de99bed3c64e21b870be105e4381b0df44742862c717d1
% cached     : False
% title      : Penalties
:- pred administrative_fine/1, gloss('monetary penalty for infringement'), source('celex:32024R1689/oj#art_99').
:- pred undertaking/1, gloss('entity engaged in economic activity'), source('celex:32024R1689/oj#art_99').
:- pred sme/1, gloss('small and medium-sized enterprise including start-up'), source('celex:32024R1689/oj#art_99').
:- pred supply_of_information/1, gloss('act of providing information to authorities'), source('celex:32024R1689/oj#art_99').
:- pred incorrect_information/1, gloss('information that is false or inaccurate'), source('celex:32024R1689/oj#art_99').
:- pred incomplete_information/1, gloss('information that lacks required content'), source('celex:32024R1689/oj#art_99').
:- pred misleading_information/1, gloss('information that deceives or is likely to deceive'), source('celex:32024R1689/oj#art_99').
:- pred request_from_authority/1, gloss('demand for information by competent authority'), source('celex:32024R1689/oj#art_99').
:- pred fine_amount/2, gloss('maximum fine applicable to infringement'), source('celex:32024R1689/oj#art_99').
:- pred fine_percentage/2, gloss('turnover-based maximum fine percentage'), source('celex:32024R1689/oj#art_99').
:- pred whichever_is_higher/2, gloss('the greater of two fine bases'), source('celex:32024R1689/oj#art_99').
:- pred whichever_is_lower/2, gloss('the lesser of two fine bases'), source('celex:32024R1689/oj#art_99').
:- pred infringement_of_prohibition/1, gloss('breach of prohibited AI practice'), source('celex:32024R1689/oj#art_99').
:- pred infringement_of_operator_obligation/1, gloss('breach of operator or notified body obligation'), source('celex:32024R1689/oj#art_99').
:- pred infringement_of_information_requirement/1, gloss('breach of information supply obligation'), source('celex:32024R1689/oj#art_99').

infringement_of_prohibition(I) :-
    infringement(I),
    prohibited_practice(P),
    relates_to(I, P).

infringement_of_operator_obligation(I) :-
    infringement(I),
    operator_obligation(O),
    relates_to(I, O),
    \+ prohibited_practice_relates(I).

infringement_of_information_requirement(I) :-
    supply_of_information(I),
    incorrect_information(I) ; incomplete_information(I) ; misleading_information(I),
    request_from_authority(I),
    ( notified_body(B), recipient(I, B) ; national_competent_authority(A), recipient(I, A) ).

fine_amount(infringement_of_prohibition(_), eur(35000000)).
fine_percentage(infringement_of_prohibition(_), percent(7)).

fine_amount(infringement_of_operator_obligation(_), eur(15000000)).
fine_percentage(infringement_of_operator_obligation(_), percent(3)).

fine_amount(infringement_of_information_requirement(_), eur(7500000)).
fine_percentage(infringement_of_information_requirement(_), percent(1)).

applicable_maximum_fine(I, amount(A)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    undertaking(U),
    offender(I, U),
    \+ whichever_is_higher(A, P).

applicable_maximum_fine(I, percentage(P)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    undertaking(U),
    offender(I, U),
    \+ whichever_is_higher(A, P).

applicable_maximum_fine(I, whichever_is_higher(A, P)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    undertaking(U),
    offender(I, U).

applicable_maximum_fine(I, whichever_is_lower(A, P)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    sme(S),
    offender(I, S).

must_lay_down_penalties(MemberState, Rules) :-
    member_state(MemberState),
    penalties(Rules),
    enforcement_measures(Rules),
    applicable_to(Rules, operator),
    infringements_of(Rules, 'celex:32024R1689/oj').

must_ensure_implementation(MemberState, Rules) :-
    must_lay_down_penalties(MemberState, Rules),
    properly_implemented(Rules),
    effectively_implemented(Rules).

must_take_into_account(MemberState, sme_interests) :-
    must_lay_down_penalties(MemberState, _).

must_take_into_account(MemberState, economic_viability) :-
    must_lay_down_penalties(MemberState, _),
    sme(S),
    start_up(S).

must_notify_commission(MemberState, penalty_rules) :-
    member_state(MemberState),
    rules_on_penalties(MemberState, Rules),
    other_enforcement_measures(MemberState, Measures),
    without_delay(MemberState),
    by_date_of_entry_into_application(MemberState).

must_notify_commission(MemberState, amendment(ExistingRules)) :-
    member_state(MemberState),
    subsequent_amendment(ExistingRules),
    without_delay(MemberState).

subject_to_administrative_fine(I, F) :-
    infringement_of_prohibition(I),
    applicable_maximum_fine(I, F).

subject_to_administrative_fine(I, F) :-
    infringement_of_operator_obligation(I),
    applicable_maximum_fine(I, F).

subject_to_administrative_fine(I, F) :-
    infringement_of_information_requirement(I),
    applicable_maximum_fine(I, F).

must_consider_circumstances(Authority, I) :-
    imposes_fine(Authority, I),
    nature_of_infringement(I),
    gravity_of_infringement(I),
    duration_of_infringement(I),
    consequences_of_infringement(I),
    purpose_of_ai_system(I, _P),
    number_of_affected_persons(I),
    level_of_damage(I).

must_consider(Authority, previous_fines_same_infringement) :-
    imposes_fine(Authority, I),
    other_market_surveillance_authority(Other),
    administrative_fine_already_applied(Other, same_operator(I), same_infringement(I)).

must_consider(Authority, previous_fines_other_law) :-
    imposes_fine(Authority, I),
    other_authority(Other),
    administrative_fine_already_applied(Other, same_operator(I), other_infringement(_)),
    same_activity_or_omission(I, OtherInfringement),
    infringement_of_union_or_national_law(OtherInfringement).

must_consider(Authority, operator_size) :-
    imposes_fine(Authority, I),
    size(operator(I)),
    annual_turnover(operator(I)),
    market_share(operator(I)).

must_consider(Authority, financial_benefits) :-
    imposes_fine(Authority, I),
    financial_benefits_gained(I) ; losses_avoided(I).

must_consider(Authority, cooperation_degree) :-
    imposes_fine(Authority, I),
    degree_of_cooperation(operator(I), national_competent_authority),
    remedy_infringement(operator(I)),
    mitigate_adverse_effects(operator(I)).

must_consider(Authority, responsibility_degree) :-
    imposes_fine(Authority, I),
    degree_of_responsibility(operator(I)),
    technical_measures_implemented(operator(I)),
    organisational_measures_implemented(operator(I)).

must_consider(Authority, manner_of_discovery) :-
    imposes_fine(Authority, I),
    manner_infringement_became_known(Authority, I),
    operator_notified_infringement(operator(I), Extent).

must_consider(Authority, intentional_or_negligent) :-
    imposes_fine(Authority, I),
    intentional_infringement(I) ; negligent_infringement(I).

must_consider(Authority, mitigation_actions) :-
    imposes_fine(Authority, I),
    action_taken(operator(I), mitigate_harm(affected_persons)).

must_lay_down_rules_public_authorities(MemberState, Extent) :-
    member_state(MemberState),
    public_authority(P),
    body_established(P, MemberState),
    administrative_fines_applicable_to(P, Extent).

must_report_annual_fines(MemberState, Commission, Year) :-
    member_state(MemberState),
    administrative_fines_issued(MemberState, Year),
    related_litigation(MemberState, Year),
    judicial_proceedings(MemberState, Year).

provenance(administrative_fine/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').
provenance(supply_of_information/1, 'celex:32024R1689/oj#art_99').
provenance(incorrect_information/1, 'celex:32024R1689/oj#art_99').
provenance(incomplete_information/1, 'celex:32024R1689/oj#art_99').
provenance(misleading_information/1, 'celex:32024R1689/oj#art_99').
provenance(request_from_authority/1, 'celex:32024R1689/oj#art_99').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_99').
provenance(fine_percentage/2, 'celex:32024R1689/oj#art_99').
provenance(whichever_is_higher/2, 'celex:32024R1689/oj#art_99').
provenance(whichever_is_lower/2, 'celex:32024R1689/oj#art_99').
provenance(infringement_of_prohibition/1, 'celex:32024R1689/oj#art_99').
provenance(infringement_of_operator_obligation/1, 'celex:32024R1689/oj#art_99').
provenance(infringement_of_information_requirement/1, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_penalties/2, 'celex:32024R1689/oj#art_99').
provenance(must_ensure_implementation/2, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_99').
provenance(subject_to_administrative_fine/2, 'celex:32024R1689/oj#art_99').
provenance(applicable_maximum_fine/2, 'celex:32024R1689/oj#art_99').
provenance(must_consider_circumstances/2, 'celex:32024R1689/oj#art_99').
provenance(must_consider/2, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_rules_public_authorities/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/3, 'celex:32024R1689/oj#art_99').

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
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_5').
