% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1785bd296bc2848697c084af703764ff8af3f2953132dad1b0d4159376388abf
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred component_of_large_scale_it_system/1, gloss('AI system is a component of a large-scale IT system listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_before/2, gloss('System or model placed on the market before a specified date'), source('celex:32024R1689/oj#art_111').
:- pred put_into_service_before/2, gloss('System put into service before a specified date'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system/1, gloss('High-risk AI system under the AI Act'), source('celex:32024R1689/oj#art_111').
:- pred significant_design_change_after/2, gloss('System undergoes significant change in design on or after a specified date'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_public_authorities/1, gloss('AI system is intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred legal_act_evaluation_of_large_scale_it_system/1, gloss('Evaluation of a large-scale IT system under relevant legal acts'), source('celex:32024R1689/oj#art_111').
:- pred must_ensure_compliance/2, gloss('Operator or entity must ensure compliance of system or model by a specified date'), source('celex:32024R1689/oj#art_111').
:- pred must_take_into_account_requirements/2, gloss('Entity must take requirements of the Regulation into account in an evaluation'), source('celex:32024R1689/oj#art_111').
:- pred regulation_applies_to_operator/2, gloss('Regulation applies to an operator with respect to an AI system'), source('celex:32024R1689/oj#art_111').

% Paragraph 1: AI systems which are components of large-scale IT systems (Annex X) placed on market or put into service before 2 August 2027
% shall be brought into compliance by 31 December 2030.
must_ensure_compliance(Operator, compliance(S, deadline(date(2030, 12, 31)))) :-
    operator(Operator),
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date(2027, 8, 2)).

must_ensure_compliance(Operator, compliance(S, deadline(date(2030, 12, 31)))) :-
    operator(Operator),
    component_of_large_scale_it_system(S),
    put_into_service_before(S, date(2027, 8, 2)).

% Paragraph 1: Requirements shall be taken into account in evaluation of large-scale IT systems
must_take_into_account_requirements(Evaluator, evaluation(System)) :-
    legal_act_evaluation_of_large_scale_it_system(evaluation(System)),
    operator(Evaluator).

% Paragraph 2: High-risk AI systems placed on market or put into service before 2 August 2026
% Regulation applies to operators only if subject to significant changes in design from that date.
regulation_applies_to_operator(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S),
    placed_on_market_before(S, date(2026, 8, 2)),
    significant_design_change_after(S, date(2026, 8, 2)).

regulation_applies_to_operator(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S),
    put_into_service_before(S, date(2026, 8, 2)),
    significant_design_change_after(S, date(2026, 8, 2)).

% Paragraph 2: Providers and deployers of high-risk AI systems intended for public authorities
% shall take necessary steps to comply by 2 August 2030.
must_ensure_compliance(Provider, compliance(S, deadline(date(2030, 8, 2)))) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).

must_ensure_compliance(Deployer, compliance(S, deadline(date(2030, 8, 2)))) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).

% Paragraph 3: Providers of general-purpose AI models placed on market before 2 August 2025
% shall comply with obligations by 2 August 2027.
must_ensure_compliance(Provider, compliance(M, deadline(date(2027, 8, 2)))) :-
    provider(Provider),
    general_purpose_ai_model(M),
    placed_on_market_before(M, date(2025, 8, 2)).

% Provenance facts
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').

% References
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
