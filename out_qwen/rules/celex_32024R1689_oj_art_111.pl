% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d153f7b00375712fcac7fe87e4fb08ef8b13a766a5a125c2c82cac7fcb73a70e
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred component_of_large_scale_it_system/1, gloss('AI system that is a component of a large-scale IT system listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred placed_on_market_or_put_into_service_before/2, gloss('system placed on market or put into service before a given date'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this Regulation'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_public_authority_use/1, gloss('AI system intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred general_purpose_ai_model/1, gloss('AI model capable of a wide range of tasks'), source('celex:32024R1689/oj#art_111').
:- pred subject_to_significant_design_change_after/2, gloss('system subject to significant changes in design after a given date'), source('celex:32024R1689/oj#art_111').
:- pred must_bring_into_compliance_by/2, gloss('obligation to bring system into compliance with this Regulation by a deadline'), source('celex:32024R1689/oj#art_111').
:- pred must_take_steps_to_comply_by/2, gloss('obligation for operator to take necessary steps to comply by a deadline'), source('celex:32024R1689/oj#art_111').

component_of_large_scale_it_system(S) :-
    ai_system(S),
    large_scale_it_system_component(S).

placed_on_market_or_put_into_service_before(S, Date) :-
    placing_on_market(S),
    before_date(Date).
placed_on_market_or_put_into_service_before(S, Date) :-
    putting_into_service(S),
    before_date(Date).

high_risk_ai_system(S) :-
    ai_system(S),
    high_risk(S).

intended_for_public_authority_use(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    public_authority_use(Purpose).

subject_to_significant_design_change_after(S, Date) :-
    ai_system(S),
    significant_design_change(S),
    after_date(Date).

must_bring_into_compliance_by(S, date(2030, 12, 31)) :-
    component_of_large_scale_it_system(S),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)).

regulation_applies_to_high_risk_system(S) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    \+ component_of_large_scale_it_system(S),
    subject_to_significant_design_change_after(S, date(2026, 8, 2)).

must_take_steps_to_comply_by(O, date(2030, 8, 2)) :-
    operator(O),
    high_risk_ai_system(S),
    intended_for_public_authority_use(S),
    (provider(O) ; deployer(O)),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    \+ component_of_large_scale_it_system(S).

must_take_steps_to_comply_by(P, date(2027, 8, 2)) :-
    provider(P),
    general_purpose_ai_model(M),
    placed_on_market_or_put_into_service_before(M, date(2025, 8, 2)).

provenance(component_of_large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_public_authority_use/1, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_change_after/2, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by/2, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_high_risk_system/1, 'celex:32024R1689/oj#art_111').

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
