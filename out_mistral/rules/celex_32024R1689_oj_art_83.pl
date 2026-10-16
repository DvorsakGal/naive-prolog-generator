% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 518031e9e8dc550512abc5651b9029eadae5f06b530463297fbe6fa13c4a28b0
% cached     : False
% title      : Formal non-compliance
:- pred formal_non_compliance/1, gloss('finding of formal non-compliance by market surveillance authority'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_affixed_in_violation/1, gloss('CE marking affixed in violation of Article 48'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_not_affixed/1, gloss('CE marking has not been affixed'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_of_conformity_not_drawn_up/1, gloss('EU declaration of conformity has not been drawn up'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_of_conformity_not_drawn_up_correctly/1, gloss('EU declaration of conformity has not been drawn up correctly'), source('celex:32024R1689/oj#art_83').
:- pred registration_in_eu_database_not_carried_out/1, gloss('registration in the EU database has not been carried out'), source('celex:32024R1689/oj#art_83').
:- pred no_authorised_representative_appointed/1, gloss('no authorised representative has been appointed where applicable'), source('celex:32024R1689/oj#art_83').
:- pred technical_documentation_not_available/1, gloss('technical documentation is not available'), source('celex:32024R1689/oj#art_83').
:- pred must_put_end_to_non_compliance/2, gloss('market surveillance authority requires provider to put an end to non-compliance'), source('celex:32024R1689/oj#art_83').
:- pred must_take_restriction_measures/2, gloss('market surveillance authority takes measures to restrict, prohibit, recall or withdraw'), source('celex:32024R1689/oj#art_83').

formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_affixed_in_violation(S).

formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_not_affixed(S).

formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up(S).

formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up_correctly(S).

formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    registration_in_eu_database_not_carried_out(S).

formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    no_authorised_representative_appointed(S).

formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    technical_documentation_not_available(S).

must_put_end_to_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    provider(P),
    formal_non_compliance(S),
    requires_end_to_non_compliance(Authority, P, S).

must_take_restriction_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(S),
    non_compliance_persists(S),
    restrict_or_prohibit_or_recall_or_withdraw(Authority, S).

requires_end_to_non_compliance(Authority, Provider, S) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_non_compliance(S).

non_compliance_persists(S) :-
    formal_non_compliance(S).

restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    restrict_market_availability(Authority, S).

restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    prohibit_market_availability(Authority, S).

restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    recall_of_ai_system(S).

restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    withdrawal_of_ai_system(S).

restrict_market_availability(Authority, S) :-
    market_surveillance_authority(Authority),
    making_available_on_market(S).

prohibit_market_availability(Authority, S) :-
    market_surveillance_authority(Authority),
    making_available_on_market(S).

provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_in_eu_database_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(no_authorised_representative_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(must_put_end_to_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
