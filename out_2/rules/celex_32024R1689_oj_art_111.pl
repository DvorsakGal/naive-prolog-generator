% unit       : celex:32024R1689/oj#art_111
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1807c25b100e2eb5217a8c395292bc5eb72ab7f47401601ffb1fd2feb0bea1ab
% cached     : False
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
:- pred component_of_large_scale_it_system/1, gloss('AI system component of large‑scale IT system listed in annex 10'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_111').
:- pred placed_before/2, gloss('AI system placed on market or put into service before given date'), source('celex:32024R1689/oj#art_111').
:- pred significant_design_change/1, gloss('AI system subject to significant changes in design'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_public_authorities/1, gloss('AI system intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').

must_comply(P, compliance(S, by(date(2030,12,31)))) :-
    provider(P),
    component_of_large_scale_it_system(S),
    placed_before(S, date(2027,8,2)).

must_comply(O, compliance(S, by(date(2030,8,2)))) :-
    operator(O),
    high_risk_ai_system(S),
    placed_before(S, date(2026,8,2)),
    significant_design_change(S),
    \+ component_of_large_scale_it_system(S).

must_comply(P, compliance(S, by(date(2030,8,2)))) :-
    provider(P),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).

must_comply(D, compliance(S, by(date(2030,8,2)))) :-
    deployer(D),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).

must_comply(P, compliance(M, by(date(2027,8,2)))) :-
    provider(P),
    general_purpose_ai_model(M),
    placed_before(M, date(2025,8,2)).

provenance(must_comply/2, 'celex:32024R1689/oj#art_111').

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
