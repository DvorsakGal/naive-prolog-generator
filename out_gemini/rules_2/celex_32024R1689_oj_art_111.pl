% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 461a633022fb2530aa95621d37ccf3edc0c483cfdac7b9eae93c48e788f1cdd4
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred component_of_large_scale_it_system_annex_10/1, gloss('AI system is a component of a large-scale IT system established by legal acts listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_before/2, gloss('System or model was placed on the market before a given date'), source('celex:32024R1689/oj#art_111').
:- pred put_into_service_before/2, gloss('System was put into service before a given date'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_111').
:- pred subject_to_significant_design_change_from/2, gloss('System is subject to significant changes in its design as from a given date'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_use_by_public_authorities/1, gloss('AI system is intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred regulation_applies_to_operator/2, gloss('Regulation applies to an operator of an AI system'), source('celex:32024R1689/oj#art_111').
:- pred required_compliance_by/2, gloss('Subject must be brought into compliance or comply by specified deadline'), source('celex:32024R1689/oj#art_111').

% Paragraph 1: AI systems which are components of the large-scale IT systems listed in Annex X
% placed on market or put into service before 2 August 2027 shall be brought into compliance by 31 December 2030.
required_compliance_by(S, date(2030, 12, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system_annex_10(S),
    placed_on_market_before(S, date(2027, 8, 2)).

required_compliance_by(S, date(2030, 12, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system_annex_10(S),
    put_into_service_before(S, date(2027, 8, 2)).

% Paragraph 2: Regulation applies to operators of high-risk AI systems (other than para 1) placed on market
% or put into service before 2 August 2026 only if subject to significant changes in design from that date.
regulation_applies_to_operator(O, S) :-
    operator(O),
    high_risk_ai_system(S),
    placed_on_market_before(S, date(2026, 8, 2)),
    subject_to_significant_design_change_from(S, date(2026, 8, 2)).

regulation_applies_to_operator(O, S) :-
    operator(O),
    high_risk_ai_system(S),
    put_into_service_before(S, date(2026, 8, 2)),
    subject_to_significant_design_change_from(S, date(2026, 8, 2)).

% Paragraph 2: Providers and deployers of high-risk AI systems intended to be used by public authorities
% shall take necessary steps to comply by 2 August 2030.
must_comply(P, compliance_by(S, date(2030, 8, 2))) :-
    provider(P),
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).

must_comply(D, compliance_by(S, date(2030, 8, 2))) :-
    deployer(D),
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).

% Paragraph 3: Providers of general-purpose AI models placed on market before 2 August 2025
% shall take necessary steps to comply with obligations by 2 August 2027.
must_comply(P, compliance_by(M, date(2027, 8, 2))) :-
    provider_of_general_purpose_ai_model(P),
    general_purpose_ai_model(M),
    placed_on_market_before(M, date(2025, 8, 2)).

% Provenance facts
provenance(component_of_large_scale_it_system_annex_10/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_before/2, 'celex:32024R1689/oj#art_111').
provenance(put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_change_from/2, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').
provenance(required_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(must_comply/2, 'celex:32024R1689/oj#art_111').

% References
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
