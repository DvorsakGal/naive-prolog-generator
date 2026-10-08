% unit       : celex:32024R1689/oj#art_111
% title      : AI systems already placed on the market or put into service and general-purpose AI models already placed on the marked
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : b44122805477d087070225a7cfc6b3fc4916d847bb98e86f4f959149c9fb329a
% model      : gpt-oss:120b-cloud
% prompt sha : 0f75bb267b6a68638b306112dd4c4f68345de22a9e7fd72aa57bfc96ec1c24dc
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred component_of_large_scale_it_system/1, gloss('AI system that is a component of a large‑scale IT system established by listed legal acts'), source('celex:32024R1689/oj#art_111').
:- pred placed_before_2_aug_2027/1, gloss('AI system placed on the market or put into service before 2 August 2027'), source('celex:32024R1689/oj#art_111').
:- pred placed_before_2_aug_2026/1, gloss('AI system placed on the market or put into service before 2 August 2026'), source('celex:32024R1689/oj#art_111').
:- pred placed_before_2_aug_2025/1, gloss('AI system placed on the market before 2 August 2025'), source('celex:32024R1689/oj#art_111').
:- pred significant_design_change/1, gloss('AI system subject to significant changes in its design from the specified date'), source('celex:32024R1689/oj#art_111').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('celex:32024R1689/oj#art_111').
:- pred intended_for_public_authorities/1, gloss('High‑risk AI system intended to be used by public authorities'), source('celex:32024R1689/oj#art_111').
:- pred deadline_31_dec_2030/1, gloss('Compliance required by 31 December 2030'), source('celex:32024R1689/oj#art_111').
:- pred deadline_2_aug_2030/1, gloss('Compliance required by 2 August 2030'), source('celex:32024R1689/oj#art_111').
:- pred deadline_2_aug_2027/1, gloss('Compliance required by 2 August 2027'), source('celex:32024R1689/oj#art_111').

% Paragraph 1 – components of large‑scale IT systems placed before 2 Aug 2027
required_compliance(Operator, S) :-
    operator(Operator),
    ai_system(S),
    component_of_large_scale_it_system(S),
    placed_before_2_aug_2027(S),
    deadline_31_dec_2030(S).

% Paragraph 2 – operators of high‑risk AI systems (excluding paragraph 1) placed before 2 Aug 2026, only if significant design change
required_compliance(Operator, S) :-
    operator(Operator),
    ai_system(S),
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S),
    placed_before_2_aug_2026(S),
    significant_design_change(S).

% Paragraph 2 – providers and deployers of high‑risk AI systems intended for public authorities
required_compliance(Actor, S) :-
    (provider(Actor) ; deployer(Actor)),
    ai_system(S),
    high_risk_ai_system(S),
    intended_for_public_authorities(S),
    deadline_2_aug_2030(S).

% Paragraph 3 – providers of general‑purpose AI models placed before 2 Aug 2025
required_compliance(Provider, S) :-
    provider(Provider),
    general_purpose_ai_model(S),
    placed_before_2_aug_2025(S),
    deadline_2_aug_2027(S).

provenance(required_compliance/2, 'celex:32024R1689/oj#art_111').

references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').
