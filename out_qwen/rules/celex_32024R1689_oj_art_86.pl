% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 599811c9ce49914955aa8076a49822eabe524aa38048b823adfafa5a089b0f30
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred affected_person/1, gloss('natural person subject to a decision with adverse impact'), source('celex:32024R1689/oj#art_86').
:- pred high_risk_ai_system_listed_in_annex_iii/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#art_86').
:- pred exempt_from_explanation_right/1, gloss('AI system exempt from explanation right under Union or national law'), source('celex:32024R1689/oj#art_86').
:- pred explanation_right_provided_under_union_law/1, gloss('right to explanation already provided under Union law'), source('celex:32024R1689/oj#art_86').
:- pred must_provide_explanation(Deployer, Person), gloss('deployer must provide clear and meaningful explanation to affected person'), source('celex:32024R1689/oj#art_86').

high_risk_ai_system_listed_in_annex_iii(S) :-
    ai_system(S).

exempt_from_explanation_right(S) :-
    high_risk_ai_system_listed_in_annex_iii(S),
    exception_from_obligation_applies(S).

explanation_right_provided_under_union_law(_P) :-
    right_provided_under_union_law(_P).

must_provide_explanation(D, P) :-
    deployer(D),
    affected_person(P),
    decision_based_on_high_risk_ai_system(D, P, S),
    high_risk_ai_system_listed_in_annex_iii(S),
    \+ exempt_from_explanation_right(S),
    \+ explanation_right_provided_under_union_law(P),
    produces_legal_effects_or_significantly_affects(P, S),
    adverse_impact_considered(P).

decision_based_on_high_risk_ai_system(D, P, S) :-
    deployer(D),
    affected_person(P),
    ai_system(S),
    decision_taken_by_deployer(D, P, S).

produces_legal_effects_or_significantly_affects(P, S) :-
    affected_person(P),
    ai_system(S),
    legal_effects_or_significant_effect(P, S).

adverse_impact_considered(P) :-
    affected_person(P).

provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(high_risk_ai_system_listed_in_annex_iii/1, 'celex:32024R1689/oj#art_86').
provenance(exempt_from_explanation_right/1, 'celex:32024R1689/oj#art_86').
provenance(explanation_right_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_high_risk_ai_system/3, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects_or_significantly_affects/2, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_considered/1, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
