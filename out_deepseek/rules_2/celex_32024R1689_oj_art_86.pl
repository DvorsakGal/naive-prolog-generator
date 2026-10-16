% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 9ff0f6bb3615bae8692be5b88e3bd3bace013c9c8483cb934042eed130d95900
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred right_to_explanation_applies/1, gloss('affected person has right to explanation of individual decision-making'), source('celex:32024R1689/oj#art_86').
:- pred exception_from_explanation_applies/1, gloss('exception or restriction from explanation obligation applies'), source('celex:32024R1689/oj#art_86/par_2').
:- pred explanation_right_otherwise_provided/1, gloss('right to explanation is otherwise provided for under Union law'), source('celex:32024R1689/oj#art_86/par_3').

right_to_explanation_applies(Person) :-
    affected_person(Person),
    decision_taken_by_deployer(Decision, Person),
    decision_based_on_output(Decision, System),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    produces_legal_effects_or_similarly_significantly_affects(Decision, Person),
    person_considers_adverse_impact(Decision, Person),
    \+ exception_from_explanation_applies(Person),
    \+ explanation_right_otherwise_provided(Person).

must_obtain_explanation(Person, explanation(role_of_system(System), main_elements(Decision))) :-
    right_to_explanation_applies(Person),
    decision_taken_by_deployer(Decision, Person),
    decision_based_on_output(Decision, System).

exception_from_explanation_applies(Person) :-
    affected_person(Person),
    decision_taken_by_deployer(Decision, Person),
    decision_based_on_output(Decision, System),
    use_of_system_excepted_or_restricted(System).

explanation_right_otherwise_provided(Person) :-
    affected_person(Person),
    right_to_explanation_provided_under_union_law(Person).

provenance(right_to_explanation_applies/1, 'celex:32024R1689/oj#art_86').
provenance(must_obtain_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(exception_from_explanation_applies/1, 'celex:32024R1689/oj#art_86/par_2').
provenance(explanation_right_otherwise_provided/1, 'celex:32024R1689/oj#art_86/par_3').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
