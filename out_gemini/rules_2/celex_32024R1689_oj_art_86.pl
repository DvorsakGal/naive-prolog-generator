% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : a52283f45ba2490e38ee23ba1f3da42214b18240778c704a66c0b1396d8fa4c7
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred high_risk_ai_system_annex_3/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#art_86').
:- pred decision_taken_on_basis_of_output/3, gloss('Decision is taken by deployer on the basis of AI system output'), source('celex:32024R1689/oj#art_86').
:- pred subject_to_decision/2, gloss('Person is subject to a decision'), source('celex:32024R1689/oj#art_86').
:- pred produces_legal_or_significant_effects/1, gloss('Decision produces legal effects or similarly significantly affects a person'), source('celex:32024R1689/oj#art_86').
:- pred considers_adverse_impact/2, gloss('Person considers the decision to have an adverse impact on health, safety or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred exempt_right_to_explanation/2, gloss('Use of AI system is exempt or restricted under Union or national law'), source('celex:32024R1689/oj#art_86').
:- pred explanation_provided_under_other_union_law/2, gloss('Right to explanation is otherwise provided for under Union law'), source('celex:32024R1689/oj#art_86').
:- pred permitted_right_to_explanation/2, gloss('Person has the right to obtain clear and meaningful explanations from the deployer'), source('celex:32024R1689/oj#art_86').
:- pred must_provide/2, gloss('Deployer must provide clear and meaningful explanations to affected person'), source('celex:32024R1689/oj#art_86').

% Article 86(1), (2), and (3)
% Right to obtain from the deployer clear and meaningful explanations:
permitted_right_to_explanation(Person, explanation(Deployer, Decision, System)) :-
    subject_to_decision(Person, Decision),
    decision_taken_on_basis_of_output(Deployer, Decision, System),
    high_risk_ai_system_annex_3(System),
    \+ annex_3_point_2_system(System),
    produces_legal_or_significant_effects(Decision),
    considers_adverse_impact(Person, Decision),
    \+ exempt_right_to_explanation(Deployer, System),
    \+ explanation_provided_under_other_union_law(Person, Decision).

% Corresponding obligation on the deployer:
must_provide(Deployer, explanation(Person, Decision, System)) :-
    deployer(Deployer),
    permitted_right_to_explanation(Person, explanation(Deployer, Decision, System)).

provenance(permitted_right_to_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(must_provide/2, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
