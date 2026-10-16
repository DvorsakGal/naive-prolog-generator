% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : aadc980794619b8ebaf4885ef16c6036c2c2c66887d3c75c61718d97a1c6ecfc
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#art_86').
:- pred affected_person/1, gloss('natural person subject to a decision'), source('celex:32024R1689/oj#art_86').
:- pred decision_taken_by_deployer/2, gloss('decision taken by deployer on basis of AI system output'), source('celex:32024R1689/oj#art_86').
:- pred legal_effects/1, gloss('produces legal effects'), source('celex:32024R1689/oj#art_86').
:- pred similarly_significantly_affects/1, gloss('similarly significantly affects the person'), source('celex:32024R1689/oj#art_86').
:- pred adverse_impact_on_health_safety_fundamental_rights/1, gloss('adverse impact on health, safety or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred right_to_explanation/1, gloss('right to obtain clear and meaningful explanations'), source('celex:32024R1689/oj#art_86').
:- pred annex_3_point_2_exception/1, gloss('system listed under point 2 of Annex III'), source('celex:32024R1689/oj#art_86').
:- pred exception_from_union_or_national_law/1, gloss('exception or restriction follows from Union or national law in compliance with Union law'), source('celex:32024R1689/oj#art_86').
:- pred right_otherwise_provided_under_union_law/1, gloss('right to explanation otherwise provided for under Union law'), source('celex:32024R1689/oj#art_86').

high_risk_ai_system(S) :-
    ai_system(S),
    listed_in_annex_3(S).

listed_in_annex_3(S) :-
    high_risk_ai_system(S).

right_to_explanation(P) :-
    affected_person(P),
    decision_taken_by_deployer(P, D),
    deployer(D),
    high_risk_ai_system(S),
    decision_based_on_output(P, S),
    \+ annex_3_point_2_exception(S),
    produces_legal_effects_or_similarly_significantly_affects(P),
    adverse_impact_on_health_safety_fundamental_rights(P).

decision_based_on_output(P, S) :-
    decision_taken_by_deployer(P, D),
    output_from(S, O),
    decision_based_on(P, O).

produces_legal_effects_or_similarly_significantly_affects(P) :-
    legal_effects(P).
produces_legal_effects_or_similarly_significantly_affects(P) :-
    similarly_significantly_affects(P).

must_provide_explanation(D, P) :-
    deployer(D),
    right_to_explanation(P),
    decision_taken_by_deployer(P, D).

must_provide_explanation(D, explanation(role_of_ai_system, main_elements_of_decision)) :-
    deployer(D),
    right_to_explanation(P),
    decision_taken_by_deployer(P, D).

exempt_right_to_explanation(P) :-
    affected_person(P),
    exception_from_union_or_national_law(P).

exempt_right_to_explanation(P) :-
    affected_person(P),
    right_otherwise_provided_under_union_law(P).

right_to_explanation_applies(P) :-
    right_to_explanation(P),
    \+ exempt_right_to_explanation(P).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_86').
provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(decision_taken_by_deployer/2, 'celex:32024R1689/oj#art_86').
provenance(legal_effects/1, 'celex:32024R1689/oj#art_86').
provenance(similarly_significantly_affects/1, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_on_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(annex_3_point_2_exception/1, 'celex:32024R1689/oj#art_86').
provenance(exception_from_union_or_national_law/1, 'celex:32024R1689/oj#art_86').
provenance(right_otherwise_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(exempt_right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation_applies/1, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
