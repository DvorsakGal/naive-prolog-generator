% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dc1baa755f3a11e320e78fcc71207a112fcd1c5cb3f97621f58a5cab38832412
% cached     : False
% title      : Formal non-compliance
:- pred formal_non_compliance/1, gloss('finding of formal non-compliance under Article 83(1)'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_affixed_in_violation/1, gloss('CE marking affixed in violation of Article 48'), source('celex:32024R1689/oj#art_83').
:- pred ce_marking_not_affixed/1, gloss('CE marking has not been affixed'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_of_conformity_not_drawn_up/1, gloss('EU declaration of conformity has not been drawn up'), source('celex:32024R1689/oj#art_83').
:- pred eu_declaration_of_conformity_not_drawn_up_correctly/1, gloss('EU declaration of conformity has not been drawn up correctly'), source('celex:32024R1689/oj#art_83').
:- pred registration_in_eu_database_not_carried_out/1, gloss('registration in the EU database has not been carried out'), source('celex:32024R1689/oj#art_83').
:- pred authorised_representative_not_appointed/1, gloss('no authorised representative has been appointed where applicable'), source('celex:32024R1689/oj#art_83').
:- pred technical_documentation_not_available/1, gloss('technical documentation is not available'), source('celex:32024R1689/oj#art_83').
:- pred must_end_non_compliance/2, gloss('market surveillance authority requires provider to end non-compliance'), source('celex:32024R1689/oj#art_83').
:- pred non_compliance_persists/1, gloss('formal non-compliance persists after prescribed period'), source('celex:32024R1689/oj#art_83').
:- pred must_restrict_or_prohibit/2, gloss('market surveillance authority must restrict or prohibit making available on market'), source('celex:32024R1689/oj#art_83').
:- pred must_recall_or_withdraw/2, gloss('market surveillance authority must ensure recall or withdrawal from market'), source('celex:32024R1689/oj#art_83').

formal_non_compliance(S) :-
    ce_marking_affixed_in_violation(S).
formal_non_compliance(S) :-
    ce_marking_not_affixed(S).
formal_non_compliance(S) :-
    eu_declaration_of_conformity_not_drawn_up(S).
formal_non_compliance(S) :-
    eu_declaration_of_conformity_not_drawn_up_correctly(S).
formal_non_compliance(S) :-
    registration_in_eu_database_not_carried_out(S).
formal_non_compliance(S) :-
    authorised_representative_not_appointed(S).
formal_non_compliance(S) :-
    technical_documentation_not_available(S).

must_end_non_compliance(A, S) :-
    market_surveillance_authority(A),
    provider(_P),
    formal_non_compliance(S).

must_restrict_or_prohibit(A, S) :-
    market_surveillance_authority(A),
    non_compliance_persists(S).

must_recall_or_withdraw(A, S) :-
    market_surveillance_authority(A),
    non_compliance_persists(S).

provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_in_eu_database_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(authorised_representative_not_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(non_compliance_persists/1, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit/2, 'celex:32024R1689/oj#art_83').
provenance(must_recall_or_withdraw/2, 'celex:32024R1689/oj#art_83').

references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
