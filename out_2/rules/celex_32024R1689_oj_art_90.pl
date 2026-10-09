% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8d3b6f4b0f23a6e9ab0c9804af2286f524b5b77de1541c181a74f71fedf3f912
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('scientific panel'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('board'), source('celex:32024R1689/oj#art_90').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('qualified alert'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_art_51/1, gloss('meets conditions of art 51'), source('celex:32024R1689/oj#art_90').
:- pred point_of_contact_provider/2, gloss('point of contact of provider'), source('celex:32024R1689/oj#art_90').
:- pred description_facts_and_reasons/1, gloss('description of facts and reasons'), source('celex:32024R1689/oj#art_90').
:- pred other_relevant_information/1, gloss('other relevant information'), source('celex:32024R1689/oj#art_90').

% Permission for the scientific panel to provide a qualified alert
permitted_provide_qualified_alert(ScientificPanel, AI_Office) :-
    scientific_panel(ScientificPanel),
    ai_office(AI_Office),
    reason_to_suspect(ScientificPanel, Model),
    general_purpose_ai_model(Model).

reason_to_suspect(_, Model) :-
    concrete_identifiable_risk_at_union_level(Model).

reason_to_suspect(_, Model) :-
    meets_conditions_art_51(Model).

% Permission for the Commission (through the AI Office) to exercise powers after informing the Board
permitted_exercise_powers(Commission, exercise(ai_office, Alert)) :-
    commission(Commission),
    ai_office(AI_Office),
    qualified_alert(Alert),
    must_inform(Commission, board).

% Obligation for the Commission to inform the Board (when exercising powers)
must_inform(Commission, board) :-
    commission(Commission),
    board(Board),
    Board = board.

% Obligation for the AI Office to inform the Board of measures under the referenced articles
must_inform(ai_office, board_measure(art_91)).
must_inform(ai_office, board_measure(art_92)).
must_inform(ai_office, board_measure(art_93)).
must_inform(ai_office, board_measure(art_94)).

% Duty of the scientific panel to provide a duly reasoned qualified alert
must_provide(scientific_panel, qualified_alert(Alert)) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.

% Content requirements for a qualified alert
must_include_point_of_contact(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.

must_include_description(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.

must_include_other_information(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.

% Provenance
provenance(permitted_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(must_provide/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_description/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_other_information/2, 'celex:32024R1689/oj#art_90').

% References
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
