% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : aa55b50e70349aa3cd8794df5536f700dcd1e498bf100da8ec09e521b0cda899
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred may_provide_qualified_alert/2, gloss('scientific panel may provide a qualified alert to the AI Office'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('general-purpose AI model poses concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_art_51/1, gloss('general-purpose AI model meets conditions referred to in Article 51'), source('celex:32024R1689/oj#art_90').
:- pred may_exercise_powers/2, gloss('Commission may exercise powers for purpose of assessing the matter'), source('celex:32024R1689/oj#art_90').
:- pred reason_to_suspect/2, gloss('scientific panel has reason to suspect condition about general-purpose AI model'), source('celex:32024R1689/oj#art_90').
:- pred informs_board/2, gloss('AI Office informs Board of measure'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert_duly_reasoned/1, gloss('qualified alert is duly reasoned and contains required information'), source('celex:32024R1689/art_90').

may_provide_qualified_alert(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ai_office(AiOffice),
    reason_to_suspect(ScientificPanel, Model),
    general_purpose_ai_model(Model).

reason_to_suspect(_ScientificPanel, Model) :-
    general_purpose_ai_model(Model),
    concrete_identifiable_risk_at_union_level(Model).

reason_to_suspect(_ScientificPanel, Model) :-
    general_purpose_ai_model(Model),
    meets_conditions_art_51(Model).

may_exercise_powers(Commission, assessment_matter(Model)) :-
    commission(Commission),
    ai_office(AiOffice),
    qualified_alert(Alert),
    reason_to_suspect(_ScientificPanel, Model),
    general_purpose_ai_model(Model).

informs_board(AiOffice, measure(Model)) :-
    ai_office(AiOffice),
    board(Board),
    may_exercise_powers(_Commission, assessment_matter(Model)).

qualified_alert_duly_reasoned(Alert) :-
    qualified_alert(Alert),
    point_of_contact(Alert, Provider),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_present(Model),
    description_of_facts_and_reasons(Alert),
    other_relevant_information(Alert).

provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(informs_board/2, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert_duly_reasoned/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
