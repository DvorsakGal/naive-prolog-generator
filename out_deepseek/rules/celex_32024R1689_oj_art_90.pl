% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7fbe1157ae3157e45f1a8077d18e90f6d9bd1af1bd6091d4f6fa1ed27078f416
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('duly reasoned alert by the scientific panel'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('the AI Board'), source('celex:32024R1689/oj#art_90').

% Article 90(1) – conditions for a qualified alert
may_provide_qualified_alert(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    reason_to_suspect(ScientificPanel, Alert).

reason_to_suspect(ScientificPanel, Alert) :-
    general_purpose_ai_model(Model),
    poses_concrete_identifiable_risk_at_union_level(Model).

reason_to_suspect(ScientificPanel, Alert) :-
    general_purpose_ai_model(Model),
    meets_conditions_art_51(Model).

% Article 90(2) – Commission powers upon qualified alert
may_exercise_powers(Commission, Alert) :-
    qualified_alert(Alert),
    informed_board(Commission).

must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_91).
must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_92).
must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_93).
must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_94).

% Article 90(3) – content of a qualified alert
required_qualified_alert_content(Alert, point_of_contact(Provider)) :-
    qualified_alert(Alert),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Risk),
    concerned(Model, Risk).

required_qualified_alert_content(Alert, description(Facts, Reasons)) :-
    qualified_alert(Alert),
    relevant_facts(Facts),
    reasons_for_alert(Reasons).

required_qualified_alert_content(Alert, other_information(Info)) :-
    qualified_alert(Alert),
    scientific_panel(Panel),
    considers_relevant(Panel, Info).

% Provenance
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert_content/2, 'celex:32024R1689/oj#art_90').

% References
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
