% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 02dba460614cddbbe24a07959557c11d67e45c32706c2553126c429c33a3c9f1
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('scientific panel established under the regulation'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('the Board referred to in the regulation'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/2, gloss('qualified alert from scientific panel to AI Office about a general-purpose AI model'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('general-purpose AI model poses concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_article_51/1, gloss('general-purpose AI model meets the conditions referred to in Article 51'), source('celex:32024R1689/oj#art_90').
:- pred reason_to_suspect/2, gloss('scientific panel has reason to suspect about a general-purpose AI model'), source('celex:32024R1689/oj#art_90').
:- pred may_exercise_powers/2, gloss('Commission through AI Office may exercise powers for a purpose'), source('celex:32024R1689/oj#art_90').
:- pred informed_board/1, gloss('Board has been informed'), source('celex:32024R1689/oj#art_90').
:- pred must_inform_board/2, gloss('AI Office must inform Board of a measure'), source('celex:32024R1689/oj#art_90').
:- pred duly_reasoned/1, gloss('qualified alert is duly reasoned'), source('celex:32024R1689/oj#art_90').
:- pred indicates_point_of_contact/2, gloss('qualified alert indicates point of contact of provider of general-purpose AI model'), source('celex:32024R1689/oj#art_90').
:- pred indicates_description_of_facts_and_reasons/1, gloss('qualified alert indicates description of relevant facts and reasons for the alert'), source('celex:32024R1689/oj#art_90').
:- pred indicates_other_relevant_information/1, gloss('qualified alert indicates other relevant information including information gathered on own initiative'), source('celex:32024R1689/oj#art_90').

qualified_alert(Alert, Model) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    reason_to_suspect(Panel, Model),
    ( concrete_identifiable_risk_at_union_level(Model)
    ; meets_conditions_article_51(Model)
    ),
    alert_from_to(Alert, Panel, Office).

may_exercise_powers(commission_through_ai_office, assessing_matter) :-
    qualified_alert(Alert, Model),
    general_purpose_ai_model(Model),
    informed_board(Board),
    board(Board).

must_inform_board(ai_office, measure(Measure)) :-
    qualified_alert(_Alert, _Model),
    measure(Measure).

duly_reasoned(Alert) :-
    qualified_alert(Alert, _Model).

indicates_point_of_contact(Alert, point_of_contact(Provider)) :-
    qualified_alert(Alert, Model),
    general_purpose_ai_model(Model),
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    model_provided_by(Model, Provider).

indicates_description_of_facts_and_reasons(Alert) :-
    qualified_alert(Alert, _Model).

indicates_other_relevant_information(Alert) :-
    qualified_alert(Alert, _Model).

alert_from_to(Alert, Panel, Office) :-
    scientific_panel(Panel),
    ai_office(Office).

model_provided_by(Model, Provider) :-
    general_purpose_ai_model(Model),
    provider(Provider).

measure(_Measure).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(board/1, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_article_51/1, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(informed_board/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(indicates_description_of_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_other_relevant_information/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
