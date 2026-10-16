% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 8cf58d631c8d183fee628f44c5a6c9053f4cfcf40653e03d3c8bc3e543263744
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('qualified alert by the scientific panel on systemic risk'), source('celex:32024R1689/oj#art_90').
:- pred alert_target_model/2, gloss('AI model that is the subject of a qualified alert'), source('celex:32024R1689/oj#art_90').
:- pred suspected_concrete_identifiable_risk_union_level/1, gloss('suspected to pose concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_art_51/1, gloss('meets the conditions referred to in Article 51'), source('celex:32024R1689/oj#art_90').
:- pred permitted_provide_alert/3, gloss('actor is permitted to provide an alert to a recipient regarding a model'), source('celex:32024R1689/oj#art_90').
:- pred informed/2, gloss('actor has informed another actor or body'), source('celex:32024R1689/oj#art_90').
:- pred permitted_exercise_powers/2, gloss('actor is permitted to exercise investigative/enforcement powers regarding a model'), source('celex:32024R1689/oj#art_90').
:- pred must_inform/2, gloss('actor must inform recipient of an event or measure'), source('celex:32024R1689/oj#art_90').
:- pred investigation_measure/1, gloss('measure taken under Articles 91 to 94'), source('celex:32024R1689/oj#art_90').
:- pred duly_reasoned/1, gloss('alert is duly reasoned'), source('celex:32024R1689/oj#art_90').
:- pred indicates_provider_point_of_contact/1, gloss('alert indicates point of contact of the provider of the model'), source('celex:32024R1689/oj#art_90').
:- pred indicates_description_of_facts_and_reasons/1, gloss('alert indicates description of relevant facts and reasons'), source('celex:32024R1689/oj#art_90').
:- pred required_qualified_alert/1, gloss('qualified alert meets the mandatory content requirements'), source('celex:32024R1689/oj#art_90').

% Paragraph 1: Scientific panel may provide qualified alert to AI Office
permitted_provide_alert(Panel, ai_office, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    suspected_concrete_identifiable_risk_union_level(Model).

permitted_provide_alert(Panel, ai_office, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    meets_conditions_art_51(Model).

% Paragraph 2: Commission through AI Office may exercise powers
permitted_exercise_powers(commission, powers_chapter_9_section_5(Model)) :-
    qualified_alert(Alert),
    alert_target_model(Alert, Model),
    board(Board),
    informed(commission, Board).

% Paragraph 2: AI Office shall inform Board of measures under Art 91-94
must_inform(ai_office, measure(Board, Measure)) :-
    board(Board),
    investigation_measure(Measure).

% Paragraph 3: Qualified alert requirements
required_qualified_alert(Alert) :-
    qualified_alert(Alert),
    duly_reasoned(Alert),
    indicates_provider_point_of_contact(Alert),
    indicates_description_of_facts_and_reasons(Alert).

% Provenance
provenance(permitted_provide_alert/3, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert/1, 'celex:32024R1689/oj#art_90').

% References
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
