% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bcd961a0f3008d5c9e553eda595411652b35b3b747d6c11299f937bc10081852
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('independent scientific panel established under this Regulation'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/2, gloss('duly reasoned alert by the scientific panel to the AI Office'), source('celex:32024R1689/oj#art_90').
:- pred concrete_identifiable_risk_at_union_level/1, gloss('general-purpose AI model posing concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred meets_conditions_article_51/1, gloss('general-purpose AI model meeting conditions referred to in Article 51'), source('celex:32024R1689/oj#art_90').
:- pred reason_to_suspect/2, gloss('scientific panel has reason to suspect a state of affairs'), source('celex:32024R1689/oj#art_90').
:- pred may_provide_qualified_alert/2, gloss('scientific panel may provide qualified alert to AI Office'), source('celex:32024R1689/oj#art_90').
:- pred commission_may_exercise_powers/2, gloss('Commission through AI Office may exercise powers for purpose of assessing matter'), source('celex:32024R1689/oj#art_90').
:- pred informed_board/1, gloss('Board has been informed'), source('celex:32024R1689/oj#art_90').
:- pred ai_office_shall_inform_board/2, gloss('AI Office shall inform Board of any measure'), source('celex:32024R1689/oj#art_90').
:- pred duly_reasoned/1, gloss('qualified alert is duly reasoned'), source('celex:32024R1689/oj#art_90').
:- pred indicates_point_of_contact/2, gloss('qualified alert indicates point of contact of provider'), source('celex:32024R1689/oj#art_90').
:- pred describes_relevant_facts_and_reasons/2, gloss('qualified alert describes relevant facts and reasons'), source('celex:32024R1689/oj#art_90').
:- pred includes_other_relevant_information/2, gloss('qualified alert includes other relevant information'), source('celex:32024R1689/oj#art_90').
:- pred information_gathered_on_own_initiative/1, gloss('information gathered by scientific panel on its own initiative'), source('celex:32024R1689/oj#art_90').

may_provide_qualified_alert(Panel, Alert) :-
    scientific_panel(Panel),
    qualified_alert(Alert, ai_office),
    reason_to_suspect(Panel, concrete_identifiable_risk_at_union_level(M)),
    general_purpose_ai_model(M).

may_provide_qualified_alert(Panel, Alert) :-
    scientific_panel(Panel),
    qualified_alert(Alert, ai_office),
    reason_to_suspect(Panel, meets_conditions_article_51(M)),
    general_purpose_ai_model(M).

commission_may_exercise_powers(Commission, Matter) :-
    qualified_alert(Alert, ai_office),
    ai_office(Office),
    informed_board(Board),
    assessing_matter(Matter).

ai_office_shall_inform_board(Office, Measure) :-
    ai_office(Office),
    measure(Measure),
    according_to_articles(Measure).

qualified_alert(Alert, ai_office) :-
    duly_reasoned(Alert),
    indicates_point_of_contact(Alert, Provider),
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(M),
    describes_relevant_facts_and_reasons(Alert, scientific_panel),
    includes_other_relevant_information(Alert, scientific_panel).

includes_other_relevant_information(Alert, Panel) :-
    information_gathered_on_own_initiative(Info),
    scientific_panel(Panel),
    alert_includes(Alert, Info).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_article_51/1, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(commission_may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(informed_board/1, 'celex:32024R1689/oj#art_90').
provenance(ai_office_shall_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(describes_relevant_facts_and_reasons/2, 'celex:32024R1689/oj#art_90').
provenance(includes_other_relevant_information/2, 'celex:32024R1689/oj#art_90').
provenance(information_gathered_on_own_initiative/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
