% unit       : celex:32024R1689/oj#art_90
% title      : Alerts of systemic risks by the scientific panel
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : gpt-oss:120b-cloud
% prompt sha : e5465f04860d405a8462d7adae8c00f10ae47fde4c1107ce5215b7fa92066bfe
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred scientific_panel/1, gloss('entity constituting the scientific panel'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('alert issued by the scientific panel indicating a systemic risk'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('general‑purpose AI model poses a concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_art_51/1, gloss('general‑purpose AI model meets the conditions set out in Article 51'), source('celex:32024R1689/oj#art_90').
:- pred permitted_qualified_alert/2, gloss('the scientific panel may provide a qualified alert to the AI Office'), source('celex:32024R1689/oj#art_90').
:- pred required_content_of_qualified_alert/1, gloss('a qualified alert must contain the required information'), source('celex:32024R1689/oj#art_90').
:- pred includes_point_of_contact/2, gloss('alert includes the point of contact of the provider'), source('celex:32024R1689/oj#art_90').
:- pred includes_description_of_facts/1, gloss('alert includes a description of the relevant facts and reasons'), source('celex:32024R1689/oj#art_90').
:- pred includes_other_information/1, gloss('alert includes any other relevant information'), source('celex:32024R1689/oj#art_90').
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('the Board of the AI Office'), source('celex:32024R1689/oj#art_90').
:- pred informed_board/1, gloss('the Commission has informed the Board'), source('celex:32024R1689/oj#art_90').
:- pred permitted_exercise_powers/3, gloss('the Commission may exercise powers for the purpose of assessing the matter'), source('celex:32024R1689/oj#art_90').
:- pred purpose_assessing_matter/1, gloss('purpose of assessing the matter'), source('celex:32024R1689/oj#art_90').
:- pred must_inform_board_of_measure/2, gloss('the AI Office shall inform the Board of any measure'), source('celex:32024R1689/oj#art_90').
:- pred measure/1, gloss('measure referred to in Articles 91‑94'), source('celex:32024R1689/oj#art_90').

% 1. The scientific panel may provide a qualified alert to the AI Office where it has reason to suspect
permitted_qualified_alert(Panel, Office) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    (   concrete_identifiable_risk_at_union_level(Model)
    ;   meets_conditions_art_51(Model)
    ),
    qualified_alert(Alert),
    % link the alert to the panel and office (implicit in the permission)
    true.

% 3. A qualified alert shall be duly reasoned and indicate at least the required information
required_content_of_qualified_alert(Alert) :-
    includes_point_of_contact(Alert, _Provider),
    includes_description_of_facts(Alert),
    includes_other_information(Alert).

% 2. Upon such qualified alert, the Commission, through the AI Office and after having informed the Board,
% may exercise the powers laid down in Chapter 9 Section 5 for the purpose of assessing the matter.
permitted_exercise_powers(Commission, Office, Alert) :-
    commission(Commission),
    ai_office(Office),
    qualified_alert(Alert),
    informed_board(Commission),
    purpose_assessing_matter(Office).

% 2. The AI Office shall inform the Board of any measure according to Articles 91‑94.
must_inform_board_of_measure(Office, Measure) :-
    ai_office(Office),
    measure(Measure).

% Provenance
provenance(permitted_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(required_content_of_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/3, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').

% References
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
