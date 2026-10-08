% unit       : celex:32024R1689/oj#art_111
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : gpt-oss:120b-cloud
% prompt sha : ad1acb4a64d1003bfdbbdb8b4bbe2f961b5d5e3f5dd35db9b774da128bdc3188
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred component_of_large_scale_it_system/1, gloss('AI system component of a large‑scale IT system established by listed legal acts'), source('art_111').
:- pred placed_on_market_before/2, gloss('AI system placed on the Union market before a given date'), source('art_111').
:- pred compliance_deadline/2, gloss('deadline by which a system must comply with the regulation'), source('art_111').
:- pred compliance_deadline/3, gloss('deadline by which an actor must ensure a system complies'), source('art_111').
:- pred significant_design_change/1, gloss('AI system subject to significant changes in design'), source('art_111').
:- pred intended_for_public_authorities/1, gloss('AI system intended to be used by public authorities'), source('art_111').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('art_111').
:- pred general_purpose_ai_model/1, gloss('general‑purpose AI model'), source('art_111').
:- pred paragraph1_system/1, gloss('AI system covered by paragraph 1 of Art 111'), source('art_111').

% -----------------------------------------------------------------
% Obligations derived from Article 111

required_bring_into_compliance(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date('2027-08-02')),
    compliance_deadline(S, date('2030-12-31')).

required_take_into_account_in_evaluation(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date('2027-08-02')),
    % the evaluation of the large‑scale IT system must consider the
    % requirements of the Regulation (the act itself is referenced)
    true.

required_regulation_applies_to_operator(Op, S) :-
    operator(Op),
    high_risk_ai_system(S),
    \+ paragraph1_system(S),
    placed_on_market_before(S, date('2026-08-02')),
    significant_design_change(S).

required_take_steps_to_comply(Actor, S) :-
    ( provider(Actor) ; deployer(Actor) ),
    high_risk_ai_system(S),
    intended_for_public_authorities(S),
    placed_on_market_before(S, date('2026-08-02')),
    compliance_deadline(Actor, S, date('2030-08-02')).

required_take_steps_to_comply(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    placed_on_market_before(M, date('2025-08-02')),
    compliance_deadline(Provider, M, date('2027-08-02')).

% -----------------------------------------------------------------
% Helper definitions

paragraph1_system(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date('2027-08-02')).

% -----------------------------------------------------------------
% Provenance

provenance(required_bring_into_compliance/1, 'celex:32024R1689/oj#art_111').
provenance(required_take_into_account_in_evaluation/1, 'celex:32024R1689/oj#art_111').
provenance(required_regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').
provenance(required_take_steps_to_comply/2, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_before/2, 'celex:32024R1689/oj#art_111').
provenance(compliance_deadline/2, 'celex:32024R1689/oj#art_111').
provenance(compliance_deadline/3, 'celex:32024R1689/oj#art_111').
provenance(significant_design_change/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model/1, 'celex:32024R1689/oj#art_111').
provenance(paragraph1_system/1, 'celex:32024R1689/oj#art_111').

% -----------------------------------------------------------------
% References

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
