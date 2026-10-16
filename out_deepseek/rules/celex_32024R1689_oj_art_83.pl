% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0b4e9ad1bbd75238aca4125b5a451b4987fe1ed54c6f548cb5477e79f27c5891
% cached     : False
% title      : Formal non-compliance
:- pred must_end_noncompliance/2, gloss('market surveillance authority requires provider to end non-compliance'), source('celex:32024R1689/oj#art_83').
:- pred formal_noncompliance_finding/1, gloss('finding of formal non-compliance by market surveillance authority'), source('celex:32024R1689/oj#art_83').
:- pred must_restrict_or_prohibit/2, gloss('market surveillance authority must restrict or prohibit high-risk AI system'), source('celex:32024R1689/oj#art_83').

formal_noncompliance_finding(ce_marking_affixed_in_violation) :-
    ce_marking(_).
formal_noncompliance_finding(ce_marking_not_affixed).
formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up).
formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up_correctly).
formal_noncompliance_finding(registration_not_carried_out).
formal_noncompliance_finding(no_authorised_representative_appointed).
formal_noncompliance_finding(technical_documentation_not_available).

must_end_noncompliance(Authority, Provider) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_noncompliance_finding(_).

must_restrict_or_prohibit(Authority, System) :-
    market_surveillance_authority(Authority),
    formal_noncompliance_finding(_),
    making_available_on_market(System).

provenance(must_end_noncompliance/2, 'celex:32024R1689/oj#art_83').
provenance(formal_noncompliance_finding/1, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit/2, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
