% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 8232f2391a406ca7878aece523a26c3d014e999a52cf50f19ef1120e6ad9c4b8
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred component_of_large_scale_it_system/1, gloss('AI system component of a large‑scale IT system listed in annex 10'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_before/2, gloss('AI system placed on the market before the given date'), source('celex:32024R1689/oj#art_111').
:- pred compliance_by/1, gloss('deadline for compliance'), source('celex:32024R1689/oj#art_111').
:- pred required_compliance/1, gloss('AI system must be brought into compliance with the Regulation'), source('celex:32024R1689/oj#art_111').
:- pred applies_to_operator/2, gloss('Regulation applies to operator of a high‑risk AI system'), source('celex:32024R1689/oj#art_111').
:- pred excluded_by_par1/1, gloss('AI system excluded by paragraph 1'), source('celex:32024R1689/oj#art_111').
:- pred significant_design_change/2, gloss('AI system is subject to significant design change from the given date'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_public_authorities/1, gloss('AI system intended for use by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred must_comply/2, gloss('Actor must comply by the given deadline'), source('celex:32024R1689/oj#art_111').

% -----------------------------------------------------------------
% Deadlines
compliance_by(date(2030,12,31)).
compliance_by(date(2030,8,2)).
compliance_by(date(2027,8,2)).

% -----------------------------------------------------------------
% Paragraph 1 – compliance for components of large‑scale IT systems
required_compliance(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date(2027,8,2)),
    compliance_by(date(2030,12,31)).

provenance(required_compliance/1, 'celex:32024R1689/oj#art_111').

% -----------------------------------------------------------------
% Paragraph 2 – applicability to operators of high‑risk AI systems
applies_to_operator(Op, S) :-
    operator(Op),
    high_risk_ai_system(S),
    placed_on_market_before(S, date(2026,8,2)),
    significant_design_change(S, date(2026,8,2)),
    \+ excluded_by_par1(S).

provenance(applies_to_operator/2, 'celex:32024R1689/oj#art_111').

% Systems excluded by paragraph 1
excluded_by_par1(S) :-
    component_of_large_scale_it_system(S).

provenance(excluded_by_par1/1, 'celex:32024R1689/oj#art_111').

% Obligations for providers and deployers of high‑risk AI systems intended for public authorities
must_comply(Actor, compliance_by(date(2030,8,2))) :-
    (provider(Actor) ; deployer(Actor)),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).

provenance(must_comply/2, 'celex:32024R1689/oj#art_111').

% Paragraph 3 – obligations for providers of general‑purpose AI models
must_comply(Provider, compliance_by(date(2027,8,2))) :-
    provider(Provider),
    general_purpose_ai_model(S),
    placed_on_market_before(S, date(2025,8,2))).

provenance(must_comply/2, 'celex:32024R1689/oj#art_111').

% -----------------------------------------------------------------
% References
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
