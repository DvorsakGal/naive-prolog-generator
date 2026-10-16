% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 896c8195741595933380e9d180223c7bab59e5a5e5e528d1e9a251ac28319009
% cached     : False
% title      : Formal non-compliance
:- pred non_compliance/1, gloss('finding of formal non-compliance by market surveillance authority'), source('celex:32024R1689/oj#art_83').
:- pred must_end_non_compliance/2, gloss('provider must end non-compliance within prescribed period'), source('celex:32024R1689/oj#art_83').
:- pred must_take_restriction_measures/2, gloss('market surveillance authority must take measures to restrict or prohibit'), source('celex:32024R1689/oj#art_83').
:- pred prescribed_period/2, gloss('period prescribed by market surveillance authority for ending non-compliance'), source('celex:32024R1689/oj#art_83').

non_compliance(ce_marking_affixed_in_violation(S)) :-
    ce_marking(S),
    affixed_in_violation(S, art_48).

non_compliance(ce_marking_not_affixed(S)) :-
    high_risk_ai_system(S),
    \+ ce_marking(S).

non_compliance(eu_declaration_not_drawn_up(S)) :-
    high_risk_ai_system(S),
    \+ eu_declaration_of_conformity(S).

non_compliance(eu_declaration_not_drawn_up_correctly(S)) :-
    eu_declaration_of_conformity(S),
    \+ drawn_up_correctly(S).

non_compliance(eu_database_registration_not_carried_out(S)) :-
    high_risk_ai_system(S),
    \+ registration_in_eu_database(S).

non_compliance(no_authorised_reappointed(S)) :-
    high_risk_ai_system(S),
    \+ authorised_representative_appointed(S).

non_compliance(technical_documentation_not_available(S)) :-
    high_risk_ai_system(S),
    \+ technical_documentation(S).

must_end_non_compliance(Provider, NonCompliance) :-
    provider(Provider),
    non_compliance(NonCompliance),
    market_surveillance_authority(Authority),
    finding(Authority, NonCompliance),
    prescribed_period(Authority, NonCompliance).

must_take_restriction_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    non_compliance(NonCompliance),
    high_risk_ai_system(S),
    non_compliance_concerns(NonCompliance, S),
    \+ ended(NonCompliance),
    finding(Authority, NonCompliance).

provenance(non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
