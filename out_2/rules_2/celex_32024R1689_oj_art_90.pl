% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 59c323c7ff41849c3adb3a70830b1cc8c3d1bae6bcdd667b2eed1c1bcf202c79
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('scientific panel'), source('celex:32024R1689/oj#art_90').
:- pred permitted_qualified_alert/1, gloss('permission to provide qualified alert'), source('celex:32024R1689/oj#art_90').
:- pred poses_concrete_identifiable_risk_at_union_level/1, gloss('model poses concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_art_51/1, gloss('model meets conditions of article 51'), source('celex:32024R1689/oj#art_90').
:- pred permitted_exercise_powers/1, gloss('permission for Commission to exercise powers'), source('celex:32024R1689/oj#art_90').
:- pred must_inform/2, gloss('obligation to inform'), source('celex:32024R1689/oj#art_90').
:- pred required_qualified_alert/1, gloss('qualified alert must be duly reasoned and indicate required information'), source('celex:32024R1689/oj#art_90').
:- pred includes_point_of_contact/1, gloss('alert includes point of contact of provider'), source('celex:32024R1689/oj#art_90').
:- pred includes_description/1, gloss('alert includes description of facts and reasons'), source('celex:32024R1689/oj#art_90').
:- pred includes_other_information/1, gloss('alert includes any other relevant information'), source('celex:32024R1689/oj#art_90').

scientific_panel(scientific_panel).

permitted_qualified_alert(scientific_panel) :-
    (   (   general_purpose_ai_model(M),
            poses_concrete_identifiable_risk_at_union_level(M) )
    ;   (   general_purpose_ai_model(M),
            meets_conditions_art_51(M) )
    ).

qualified_alert_received.

informed_board.

through_ai_office.

permitted_exercise_powers(commission) :-
    qualified_alert_received,
    informed_board,
    through_ai_office.

must_inform(ai_office, board_measure(art_91)).
must_inform(ai_office, board_measure(art_92)).
must_inform(ai_office, board_measure(art_93)).
must_inform(ai_office, board_measure(art_94)).

required_qualified_alert(qualified_alert) :-
    includes_point_of_contact(qualified_alert),
    includes_description(qualified_alert),
    includes_other_information(qualified_alert).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(poses_concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(includes_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(includes_description/1, 'celex:32024R1689/oj#art_90').
provenance(includes_other_information/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
