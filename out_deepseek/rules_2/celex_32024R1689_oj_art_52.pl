% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 2b538fbc3e520700a2bb56f0a07d86d977286c2613fa37dcd02c9e3c1acd49bd
% cached     : False
% title      : Procedure
:- pred must_notify_commission/2, gloss('provider must notify Commission that model meets systemic risk condition'), source('celex:32024R1689/oj#art_52').
:- pred may_present_arguments_against_classification/2, gloss('provider may present arguments that model does not present systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred must_reject_arguments/2, gloss('Commission must reject insufficiently substantiated arguments'), source('celex:32024R1689/oj#art_52').
:- pred may_designate_systemic_risk/2, gloss('Commission may designate model as presenting systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred may_reassess_designation/2, gloss('Commission may reassess whether model still presents systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_systemic_risk_list/1, gloss('Commission must publish and update list of systemic risk models'), source('celex:32024R1689/oj#art_52').

must_notify_commission(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    notification_includes_necessary_information(notification(Model)).

may_present_arguments_against_classification(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    arguments_substantiated(arguments(Model)).

must_reject_arguments(commission, Model) :-
    general_purpose_ai_model(Model),
    \+ arguments_substantiated(arguments(Model)),
    \+ demonstrated_no_systemic_risk(Model).

may_designate_systemic_risk(commission, Model) :-
    general_purpose_ai_model(Model),
    (   ex_officio_designation(Model)
    ;   qualified_alert_from_scientific_panel(Model)
    ),
    criteria_in_annex_13_satisfied(Model).

may_reassess_designation(commission, Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    reasoned_request_from_provider(Model),
    new_reasons_since_designation(Model),
    minimum_six_months_since_designation(Model).

must_publish_systemic_risk_list(commission) :-
    ai_office(commission).

% Supporting predicates
notification_includes_necessary_information(notification(Model)) :-
    general_purpose_ai_model(Model).

arguments_substantiated(arguments(Model)) :-
    general_purpose_ai_model(Model).

demonstrated_no_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    \+ systemic_risk_classification_applies(Model).

ex_officio_designation(Model) :-
    general_purpose_ai_model(Model).

qualified_alert_from_scientific_panel(Model) :-
    general_purpose_ai_model(Model).

criteria_in_annex_13_satisfied(Model) :-
    general_purpose_ai_model(Model).

reasoned_request_from_provider(Model) :-
    general_purpose_ai_model(Model).

new_reasons_since_designation(Model) :-
    general_purpose_ai_model(Model).

minimum_six_months_since_designation(Model) :-
    general_purpose_ai_model(Model).

% Provenance
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments_against_classification/2, 'celex:32024R1689/oj#art_52').
provenance(must_reject_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(may_reassess_designation/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_systemic_risk_list/1, 'celex:32024R1689/oj#art_52').

% References
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
