% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 480f80f31a1fe2c67cd0387a49e8a78dba46f1a9059f1376695984c067006a44
% cached     : False
% title      : Formal non-compliance
:- pred formal_non_compliance/1, gloss('finding of formal non-compliance by market surveillance authority'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_affixed_in_violation/1, gloss('CE marking affixed in violation of Article 48'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_not_affixed/1, gloss('CE marking not affixed'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_not_drawn_up/1, gloss('EU declaration of conformity not drawn up'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_not_drawn_up_correctly/1, gloss('EU declaration of conformity not drawn up correctly'), source('celex:32024R1689/oj#art_83').
:- pred registration_not_carried_out/1, gloss('registration in EU database not carried out'), source('celex:32024R1689/oj#art_83').
:- pred no_authorised_representative_appointed/1, gloss('no authorised representative appointed where applicable'), source('celex:32024R1689/oj#art_83').
:- pred technical_documentation_not_available/1, gloss('technical documentation not available'), source('celex:32024R1689/oj#art_83').
:- pred non_compliance_persists/1, gloss('non-compliance referred to in Article 83(1) persists'), source('celex:32024R1689/oj#art_83').

formal_non_compliance(S) :-
    ce_marking_affixed_in_violation(S).

formal_non_compliance(S) :-
    ce_marking_not_affixed(S).

formal_non_compliance(S) :-
    eu_declaration_not_drawn_up(S).

formal_non_compliance(S) :-
    eu_declaration_not_drawn_up_correctly(S).

formal_non_compliance(S) :-
    registration_not_carried_out(S).

formal_non_compliance(S) :-
    no_authorised_representative_appointed(S).

formal_non_compliance(S) :-
    technical_documentation_not_available(S).

must_take_necessary_steps(Authority, end_non_compliance(S, within(period(Prescribed)))) :-
    market_surveillance_authority(Authority),
    member_state(Authority),
    formal_non_compliance(S),
    provider(P),
    high_risk_ai_system(S),
    Authority prescribes period(Prescribed),
    must_ensure_compliance(P, S).

must_take_restrictive_measures(Authority, restrict_or_prohibit_making_available(S)) :-
    market_surveillance_authority(Authority),
    member_state(Authority),
    non_compliance_persists(S),
    high_risk_ai_system(S),
    without_delay.

must_take_restrictive_measures(Authority, ensure_recall_or_withdrawal(S)) :-
    market_surveillance_authority(Authority),
    member_state(Authority),
    non_compliance_persists(S),
    high_risk_ai_system(S),
    without_delay.

non_compliance_persists(S) :-
    formal_non_compliance(S).

provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(no_authorised_representative_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(non_compliance_persists/1, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
