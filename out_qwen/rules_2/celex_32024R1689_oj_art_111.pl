% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 150d4a47ce3a47c12467f8269060ef0e11553755122fdd552238f7a216f90cad
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred large_scale_it_system_component_placed_before_august_2027/1, gloss('AI system component of large-scale IT system placed on market or put into service before 2 August 2027'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system_placed_before_august_2026/1, gloss('high-risk AI system placed on market or put into service before 2 August 2026'), source('celex:32024R1689/oj#art_111').
:- pred general_purpose_ai_model_placed_before_august_2025/1, gloss('general-purpose AI model placed on market before 2 August 2025'), source('celex:32024R1689/oj#art_111').
:- pred subject_to_significant_design_change/1, gloss('system subject to significant changes in design after 2 August 2026'), source('celex:32024R1689/oj#art_111').
:- pred must_bring_into_compliance_by_december_2030/2, gloss('operator must bring system into compliance with regulation by 31 December 2030'), source('celex:32024R1689/oj#art_111').
:- pred must_take_steps_to_comply_by_august_2030/2, gloss('provider or deployer must take necessary steps to comply with regulation by 2 August 2030'), source('celex:32024R1689/oj#art_111').
:- pred must_take_steps_to_comply_by_august_2027/2, gloss('provider must take necessary steps to comply with obligations by 2 August 2027'), source('celex:32024R1689/oj#art_111').

large_scale_it_system_component_placed_before_august_2027(S) :-
    large_scale_it_system_component(S),
    placing_on_market(S).

high_risk_ai_system_placed_before_august_2026(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).

general_purpose_ai_model_placed_before_august_2025(M) :-
    general_purpose_ai_model(M),
    placing_on_market(M).

must_bring_into_compliance_by_december_2030(O, S) :-
    operator(O),
    large_scale_it_system_component_placed_before_august_2027(S).

must_take_steps_to_comply_by_august_2030(P, S) :-
    provider(P),
    high_risk_ai_system_placed_before_august_2026(S),
    public_authority_use(S).

must_take_steps_to_comply_by_august_2030(D, S) :-
    deployer(D),
    high_risk_ai_system_placed_before_august_2026(S),
    public_authority_use(S).

must_take_steps_to_comply_by_august_2027(P, M) :-
    provider(P),
    general_purpose_ai_model_placed_before_august_2025(M).

provenance(large_scale_it_system_component_placed_before_august_2027/1, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system_placed_before_august_2026/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_before_august_2025/1, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_change/1, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by_december_2030/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by_august_2030/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by_august_2027/2, 'celex:32024R1689/oj#art_111').

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
