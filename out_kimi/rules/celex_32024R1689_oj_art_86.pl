% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ce2ab5b45518337caa33093f42f954f05da1f3391f17e279abd08307d231debe
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred right_to_explanation/1, gloss('right of affected person to obtain explanation of AI-based decision'), source('celex:32024R1689/oj#art_86').
:- pred affected_person/1, gloss('person subject to a decision based on AI system output'), source('celex:32024R1689/oj#art_86/par_1').
:- pred decision_with_legal_effects/1, gloss('decision producing legal effects or similarly significantly affecting person'), source('celex:32024R1689/oj#art_86/par_1').
:- pred adverse_impact/1, gloss('impact on health, safety or fundamental rights that person considers adverse'), source('celex:32024R1689/oj#art_86/par_1').
:- pred high_risk_ai_system_annex_3_except_point_2/1, gloss('high-risk AI system listed in Annex 3 except point 2'), source('celex:32024R1689/oj#art_86/par_1').
:- pred exception_or_restriction_under_union_or_national_law/1, gloss('exception or restriction to explanation obligation from Union or national law'), source('celex:32024R1689/oj#art_86/par_2').
:- pred right_otherwise_provided_under_union_law/1, gloss('right to explanation already provided under other Union law'), source('celex:32024R1689/oj#art_86/par_3').

right_to_explanation(Person) :-
    affected_person(Person),
    decision_with_legal_effects(Person),
    adverse_impact(Person),
    deployer(Deployer),
    high_risk_ai_system_annex_3_except_point_2(S),
    \+ exception_or_restriction_under_union_or_national_law(Person),
    \+ right_otherwise_provided_under_union_law(Person).

decision_with_legal_effects(Person) :-
    affected_person(Person),
    deployer(Deployer),
    high_risk_ai_system_annex_3_except_point_2(S),
    decision_by_deployer_based_on_output(Deployer, Person, S),
    (legal_effects(Person) ; similarly_significant_effects(Person)).

adverse_impact(Person) :-
    affected_person(Person),
    considers_adverse_impact(Person, health).
adverse_impact(Person) :-
    affected_person(Person),
    considers_adverse_impact(Person, safety).
adverse_impact(Person) :-
    affected_person(Person),
    considers_adverse_impact(Person, fundamental_rights).

must_provide_explanation(Deployer, Person) :-
    deployer(Deployer),
    affected_person(Person),
    right_to_explanation(Person).

provenance(right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(decision_with_legal_effects/1, 'celex:32024R1689/oj#art_86/par_1').
provenance(adverse_impact/1, 'celex:32024R1689/oj#art_86/par_1').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86/par_1').
provenance(high_risk_ai_system_annex_3_except_point_2/1, 'celex:32024R1689/oj#art_86/par_1').
provenance(exception_or_restriction_under_union_or_national_law/1, 'celex:32024R1689/oj#art_86/par_2').
provenance(right_otherwise_provided_under_union_law/1, 'celex:32024R1689/oj#art_86/par_3').

references('celex:32024R1689/oj#art_86/par_1', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86/par_2', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86/par_3', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86/par_3', 'celex:32024R1689/oj#art_86').
