% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 22f8011fcf9d787bc9942e1ef4d63a41cd870cd353699dd2fbfe123d5919746f
% cached     : False
% title      : Formal non-compliance
:- pred formal_non_compliance/2, gloss('AI system exhibits formal non-compliance under Article 83(1)'), source('celex:32024R1689/oj#art_83').
:- pred finding_formal_non_compliance/2, gloss('authority finds formal non-compliance in an AI system'), source('celex:32024R1689/oj#art_83').
:- pred non_compliance_persists/1, gloss('formal non-compliance persists beyond the prescribed period'), source('celex:32024R1689/oj#art_83').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_83').
:- pred must_require/2, gloss('authority must require a provider to end formal non-compliance'), source('celex:32024R1689/oj#art_83').
:- pred must_take_measures/2, gloss('authority must take restrictive or corrective measures against an AI system'), source('celex:32024R1689/oj#art_83').

% Article 83(1): Ground findings of formal non-compliance
formal_non_compliance(S, ce_marking_violation) :-
    ai_system(S).
formal_non_compliance(S, ce_marking_not_affixed) :-
    ai_system(S).
formal_non_compliance(S, declaration_of_conformity_not_drawn_up) :-
    ai_system(S).
formal_non_compliance(S, declaration_of_conformity_incorrect) :-
    ai_system(S).
formal_non_compliance(S, registration_not_carried_out) :-
    ai_system(S).
formal_non_compliance(S, authorised_representative_not_appointed) :-
    ai_system(S).
formal_non_compliance(S, technical_documentation_not_available) :-
    ai_system(S).

% Finding by market surveillance authority
finding_formal_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(S, _Reason).

% Article 83(1): Requirement to put an end to non-compliance
must_require(Authority, end_non_compliance(Provider, S)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    finding_formal_non_compliance(Authority, S).

% Article 83(2): Measures when non-compliance persists
must_take_measures(Authority, restrict_or_prohibit_making_available(S)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    finding_formal_non_compliance(Authority, S),
    non_compliance_persists(S).

must_take_measures(Authority, ensure_recall_or_withdrawal(S)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    finding_formal_non_compliance(Authority, S),
    non_compliance_persists(S).

provenance(formal_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(finding_formal_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
