% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : cd52a28a81365767a1a0d48e6e5d493d0fe69da35d31cdecd399892cf875c700
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred large_scale_it_system_component/1, gloss('AI system that is a component of a large-scale IT system listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_or_put_into_service_before/2, gloss('AI system placed on the market or put into service before a given date'), source('celex:32024R1689/oj#art_111').
:- pred subject_to_significant_design_changes/1, gloss('AI system subject to significant changes in its design'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_use_by_public_authorities/1, gloss('high-risk AI system intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred must_bring_into_compliance_by/2, gloss('entity must bring AI system into compliance by a deadline'), source('celex:32024R1689/oj#art_111').
:- pred must_take_steps_to_comply_by/2, gloss('entity must take necessary steps to comply by a deadline'), source('celex:32024R1689/oj#art_111').

% Paragraph 1
must_bring_into_compliance_by(operator(S), date(2030, 12, 31)) :-
    large_scale_it_system_component(S),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)).

% Paragraph 2 – operators of high-risk AI systems (other than paragraph 1 systems)
must_take_steps_to_comply_by(operator(S), date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    \+ large_scale_it_system_component(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    subject_to_significant_design_changes(S).

must_take_steps_to_comply_by(provider(S), date(2030, 8, 2)) :-
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).

must_take_steps_to_comply_by(deployer(S), date(2030, 8, 2)) :-
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).

% Paragraph 3 – providers of general-purpose AI models
must_take_steps_to_comply_by(provider(M), date(2027, 8, 2)) :-
    general_purpose_ai_model(M),
    placed_on_market_or_put_into_service_before(M, date(2025, 8, 2)).

% Provenance
provenance(large_scale_it_system_component/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_changes/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by/2, 'celex:32024R1689/oj#art_111').

% References
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
