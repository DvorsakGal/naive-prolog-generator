% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 9fe7f8b08e70992f829a4534279c52ea954c60b298f8b4f9e5ebbd10adaee4cb
% cached     : False
% title      : Formal non-compliance
:- pred formal_non_compliance_finding/2, gloss('market surveillance authority finding of formal non-compliance under Article 83(1)'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_affixed_in_violation_of_art_48/1, gloss('CE marking affixed in violation of Article 48'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_not_affixed/1, gloss('CE marking has not been affixed'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_of_conformity_not_drawn_up/1, gloss('EU declaration of conformity referred to in Article 47 has not been drawn up'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_of_conformity_not_drawn_up_correctly/1, gloss('EU declaration of conformity referred to in Article 47 has not been drawn up correctly'), source('celex:32024R1689/oj#art_83').
:- pred registration_in_eu_database_not_carried_out/1, gloss('registration in the EU database referred to in Article 71 has not been carried out'), source('celex:32024R1689/oj#art_83').
:- pred no_authorised_representative_appointed/1, gloss('no authorised representative has been appointed where applicable'), source('celex:32024R1689/oj#art_83').
:- pred technical_documentation_not_available/1, gloss('technical documentation is not available'), source('celex:32024R1689/oj#art_83').
:- pred must_end_formal_non_compliance/2, gloss('market surveillance authority requires provider to end formal non-compliance within prescribed period'), source('celex:32024R1689/oj#art_83').
:- pred must_restrict_or_prohibit_or_recall/2, gloss('market surveillance authority takes measures to restrict, prohibit, recall or withdraw system due to persistent non-compliance'), source('celex:32024R1689/oj#art_83').

formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_affixed_in_violation_of_art_48(S).

formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_not_affixed(S).

formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up(S).

formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up_correctly(S).

formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    registration_in_eu_database_not_carried_out(S).

formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    no_authorised_representative_appointed(S).

formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    technical_documentation_not_available(S).

must_end_formal_non_compliance(A, S) :-
    market_surveillance_authority(A),
    provider(P),
    formal_non_compliance_finding(A, S).

must_restrict_or_prohibit_or_recall(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    formal_non_compliance_finding(A, S),
    \+ compliance_restored(S).

compliance_restored(_S).

provenance(formal_non_compliance_finding/2, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation_of_art_48/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_in_eu_database_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(no_authorised_representative_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_formal_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit_or_recall/2, 'celex:32024R1689/oj#art_83').
provenance(compliance_restored/1, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
