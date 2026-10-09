% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 9922a9763bacfaad4241048b75b75dab2e2f4f4ec9082a42dcad0c9b0aa90b46
% cached     : False
% title      : Formal non-compliance
:- pred relevant_provider/1, gloss('provider relevant to a finding of non‑compliance'), source('celex:32024R1689/oj#art_83').
:- pred persists_non_compliance/1, gloss('non‑compliance persists for the AI system'), source('celex:32024R1689/oj#art_83').

relevant_provider(P) :-
    provider(P).

persists_non_compliance(AI) :-
    high_risk_ai_system(AI).

must_require(MSA, end_non_compliance(P, ce_marking_affixed_in_violation)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).

must_require(MSA, end_non_compliance(P, ce_marking_not_affixed)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).

must_require(MSA, end_non_compliance(P, eu_declaration_not_drawn_up)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).

must_require(MSA, end_non_compliance(P, eu_declaration_not_drawn_up_correctly)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).

must_require(MSA, end_non_compliance(P, registration_not_carried_out)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).

must_require(MSA, end_non_compliance(P, no_authorised_representative_appointed)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).

must_require(MSA, end_non_compliance(P, technical_documentation_not_available)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).

must_take(MSA, appropriate_measures(HighRiskAI)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    high_risk_ai_system(HighRiskAI),
    persists_non_compliance(HighRiskAI).

provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_take/2, 'celex:32024R1689/oj#art_83').
provenance(relevant_provider/1, 'celex:32024R1689/oj#art_83').
provenance(persists_non_compliance/1, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
