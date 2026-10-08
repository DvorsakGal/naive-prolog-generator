% unit       : celex:32024R1689/oj#art_83
% title      : Formal non-compliance
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : gpt-oss:120b-cloud
% prompt sha : 32597d54616d50eda0565c6eed46eaeaf2001ceaed0c9c4935cea48d5b817041
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred non_compliance_finding/3, gloss('specific finding of non‑compliance by a market surveillance authority concerning a provider'), source('celex:32024R1689/oj#art_83').
:- pred required_end_non_compliance/3, gloss('authority must require provider to put an end to the non‑compliance'), source('celex:32024R1689/oj#art_83').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_83').
:- pred persists_non_compliance/2, gloss('non‑compliance continues despite measures'), source('celex:32024R1689/oj#art_83').
:- pred required_restrict/2, gloss('authority must restrict the high‑risk AI system from being made available on the market'), source('celex:32024R1689/oj#art_83').
:- pred required_prohibit/2, gloss('authority must prohibit the high‑risk AI system from being made available on the market'), source('celex:32024R1689/oj#art_83').
:- pred required_recall/2, gloss('authority must ensure the high‑risk AI system is recalled from the market'), source('celex:32024R1689/oj#art_83').
:- pred required_withdraw/2, gloss('authority must ensure the high‑risk AI system is withdrawn from the market'), source('celex:32024R1689/oj#art_83').

% Findings listed in Art 83(1)(a)–(g)
non_compliance_finding(Authority, Provider, ce_marking_affixed_violation) :-
    market_surveillance_authority(Authority),
    provider(Provider).

non_compliance_finding(Authority, Provider, ce_marking_not_affixed) :-
    market_surveillance_authority(Authority),
    provider(Provider).

non_compliance_finding(Authority, Provider, eu_declaration_not_drawn_up) :-
    market_surveillance_authority(Authority),
    provider(Provider).

non_compliance_finding(Authority, Provider, eu_declaration_not_drawn_up_correctly) :-
    market_surveillance_authority(Authority),
    provider(Provider).

non_compliance_finding(Authority, Provider, registration_not_carried_out) :-
    market_surveillance_authority(Authority),
    provider(Provider).

non_compliance_finding(Authority, Provider, no_authorised_representative) :-
    market_surveillance_authority(Authority),
    provider(Provider).

non_compliance_finding(Authority, Provider, technical_documentation_not_available) :-
    market_surveillance_authority(Authority),
    provider(Provider).

% Duty to require end of non‑compliance (Art 83(1))
required_end_non_compliance(Authority, Provider, Type) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    non_compliance_finding(Authority, Provider, Type).

% Persistence of non‑compliance (Art 83(2))
persists_non_compliance(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    non_compliance_finding(Authority, _, _).

% Measures to be taken when non‑compliance persists (Art 83(2))
required_restrict(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).

required_prohibit(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).

required_recall(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).

required_withdraw(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).

% Provenance
provenance(non_compliance_finding/3, 'celex:32024R1689/oj#art_83').
provenance(required_end_non_compliance/3, 'celex:32024R1689/oj#art_83').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_83').
provenance(persists_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(required_restrict/2, 'celex:32024R1689/oj#art_83').
provenance(required_prohibit/2, 'celex:32024R1689/oj#art_83').
provenance(required_recall/2, 'celex:32024R1689/oj#art_83').
provenance(required_withdraw/2, 'celex:32024R1689/oj#art_83').

% References
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
