% unit       : celex:32024R1689/oj#art_83
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dd7da45bd4736f797a51ceee1d87cadf5666f4b00f6b84eeeb1b56b5570f9c73
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 812d379ada16cd3cfb3eba959337f39e2f317cc3b7337848822ca7cc8b021e5e
% cached     : False
% title      : Formal non-compliance
:- pred persists_formal_non_compliance/2, gloss('formal non-compliance persists for the AI system'), source('celex:32024R1689/oj#art_83').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_83').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_83').
:- pred must_require/2, gloss('authority must require an actor to perform an action'), source('celex:32024R1689/oj#art_83').
:- pred must_restrict_prohibit_recall_or_withdraw/2, gloss('authority must restrict, prohibit, recall or withdraw the AI system'), source('celex:32024R1689/oj#art_83').

% Paragraph 1: Authority requires the provider to put an end to the non-compliance
must_require(Authority, require_end_non_compliance(Provider, System, Issue)) :-
    market_surveillance_authority_for(Authority, System),
    provider_of(Provider, System),
    formal_non_compliance(System, Issue).

% Paragraph 2: Persisting formal non-compliance requires measures
must_restrict_prohibit_recall_or_withdraw(Authority, System) :-
    market_surveillance_authority_for(Authority, System),
    high_risk_ai_system(System),
    persists_formal_non_compliance(System, Issue),
    formal_non_compliance(System, Issue).

% Provenance
provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_prohibit_recall_or_withdraw/2, 'celex:32024R1689/oj#art_83').

% References
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').
