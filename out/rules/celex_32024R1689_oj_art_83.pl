% unit       : celex:32024R1689/oj#art_83
% title      : Formal non-compliance
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : gpt-oss:120b-cloud
% prompt sha : 85a472737468d699ea499366b14b4c6de77ba9362a6982cf1214aad8b91dac03
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_require/2, gloss('market surveillance authority requires provider to end non‑compliance'), source('celex:32024R1689/oj#art_83').
:- pred must_take_measures/2, gloss('market surveillance authority takes appropriate measures against high‑risk AI system'), source('celex:32024R1689/oj#art_83').

:- pred ce_marking_affixed_in_violation_applies/1, gloss('CE marking has been affixed in violation of the requirements'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_not_affixed_applies/1, gloss('CE marking has not been affixed'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_not_drawn_up_applies/1, gloss('EU declaration of conformity has not been drawn up'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_not_drawn_up_correctly_applies/1, gloss('EU declaration of conformity has not been drawn up correctly'), source('celex:32024R1689/oj#art_83').
:- pred registration_not_carried_out_applies/1, gloss('registration in the EU database has not been carried out'), source('celex:32024R1689/oj#art_83').
:- pred no_authorised_representative_applies/1, gloss('no authorised representative has been appointed where applicable'), source('celex:32024R1689/oj#art_83').
:- pred technical_documentation_not_available_applies/1, gloss('technical documentation is not available'), source('celex:32024R1689/oj#art_83').

:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_83').
:- pred non_compliance_persists/2, gloss('non‑compliance persists despite authority’s requirement'), source('celex:32024R1689/oj#art_83').

must_require(Authority, end_non_compliance(Provider, ce_marking_affixed_in_violation)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    ce_marking_affixed_in_violation_applies(Provider).

must_require(Authority, end_non_compliance(Provider, ce_marking_not_affixed)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    ce_marking_not_affixed_applies(Provider).

must_require(Authority, end_non_compliance(Provider, eu_declaration_not_drawn_up)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    eu_declaration_not_drawn_up_applies(Provider).

must_require(Authority, end_non_compliance(Provider, eu_declaration_not_drawn_up_correctly)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    eu_declaration_not_drawn_up_correctly_applies(Provider).

must_require(Authority, end_non_compliance(Provider, registration_not_carried_out)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    registration_not_carried_out_applies(Provider).

must_require(Authority, end_non_compliance(Provider, no_authorised_representative)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    no_authorised_representative_applies(Provider).

must_require(Authority, end_non_compliance(Provider, technical_documentation_not_available)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    technical_documentation_not_available_applies(Provider).

must_take_measures(Authority, high_risk_ai_system(System)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    non_compliance_persists(_, _).

provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
