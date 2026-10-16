% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 895cc2812471f49ff5cedc598ad36055552383b4cd261ceaa0837e6ad9dc4013
% cached     : False
% title      : Formal non-compliance
:- pred must_end_noncompliance/3, gloss('market surveillance authority shall require provider to end non-compliance within prescribed period'), source('celex:32024R1689/oj#art_83').
:- pred formal_noncompliance_finding/1, gloss('finding of formal non-compliance under Article 83(1)'), source('celex:32024R1689/oj#art_83').
:- pred noncompliance_persists/1, gloss('formal non-compliance persists after Article 83(1) requirement'), source('celex:32024R1689/oj#art_83').
:- pred must_restrict_or_prohibit_or_recall/2, gloss('market surveillance authority shall restrict, prohibit, recall or withdraw high-risk AI system'), source('celex:32024R1689/oj#art_83').

% Paragraph 1: findings of formal non-compliance
formal_noncompliance_finding(ce_marking_affixed_in_violation) :-
    ce_marking(_).

formal_noncompliance_finding(ce_marking_not_affixed).

formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up).

formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up_correctly).

formal_noncompliance_finding(registration_not_carried_out).

formal_noncompliance_finding(no_authorised_representative_appointed).

formal_noncompliance_finding(technical_documentation_not_available).

% Paragraph 1: obligation to require end to non-compliance
must_end_noncompliance(Authority, Provider, Finding) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_noncompliance_finding(Finding).

% Paragraph 2: persistence triggers further measures
noncompliance_persists(Finding) :-
    formal_noncompliance_finding(Finding).

must_restrict_or_prohibit_or_recall(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    noncompliance_persists(_).

% Provenance
provenance(must_end_noncompliance/3, 'celex:32024R1689/oj#art_83').
provenance(formal_noncompliance_finding/1, 'celex:32024R1689/oj#art_83').
provenance(noncompliance_persists/1, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit_or_recall/2, 'celex:32024R1689/oj#art_83').

% References
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
