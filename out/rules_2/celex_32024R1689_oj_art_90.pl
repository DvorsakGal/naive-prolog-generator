% unit       : celex:32024R1689/oj#art_90
% title      : Alerts of systemic risks by the scientific panel
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : gpt-oss:120b-cloud
% prompt sha : 9fb4a3c08557f5c061eaca9a3a9b85c0c3b24f0b177d41883e8c84aec0e568ab
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred scientific_panel/1, gloss('scientific panel'), source('celex:32024R1689/oj#art_90').
:- pred permitted_provide_qualified_alert/2, gloss('scientific panel may provide a qualified alert concerning a general‑purpose AI model'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('qualified alert concerning a general‑purpose AI model'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('general‑purpose AI model poses concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_art_51/1, gloss('general‑purpose AI model meets the conditions referred to in art_51'), source('celex:32024R1689/oj#art_90').
:- pred must_reason_qualified_alert/1, gloss('qualified alert shall be duly reasoned'), source('celex:32024R1689/oj#art_90').
:- pred must_include_point_of_contact/2, gloss('qualified alert shall indicate the point of contact of the provider of the model'), source('celex:32024R1689/oj#art_90').
:- pred must_include_description/1, gloss('qualified alert shall contain a description of the relevant facts and reasons'), source('celex:32024R1689/oj#art_90').
:- pred must_include_other_information/1, gloss('qualified alert shall contain any other relevant information'), source('celex:32024R1689/oj#art_90').
:- pred permitted_exercise_assessment_powers/2, gloss('Commission may exercise assessment powers after a qualified alert'), source('celex:32024R1689/oj#art_90').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_90').
:- pred must_inform_board_of_measure/2, gloss('AI Office shall inform the Board of any measure'), source('celex:32024R1689/oj#art_90').
:- pred measure/1, gloss('measure referred to in articles 91‑94'), source('celex:32024R1689/oj#art_90').

% Permission to provide a qualified alert
permitted_provide_qualified_alert(Panel, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    (   concrete_identifiable_risk_at_union_level(Model)
    ;   meets_conditions_art_51(Model)
    ).

% A qualified alert is recognised when it has been provided
qualified_alert(Model) :-
    permitted_provide_qualified_alert(_, Model).

% Duties concerning the content of a qualified alert
must_reason_qualified_alert(Model) :-
    qualified_alert(Model).

must_include_point_of_contact(Model, Provider) :-
    qualified_alert(Model),
    provider(Provider).

must_include_description(Model) :-
    qualified_alert(Model).

must_include_other_information(Model) :-
    qualified_alert(Model).

% Permission for the Commission to exercise assessment powers after a qualified alert
permitted_exercise_assessment_powers(Comm, Model) :-
    qualified_alert(Model),
    commission(Comm).

% Duty for the AI Office to inform the Board of any measure
must_inform_board_of_measure(AIOffice, Measure) :-
    ai_office(AIOffice),
    measure(Measure).

% Provenance
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(must_reason_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(must_include_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_description/1, 'celex:32024R1689/oj#art_90').
provenance(must_include_other_information/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_assessment_powers/2, 'celex:32024R1689/oj#art_90').
provenance(commission/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').
provenance(measure/1, 'celex:32024R1689/oj#art_90').

% References
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
