% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : cd5f9e42ddbbb4019677b6fbe057936e16dbeb210ecf4ec1b4ed9e741e9498dd
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred affected_person/1, gloss('natural person subject to a decision with adverse impact'), source('celex:32024R1689/oj#art_86').
:- pred decision_based_on_ai_output/2, gloss('decision taken by deployer on basis of AI system output'), source('celex:32024R1689/oj#art_86').
:- pred produces_legal_effects/1, gloss('decision produces legal effects'), source('celex:32024R1689/oj#art_86').
:- pred significantly_affects_person/1, gloss('decision similarly significantly affects the person'), source('celex:32024R1689/oj#art_86').
:- pred adverse_impact_considered/2, gloss('person considers decision has adverse impact on health safety or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred high_risk_ai_system_annex_iii_point_2/1, gloss('high-risk AI system listed under Annex III point 2'), source('celex:32024R1689/oj#art_86').
:- pred exception_from_explanation_obligation_applies/1, gloss('exception or restriction to explanation obligation follows from Union or national law'), source('celex:32024R1689/oj#art_86').
:- pred right_to_explanation_provided_under_union_law/1, gloss('right to explanation is otherwise provided for under Union law'), source('celex:32024R1689/oj#art_86').
:- pred must_provide_explanation/2, gloss('deployer must provide clear and meaningful explanations to affected person'), source('celex:32024R1689/oj#art_86').

affected_person(P) :-
    decision_based_on_ai_output(D, _S),
    (produces_legal_effects(D) ; significantly_affects_person(D)),
    adverse_impact_considered(P, D).

must_provide_explanation(Deployer, Person) :-
    affected_person(Person),
    decision_based_on_ai_output(Decision, System),
    high_risk_ai_system_annex_iii(System),
    \+ high_risk_ai_system_annex_iii_point_2(System),
    deployer(Deployer),
    \+ exception_from_explanation_obligation_applies(System),
    \+ right_to_explanation_provided_under_union_law(Person).

provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_ai_output/2, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects/1, 'celex:32024R1689/oj#art_86').
provenance(significantly_affects_person/1, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_considered/2, 'celex:32024R1689/oj#art_86').
provenance(high_risk_ai_system_annex_iii_point_2/1, 'celex:32024R1689/oj#art_86').
provenance(exception_from_explanation_obligation_applies/1, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
