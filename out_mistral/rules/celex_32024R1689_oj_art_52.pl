% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6b3ccc1d4b3852cd9b7ab89d4b8840f1faee7999354e5e34edc6d777fa18cab5
% cached     : False
% title      : Procedure
:- pred must_notify/2, gloss('who is obliged to notify, what about'), source('celex:32024R1689/oj#art_52').
:- pred may_present_arguments/2, gloss('who may present arguments, what about'), source('celex:32024R1689/oj#art_52').
:- pred may_designate_systemic_risk/2, gloss('who may designate, what model'), source('celex:32024R1689/oj#art_52').
:- pred considered_systemic_risk/1, gloss('model considered to present systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred may_request_reassessment/2, gloss('who may request reassessment, of what model'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_list/1, gloss('who must publish and maintain list'), source('celex:32024R1689/oj#art_52').
:- pred meets_condition_art_51_1_a/1, gloss('model meets the condition in Article 51(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred notification_includes_demonstration/1, gloss('notification includes information to demonstrate requirement met'), source('celex:32024R1689/oj#art_52').
:- pred arguments_substantiated/1, gloss('arguments sufficiently substantiated to demonstrate no systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred arguments_rejected/1, gloss('Commission rejects arguments as not sufficiently substantiated'), source('celex:32024R1689/oj#art_52').
:- pred designated_systemic_risk/1, gloss('model designated as presenting systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred qualified_alert_from_scientific_panel/1, gloss('qualified alert from scientific panel received'), source('celex:32024R1689/oj#art_52').
:- pred ex_officio/1, gloss('acting on Commission own initiative'), source('celex:32024R1689/oj#art_52').
:- pred reassessment_request_contains_new_reasons/1, gloss('reassessment request contains objective detailed new reasons'), source('celex:32024R1689/oj#art_52').
:- pred earliest_reassessment_request/2, gloss('earliest time for reassessment request after event'), source('celex:32024R1689/oj#art_52').
:- pred list_of_systemic_risk_models/1, gloss('published list of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_52').

must_notify(Provider, general_purpose_ai_model(M)) :-
    provider(Provider),
    general_purpose_ai_model(M),
    meets_condition_art_51_1_a(M),
    within(days(14), after(condition_met_or_known(M))).

notification_includes_demonstration(Notification) :-
    must_notify(_Provider, general_purpose_ai_model(M)),
    Notification = notification(M),
    demonstrates_requirement_met(M).

may_present_arguments(Provider, general_purpose_ai_model(M)) :-
    provider(Provider),
    general_purpose_ai_model(M),
    meets_condition_art_51_1_a(M).

arguments_substantiated(Arguments) :-
    may_present_arguments(_Provider, general_purpose_ai_model(M)),
    Arguments = arguments(M),
    demonstrates_no_systemic_risk_due_to_specific_characteristics(M).

arguments_rejected(Arguments) :-
    Arguments = arguments(M),
    \+ arguments_substantiated(Arguments).

considered_systemic_risk(M) :-
    general_purpose_ai_model(M),
    arguments_rejected(arguments(M)).

may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    presents_systemic_risk(M),
    \+ notified_commission(M).

may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    ex_officio.

may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    qualified_alert_from_scientific_panel.

may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    designated_systemic_risk(M).

designated_systemic_risk(M) :-
    general_purpose_ai_model(M),
    may_designate_systemic_risk(commission, M).

may_request_reassessment(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    designated_systemic_risk(M),
    reassessment_request_contains_new_reasons(request(M)),
    earliest_reassessment_request(months(6), after(designation_decision(M))).

may_request_reassessment(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    designated_systemic_risk(M),
    reassessment_request_contains_new_reasons(request(M)),
    earliest_reassessment_request(months(6), after(reassessment_decision(M))),
    maintains_designated_systemic_risk(M).

must_publish_list(commission) :-
    list_of_systemic_risk_models(List),
    published(List),
    up_to_date(List).

provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(considered_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/1, 'celex:32024R1689/oj#art_52').
provenance(meets_condition_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(notification_includes_demonstration/1, 'celex:32024R1689/oj#art_52').
provenance(arguments_substantiated/1, 'celex:32024R1689/oj#art_52').
provenance(arguments_rejected/1, 'celex:32024R1689/oj#art_52').
provenance(designated_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_52').
provenance(ex_officio/1, 'celex:32024R1689/oj#art_52').
provenance(reassessment_request_contains_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(earliest_reassessment_request/2, 'celex:32024R1689/oj#art_52').
provenance(list_of_systemic_risk_models/1, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
