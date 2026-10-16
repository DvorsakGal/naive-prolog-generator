% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : dc773397519c83db030b5ef91bd8d54845b99eb0aa9aa8e84ca6e3ea904f441a
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred must_bring_into_compliance/2, gloss('obligation to bring AI system into compliance with the AI Act'), source('celex:32024R1689/oj#art_111').
:- pred must_comply_by_date/2, gloss('obligation to comply with requirements by specified date'), source('celex:32024R1689/oj#art_111').
:- pred significant_change_in_design/1, gloss('significant changes in design of AI system'), source('celex:32024R1689/oj#art_111').
:- pred placed_or_put_into_service_before/2, gloss('AI system placed on market or put into service before specified date'), source('celex:32024R1689/oj#art_111').
:- pred large_scale_it_system/1, gloss('large-scale IT system established by legal acts listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred component_of/2, gloss('AI system is component of larger system'), source('celex:32024R1689/oj#art_111').
:- pred used_by_public_authority/1, gloss('high-risk AI system intended to be used by public authority'), source('celex:32024R1689/oj#art_111').
:- pred general_purpose_ai_model_placed_before/2, gloss('general-purpose AI model placed on market before specified date'), source('celex:32024R1689/oj#art_111').

must_bring_into_compliance(Operator, S) :-
    operator(Operator),
    ai_system(S),
    component_of(S, L),
    large_scale_it_system(L),
    placed_or_put_into_service_before(S, date(2027, 8, 2)),
    \+ non_compliance_art_5(S).

must_comply_by_date(Operator, S) :-
    must_bring_into_compliance(Operator, S),
    date_of_compliance(S, date(2030, 12, 31)).

applies_to_system(S) :-
    high_risk_ai_system(S),
    placed_or_put_into_service_before(S, date(2026, 8, 2)),
    \+ component_of(S, L),
    \+ large_scale_it_system(L),
    \+ non_compliance_art_5(S).

must_comply_by_date(Operator, S) :-
    operator(Operator),
    applies_to_system(S),
    significant_change_in_design(S),
    date_of_compliance(S, date(2026, 8, 2)).

must_comply_by_date(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    used_by_public_authority(S),
    date_of_compliance(S, date(2030, 8, 2)).

must_comply_by_date(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    general_purpose_ai_model_placed_before(M, date(2025, 8, 2)),
    date_of_compliance(M, date(2027, 8, 2)).

provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_comply_by_date/2, 'celex:32024R1689/oj#art_111').
provenance(applies_to_system/1, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(component_of/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(placed_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(used_by_public_authority/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_before/2, 'celex:32024R1689/oj#art_111').

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
