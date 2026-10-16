% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : e49d449c9de227478ad331c884ea07e46c514bc4f74e661b7d131cd85f5dc324
% cached     : False
% title      : Formal non-compliance
:- pred formal_non_compliance/1, gloss('one of the listed formal non-compliances exists'), source('celex:32024R1689/oj#art_83').
:- pred must_end_non_compliance/3, gloss('market surveillance authority shall require provider to end non-compliance within prescribed period'), source('celex:32024R1689/oj#art_83').
:- pred must_take_restriction_measures/2, gloss('market surveillance authority shall take measures to restrict or prohibit'), source('celex:32024R1689/oj#art_83').

formal_non_compliance(ce_marking_affixed_in_violation_of_art_48(S)) :-
    ce_marking(S),
    \+ valid_ce_marking(S).

formal_non_compliance(ce_marking_not_affixed(S)) :-
    ai_system(S),
    \+ ce_marking(S).

formal_non_compliance(eu_declaration_not_drawn_up(S)) :-
    ai_system(S),
    \+ eu_declaration_of_conformity(S).

formal_non_compliance(eu_declaration_not_drawn_up_correctly(S)) :-
    ai_system(S),
    eu_declaration_of_conformity(S),
    \+ drawn_up(S).

formal_non_compliance(registration_not_carried_out(S)) :-
    ai_system(S),
    \+ registered_with_information_specified(S).

formal_non_compliance(no_authorised_representative_appointed(P)) :-
    provider(P),
    established_in_union(P),
    \+ authorised_representative(_R),
    requires_union_representative(P).

formal_non_compliance(technical_documentation_not_available(S)) :-
    ai_system(S),
    \+ technical_documentation(S).

must_end_non_compliance(Authority, Provider, end_non_compliance(NonCompliance, Period)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_non_compliance(NonCompliance),
    system_of_non_compliance(NonCompliance, S),
    (provider_of_system(Provider, S); placed_or_put_into_service_by(Provider, S)),
    prescribed_period(Period).

must_take_restriction_measures(Authority, restrict_or_prohibit_made_available(S)) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(NonCompliance),
    system_of_non_compliance(NonCompliance, S),
    high_risk_ai_system(S),
    persists(NonCompliance),
    \+ must_end_non_compliance(Authority, _, end_non_compliance(NonCompliance, _)).

must_take_restriction_measures(Authority, ensure_recalled_or_withdrawn(S)) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(NonCompliance),
    system_of_non_compliance(NonCompliance, S),
    high_risk_ai_system(S),
    persists(NonCompliance),
    \+ must_end_non_compliance(Authority, _, end_non_compliance(NonCompliance, _)).

system_of_non_compliance(ce_marking_affixed_in_violation_of_art_48(S), S).
system_of_non_compliance(ce_marking_not_affixed(S), S).
system_of_non_compliance(eu_declaration_not_drawn_up(S), S).
system_of_non_compliance(eu_declaration_not_drawn_up_correctly(S), S).
system_of_non_compliance(registration_not_carried_out(S), S).
system_of_non_compliance(no_authorised_representative_appointed(_P), _S) :- fail.
system_of_non_compliance(technical_documentation_not_available(S), S).

provider_of_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

requires_union_representative(P) :-
    provider(P),
    \+ established_in_union(P).

provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_non_compliance/3, 'celex:32024R1689/oj#art_83').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_83').
provenance(system_of_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(provider_of_system/2, 'celex:32024R1689/oj#art_83').
provenance(requires_union_representative/1, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
