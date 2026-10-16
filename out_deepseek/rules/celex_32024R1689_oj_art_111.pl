% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2776f66a024885ddf2afc6613aa3c20b71f63283886ab526200a4198c31138fd
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred must_bring_into_compliance/2, gloss('entity obliged to bring AI system into compliance'), source('celex:32024R1689/oj#art_111').
:- pred must_take_necessary_steps/2, gloss('entity obliged to take necessary steps for compliance'), source('celex:32024R1689/oj#art_111').
:- pred large_scale_it_system_component/1, gloss('AI system that is a component of a large-scale IT system listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_or_put_into_service_before/2, gloss('AI system placed on market or put into service before a given date'), source('celex:32024R1689/oj#art_111').
:- pred subject_to_significant_design_changes_after/2, gloss('AI system subject to significant design changes after a given date'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_use_by_public_authorities/1, gloss('high-risk AI system intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred general_purpose_ai_model_placed_on_market_before/2, gloss('general-purpose AI model placed on market before a given date'), source('celex:32024R1689/oj#art_111').

% Paragraph 1
must_bring_into_compliance(_Operator, S) :-
    large_scale_it_system_component(S),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)),
    ai_system(S).

% Paragraph 2, first sentence
must_take_necessary_steps(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    subject_to_significant_design_changes_after(S, date(2026, 8, 2)),
    \+ large_scale_it_system_component(S).

% Paragraph 2, second sentence
must_take_necessary_steps(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S),
    ( provider(Operator) ; deployer(Operator) ).

% Paragraph 3
must_take_necessary_steps(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    general_purpose_ai_model_placed_on_market_before(M, date(2025, 8, 2)).

% Provenance
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system_component/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_changes_after/2, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_on_market_before/2, 'celex:32024R1689/oj#art_111').

% References
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
