% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : abafabeb8aa0409f0378a53083d7e766df1ac1fe7d49c5e5c91a1ad6b7a660b8
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred qualified_alert/1, gloss('alert from the scientific panel to the AI Office'), source('celex:32024R1689/oj#art_90').
:- pred may_provide_qualified_alert/2, gloss('scientific panel may provide alert to AI Office'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('risk that is concrete, identifiable and at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_referred_to_in_art_51/1, gloss('model meets conditions of Article 51'), source('celex:32024R1689/oj#art_90').
:- pred reason_to_suspect/2, gloss('scientific panel has reason to suspect condition'), source('celex:32024R1689/oj#art_90').
:- pred exercise_powers_for_assessment/1, gloss('Commission may exercise powers for assessment'), source('celex:32024R1689/oj#art_90').
:- pred inform_board/1, gloss('Board is informed of measure'), source('celex:32024R1689/oj#art_90').
:- pred duly_reasoned/1, gloss('alert is duly reasoned'), source('celex:32024R1689/oj#art_90').
:- pred indicates_point_of_contact/1, gloss('alert indicates provider point of contact'), source('celex:32024R1689/oj#art_90').
:- pred indicates_relevant_facts_and_reasons/1, gloss('alert indicates facts and reasons'), source('celex:32024R1689/oj#art_90').
:- pred indicates_other_relevant_information/1, gloss('alert includes other relevant information'), source('celex:32024R1689/oj#art_90').

may_provide_qualified_alert(scientific_panel, ai_office) :-
    general_purpose_ai_model(M),
    reason_to_suspect(scientific_panel, concrete_identifiable_risk_at_union_level(M)).
may_provide_qualified_alert(scientific_panel, ai_office) :-
    general_purpose_ai_model(M),
    reason_to_suspect(scientific_panel, meets_conditions_referred_to_in_art_51(M)).

exercise_powers_for_assessment(commission) :-
    qualified_alert(_),
    ai_office(ai_office),
    inform_board(board).

inform_board(board) :-
    exercise_powers_for_assessment(commission).

must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_91).
must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_92).
must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_93).
must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_94).

required_qualified_alert(A) :-
    qualified_alert(A),
    duly_reasoned(A),
    indicates_point_of_contact(A),
    indicates_relevant_facts_and_reasons(A),
    indicates_other_relevant_information(A).

indicates_point_of_contact(A) :-
    qualified_alert(A),
    point_of_contact_of_provider(A, _P).

indicates_relevant_facts_and_reasons(A) :-
    qualified_alert(A),
    description_of_facts(A, _Facts),
    reasons_for_alert(A, _Reasons).

indicates_other_relevant_information(A) :-
    qualified_alert(A),
    other_relevant_information(A, _Info).

provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(exercise_powers_for_assessment/1, 'celex:32024R1689/oj#art_90').
provenance(inform_board/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_relevant_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_other_relevant_information/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
