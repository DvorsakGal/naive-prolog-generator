% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 467b73957acaaa529a3816a534a09edbeaf8bcab008069ccc5d646dca5e38d44
% cached     : False
% title      : Formal non-compliance
:- pred finds_non_compliance/2, gloss('authority finds a specific type of non‑compliance concerning a provider'), source('celex:32024R1689/oj#art_83').
:- pred type_applies/1, gloss('type of non‑compliance listed in article 83'), source('celex:32024R1689/oj#art_83').
:- pred persists_non_compliance/2, gloss('non‑compliance persists after initial finding'), source('celex:32024R1689/oj#art_83').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_83').

must_require(Authority, Provider) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    finds_non_compliance(Authority, non_compliance(Provider, Type)),
    type_applies(Type).

finds_non_compliance(Authority, non_compliance(Provider, Type)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    type_applies(Type).

type_applies(ce_marking_violation).
type_applies(ce_marking_missing).
type_applies(declaration_missing).
type_applies(declaration_incorrect).
type_applies(registration_missing).
type_applies(no_authorised_representative).
type_applies(technical_documentation_unavailable).

persists_non_compliance(Provider, Type) :-
    finds_non_compliance(_, non_compliance(Provider, Type)).

must_prohibit(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(_Provider, _Type).

must_recall(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(_Provider, _Type).

must_withdraw(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(_Provider, _Type).

provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(finds_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(type_applies/1, 'celex:32024R1689/oj#art_83').
provenance(persists_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_prohibit/2, 'celex:32024R1689/oj#art_83').
provenance(must_recall/2, 'celex:32024R1689/oj#art_83').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_83').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
