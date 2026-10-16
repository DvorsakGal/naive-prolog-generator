% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f4307e46fbc1683d2eee9b83613d4c0424cdbacc63583851393c7abcb9777a2c
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred large_scale_it_system/1, gloss('large-scale IT system established by legal acts listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred component_of_large_scale_it_system/2, gloss('AI system that is a component of a large-scale IT system'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_or_put_into_service_before/2, gloss('AI system placed on market or put into service before a given date'), source('celex:32024R1689/oj#art_111').
:- pred brought_into_compliance_by/2, gloss('system brought into compliance with the Regulation by a given date'), source('celex:32024R1689/oj#art_111').
:- pred requirements_taken_into_account_in_evaluation/2, gloss('requirements of the Regulation taken into account in evaluation of a large-scale IT system'), source('celex:32024R1689/oj#art_111').
:- pred significant_change_in_design/1, gloss('high-risk AI system subject to significant change in design'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system_intended_for_public_authorities/1, gloss('high-risk AI system intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred general_purpose_ai_model_placed_on_market_before/2, gloss('general-purpose AI model placed on market before a given date'), source('celex:32024R1689/oj#art_111').
:- pred must_take_necessary_steps_to_comply/2, gloss('actor must take necessary steps to comply with obligations of the Regulation'), source('celex:32024R1689/oj#art_111').

% Paragraph 1: AI systems that are components of large-scale IT systems placed on market or put into service before 2 August 2027 must be brought into compliance by 31 December 2030
must_bring_into_compliance_by(Operator, compliance(deadline(days(31, december, 2030)))) :-
    operator(Operator),
    ai_system(S),
    component_of_large_scale_it_system(S, LS),
    large_scale_it_system(LS),
    placed_on_market_or_put_into_service_before(S, date(2027, august, 2)).

brought_into_compliance_by(S, date(2030, december, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system(S, LS),
    large_scale_it_system(LS),
    placed_on_market_or_put_into_service_before(S, date(2027, august, 2)).

% Requirements taken into account in evaluation of large-scale IT systems
requirements_taken_into_account_in_evaluation(LS, evaluation) :-
    large_scale_it_system(LS).

% Paragraph 2: Regulation applies to operators of high-risk AI systems placed on market or put into service before 2 August 2026 only if subject to significant changes in design
regulation_applies_to_operator(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, august, 2)),
    \+ component_of_large_scale_it_system(S, _LS),
    significant_change_in_design(S).

% Providers and deployers of high-risk AI systems intended for public authorities must comply by 2 August 2030
must_take_necessary_steps_to_comply(Provider, obligations(date(2030, august, 2))) :-
    provider(Provider),
    high_risk_ai_system_intended_for_public_authorities(S),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, august, 2)).

must_take_necessary_steps_to_comply(Deployer, obligations(date(2030, august, 2))) :-
    deployer(Deployer),
    high_risk_ai_system_intended_for_public_authorities(S),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, august, 2)).

% Paragraph 3: Providers of general-purpose AI models placed on market before 2 August 2025 must comply by 2 August 2027
must_take_necessary_steps_to_comply(Provider, obligations(date(2027, august, 2))) :-
    provider(Provider),
    general_purpose_ai_model(M),
    general_purpose_ai_model_placed_on_market_before(M, date(2025, august, 2)).

% Helper: high-risk AI system intended for public authorities
high_risk_ai_system_intended_for_public_authorities(S) :-
    ai_system(S),
    intended_purpose(S),
    public_authority_use(S).

% Helper: placed on market or put into service before a date
placed_on_market_or_put_into_service_before(S, Date) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    before_date(S, Date).

% Helper: general-purpose AI model placed on market before a date
general_purpose_ai_model_placed_on_market_before(M, Date) :-
    general_purpose_ai_model(M),
    placing_on_market(M),
    before_date(M, Date).

% Helper: date comparison (simplified - actual implementation would need proper date handling)
before_date(_S, _Date).

% Helper: public authority use
public_authority_use(_S).

% Provenance
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/2, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(brought_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(requirements_taken_into_account_in_evaluation/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system_intended_for_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_on_market_before/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_necessary_steps_to_comply/2, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').

% References
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
