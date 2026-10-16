% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 46e44fdd107073b93d0cf1df27e5b83a9bb370cca3d12cd4fc48456e0be50916
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred affected_person/1, gloss('natural person subject to a decision taken by the deployer'), source('celex:32024R1689/oj#art_86').
:- pred decision_taken_by_deployer/2, gloss('decision taken by deployer on basis of output from high-risk AI system'), source('celex:32024R1689/oj#art_86').
:- pred decision_based_on_ai_output/2, gloss('decision is based on output from a high-risk AI system'), source('celex:32024R1689/oj#art_86').
:- pred produces_legal_effects/1, gloss('decision produces legal effects'), source('celex:32024R1689/oj#art_86').
:- pred similarly_significantly_affects/2, gloss('decision similarly significantly affects the person'), source('celex:32024R1689/oj#art_86').
:- pred adverse_impact_considered_by_person/2, gloss('person considers decision to have adverse impact on health, safety or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred right_to_explanation/2, gloss('affected person has right to obtain clear and meaningful explanations from deployer'), source('celex:32024R1689/oj#art_86').
:- pred explanation_of_ai_role/2, gloss('explanation of the role of the AI system in the decision-making procedure'), source('celex:32024R1689/oj#art_86').
:- pred explanation_of_main_elements/2, gloss('explanation of the main elements of the decision taken'), source('celex:32024R1689/oj#art_86').
:- pred exception_from_union_or_national_law/1, gloss('exception from or restriction to the obligation follows from Union or national law in compliance with Union law'), source('celex:32024R1689/oj#art_86').
:- pred right_already_provided_under_union_law/1, gloss('right to explanation is otherwise provided for under Union law'), source('celex:32024R1689/oj#art_86').
:- pred high_risk_ai_system_annex_3_excluding_point_2/1, gloss('high-risk AI system listed in Annex III with exception of systems listed under point 2 thereof'), source('celex:32024R1689/oj#art_86').

high_risk_ai_system_annex_3_excluding_point_2(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S).

high_risk_ai_system_annex_3_excluding_point_2(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).

high_risk_ai_system_annex_3_excluding_point_2(S) :-
    high_risk_ai_system(S),
    critical_infrastructure(S).

decision_based_on_ai_output(D, S) :-
    decision_taken_by_deployer(D, S).

decision_taken_by_deployer(D, S) :-
    deployer(_Dep),
    high_risk_ai_system_annex_3_excluding_point_2(S),
    decision_based_on_ai_output(D, S).

produces_legal_effects(D) :-
    decision_taken_by_deployer(D, _S).

similarly_significantly_affects(D, P) :-
    affected_person(P),
    decision_taken_by_deployer(D, _S).

adverse_impact_considered_by_person(D, P) :-
    affected_person(P),
    decision_taken_by_deployer(D, _S),
    risk_to_health_safety_fundamental_rights(D).

right_to_explanation(P, Dep) :-
    affected_person(P),
    decision_taken_by_deployer(D, S),
    deployer(Dep),
    high_risk_ai_system_annex_3_excluding_point_2(S),
    produces_legal_effects(D),
    adverse_impact_considered_by_person(D, P),
    \+ exception_from_union_or_national_law(D),
    \+ right_already_provided_under_union_law(D).

right_to_explanation(P, Dep) :-
    affected_person(P),
    decision_taken_by_deployer(D, S),
    deployer(Dep),
    high_risk_ai_system_annex_3_excluding_point_2(S),
    similarly_significantly_affects(D, P),
    adverse_impact_considered_by_person(D, P),
    \+ exception_from_union_or_national_law(D),
    \+ right_already_provided_under_union_law(D).

must_provide_explanation(Dep, P) :-
    right_to_explanation(P, Dep).

explanation_of_ai_role(Dep, P) :-
    right_to_explanation(P, Dep).

explanation_of_main_elements(Dep, P) :-
    right_to_explanation(P, Dep).

exception_from_union_or_national_law(D) :-
    decision_taken_by_deployer(D, _S),
    in_accordance_with_national_rules(D).

exception_from_union_or_national_law(D) :-
    decision_taken_by_deployer(D, _S),
    union_law_considers_application_disproportionate(D).

right_already_provided_under_union_law(D) :-
    decision_taken_by_deployer(D, _S).

provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(decision_taken_by_deployer/2, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_ai_output/2, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects/1, 'celex:32024R1689/oj#art_86').
provenance(similarly_significantly_affects/2, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_considered_by_person/2, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(explanation_of_ai_role/2, 'celex:32024R1689/oj#art_86').
provenance(explanation_of_main_elements/2, 'celex:32024R1689/oj#art_86').
provenance(exception_from_union_or_national_law/1, 'celex:32024R1689/oj#art_86').
provenance(right_already_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(high_risk_ai_system_annex_3_excluding_point_2/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
