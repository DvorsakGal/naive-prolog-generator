% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bc3df25adc7071f333a8968c24a12a20cae9c0e9a39c86ddba2eb4d8b49d0aa6
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred must_bring_into_compliance/2, gloss('entity required to bring something into compliance by a deadline'), source('celex:32024R1689/oj#art_111').
:- pred must_comply/2, gloss('entity required to comply with obligations by a deadline'), source('celex:32024R1689/oj#art_111').
:- pred significant_change_in_design/1, gloss('system subject to significant changes in its design'), source('celex:32024R1689/oj#art_111').
:- pred before_date/2, gloss('event occurred before specified date'), source('celex:32024R1689/oj#art_111').
:- pred by_date/2, gloss('deadline by which compliance must be achieved'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_111').
:- pred general_purpose_ai_model/1, gloss('AI model with wide range of tasks'), source('celex:32024R1689/oj#art_111').
:- pred large_scale_it_system/1, gloss('IT system established by listed legal acts'), source('celex:32024R1689/oj#art_111').
:- pred listed_in_annex_10/1, gloss('established by legal acts listed in Annex X'), source('celex:32024R1689/oj#art_111').
:- pred intended_use_by_public_authority/1, gloss('high-risk AI system intended for use by public authorities'), source('celex:32024R1689/oj#art_111').

must_bring_into_compliance(S, date(year(2030), month(12), day(31))) :-
    ai_system(S),
    component_of_large_scale_it_system(S, L),
    large_scale_it_system(L),
    listed_in_annex_10(L),
    (placed_on_market(S); put_into_service(S)),
    before_date(S, date(year(2027), month(8), day(2))).

must_comply(Operator, by_date(date(year(2026), month(8), day(2)))) :-
    operator(Operator),
    high_risk_ai_system(S),
    \+ large_scale_it_system_component(S),
    (placed_on_market(S); put_into_service(S)),
    before_date(S, date(year(2026), month(8), day(2))),
    significant_change_in_design(S).

must_comply(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_use_by_public_authority(S),
    by_date(date(year(2030), month(8), day(2))).

must_comply(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    intended_use_by_public_authority(S),
    by_date(date(year(2030), month(8), day(2))).

must_comply(Provider, by_date(date(year(2027), month(8), day(2)))) :-
    provider(Provider),
    general_purpose_ai_model(M),
    placed_on_market(M),
    before_date(M, date(year(2025), month(8), day(2))).

component_of_large_scale_it_system(S, L) :-
    ai_system(S),
    large_scale_it_system(L).

large_scale_it_system_component(S) :-
    component_of_large_scale_it_system(S, _L).

provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_comply/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(before_date/2, 'celex:32024R1689/oj#art_111').
provenance(by_date/2, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model/1, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(listed_in_annex_10/1, 'celex:32024R1689/oj#art_111').
provenance(intended_use_by_public_authority/1, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/2, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system_component/1, 'celex:32024R1689/oj#art_111').

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
