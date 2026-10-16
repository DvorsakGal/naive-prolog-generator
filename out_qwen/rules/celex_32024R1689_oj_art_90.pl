% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 137f38678c96a09bfd5ba91275407eba80fe72045f0ee29e97bb78dabc0f63ea
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('independent expert panel advising on general-purpose AI models'), source('celex:32024R1689/oj#art_90').
:- pred qualified_alert/1, gloss('formal alert issued by the scientific panel regarding systemic risks'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('AI Board established under this Regulation'), source('celex:32024R1689/oj#art_90').

may_provide_qualified_alert(Panel, Alert) :-
    scientific_panel(Panel),
    qualified_alert(Alert),
    reason_to_suspect_risk(Panel, Alert).

reason_to_suspect_risk(_Panel, Alert) :-
    qualified_alert(Alert),
    general_purpose_ai_model(M),
    poses_concrete_identifiable_risk_at_union_level(M).

reason_to_suspect_risk(_Panel, Alert) :-
    qualified_alert(Alert),
    general_purpose_ai_model(M),
    meets_conditions_of_art_51(M).

meets_conditions_of_art_51(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

must_inform_board(AIOffice, measure(Measure)) :-
    ai_office(AIOffice),
    qualified_alert(_Alert),
    exercise_powers_for_assessment(AIOffice, _Alert),
    measure_taken(Measure).

required_qualified_alert_content(Alert) :-
    qualified_alert(Alert),
    duly_reasoned(Alert),
    indicates_provider_contact(Alert),
    describes_facts_and_reasons(Alert).

indicates_provider_contact(Alert) :-
    qualified_alert(Alert),
    general_purpose_ai_model(M),
    provider(P),
    provides_model(P, M),
    point_of_contact(P, _Contact).

describes_facts_and_reasons(Alert) :-
    qualified_alert(Alert),
    relevant_facts_described(Alert),
    reasons_for_alert_stated(Alert).

provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect_risk/2, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_of_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert_content/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_provider_contact/1, 'celex:32024R1689/oj#art_90').
provenance(describes_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').

references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
