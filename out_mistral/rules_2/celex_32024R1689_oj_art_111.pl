% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 0eacadedbed932617e63faff0262aa35dedf846ee73710e84edcd3d06a49a951
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred large_scale_it_system/1, gloss('large-scale IT system established by legal acts listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred component_of_large_scale_it_system/2, gloss('AI system is a component of a large-scale IT system'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_or_put_into_service_before/2, gloss('AI system placed on market or put into service before a date'), source('celex:32024R1689/oj#art_111').
:- pred significant_change_in_design/1, gloss('AI system subject to significant change in design'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_use_by_public_authorities/1, gloss('high-risk AI system intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred must_comply_by_date/2, gloss('entity must take necessary steps to comply with the regulation by a date'), source('celex:32024R1689/oj#art_111').
:- pred evaluation_of_large_scale_it_system/1, gloss('evaluation of large-scale IT system undertaken as provided for in legal acts'), source('celex:32024R1689/oj#art_111').

large_scale_it_system(S) :-
    ai_system(S),
    component_of_large_scale_it_system(S, _).

component_of_large_scale_it_system(S, L) :-
    ai_system(S),
    large_scale_it_system(L).

placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)) :-
    ai_system(S),
    placing_on_market(S).

placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)) :-
    ai_system(S),
    putting_into_service(S).

placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    placing_on_market(S).

placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    putting_into_service(S).

placed_on_market_or_put_into_service_before(S, date(2025, 8, 2)) :-
    general_purpose_ai_model(S),
    placing_on_market(S).

must_comply_by_date(S, date(2030, 12, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system(S, _),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)).

must_comply_by_date(S, date(2030, 8, 2)) :-
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)).

must_comply_by_date(S, date(2027, 8, 2)) :-
    general_purpose_ai_model(S),
    placed_on_market_or_put_into_service_before(S, date(2025, 8, 2)).

must_comply_by_date(S, date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S, _),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    significant_change_in_design(S).

evaluation_of_large_scale_it_system(L) :-
    large_scale_it_system(L).

provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/2, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(must_comply_by_date/2, 'celex:32024R1689/oj#art_111').
provenance(evaluation_of_large_scale_it_system/1, 'celex:32024R1689/oj#art_111').

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
