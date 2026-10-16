% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 2b6de1af8e04b3f80ac62f7da3f80d6e52574d2f0e25b4aaeec8c8e5fe68104b
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('independent panel of experts providing advice on AI'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('formal alert issued by the scientific panel regarding systemic risk'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('concrete identifiable risk at Union level posed by a general-purpose AI model'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_of_art_51/1, gloss('general-purpose AI model meets conditions referred to in Article 51'), source('celex:32024R1689/oj#art_90').
:- pred must_provide_qualified_alert/2, gloss('scientific panel may provide qualified alert to AI Office'), source('celex:32024R1689/oj#art_90').
:- pred may_exercise_powers_for_assessment/2, gloss('Commission through AI Office may exercise powers to assess matter after qualified alert'), source('celex:32024R1689/oj#art_90').
:- pred must_inform_board_of_measure/2, gloss('AI Office shall inform Board of measure taken under Articles 91-94'), source('celex:32024R1689/oj#art_90').
:- pred duly_reasoned/1, gloss('qualified alert is duly reasoned'), source('celex:32024R1689/oj#art_90').
:- pred indicates_provider_point_of_contact/1, gloss('qualified alert indicates point of contact of provider concerned'), source('celex:32024R1689/oj#art_90').
:- pred describes_relevant_facts_and_reasons/1, gloss('qualified alert describes relevant facts and reasons for alert'), source('celex:32024R1689/oj#art_90').
:- pred includes_other_relevant_information/1, gloss('qualified alert includes other information considered relevant by scientific panel'), source('celex:32024R1689/oj#art_90').

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_of_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(must_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers_for_assessment/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_provider_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(describes_relevant_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(includes_other_relevant_information/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

must_provide_qualified_alert(P, A) :-
    scientific_panel(P),
    qualified_alert(A),
    general_purpose_ai_model(M),
    (concrete_identifiable_risk_at_union_level(M) ; meets_conditions_of_art_51(M)).

may_exercise_powers_for_assessment(C, M) :-
    ai_office(C),
    qualified_alert(_A),
    board(B),
    informed(B).

must_inform_board_of_measure(O, Measure) :-
    ai_office(O),
    measure_under_articles_91_to_94(Measure).

duly_reasoned(A) :-
    qualified_alert(A).

indicates_provider_point_of_contact(A) :-
    qualified_alert(A),
    general_purpose_ai_model(M),
    point_of_contact(M, _Contact).

describes_relevant_facts_and_reasons(A) :-
    qualified_alert(A).

includes_other_relevant_information(A) :-
    qualified_alert(A).
