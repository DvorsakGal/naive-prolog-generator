% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 846597fc931b083661a3d51d0628439095c31432395eaf385dfdf1e2c653f04e
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('duly reasoned alert from the scientific panel'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('poses concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_of_article_51/1, gloss('meets the conditions referred to in Article 51'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('the AI Board'), source('celex:32024R1689/oj#art_90').

may_provide_qualified_alert(Panel, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    reason_to_suspect(Panel, Model).

reason_to_suspect(Panel, Model) :-
    concrete_identifiable_risk_at_union_level(Model).
reason_to_suspect(Panel, Model) :-
    meets_conditions_of_article_51(Model).

qualified_alert(Alert) :-
    duly_reasoned(Alert),
    indicates_point_of_contact(Alert),
    indicates_description_of_facts_and_reasons(Alert),
    indicates_other_relevant_information(Alert).

duly_reasoned(Alert) :-
    qualified_alert(Alert).

indicates_point_of_contact(Alert) :-
    qualified_alert(Alert),
    point_of_contact(Alert, _Provider).

indicates_description_of_facts_and_reasons(Alert) :-
    qualified_alert(Alert),
    description_of_facts_and_reasons(Alert, _Facts, _Reasons).

indicates_other_relevant_information(Alert) :-
    qualified_alert(Alert),
    other_relevant_information(Alert, _Info).

must_inform_board_of_measure(Commission, Measure) :-
    ai_office(Commission),
    board(Board),
    measure_according_to_articles(Measure).

measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_91').
measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_92').
measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_93').
measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_94').

provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_description_of_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_other_relevant_information/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').
provenance(measure_according_to_articles/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
