% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 5c57b5a73a32d22ab2b1bc4c8d0074d9f7990658fa0386df892bbb8c49b2b4ff
% cached     : False
% title      : Procedure
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model designated as presenting systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred meets_condition_art_51_1_a/1, gloss('general-purpose AI model meets the condition referred to in Article 51(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred notified_commission/2, gloss('provider notified Commission about model meeting condition'), source('celex:32024R1689/oj#art_52').
:- pred notification_within_two_weeks/1, gloss('notification made within two weeks after requirement met or known'), source('celex:32024R1689/oj#art_52').
:- pred notification_includes_demonstration/1, gloss('notification includes information necessary to demonstrate requirement met'), source('celex:32024R1689/oj#art_52').
:- pred commission_designates_ex_officio/1, gloss('Commission designates model as presenting systemic risks ex officio'), source('celex:32024R1689/oj#art_52').
:- pred commission_designates_on_qualified_alert/1, gloss('Commission designates model as presenting systemic risks following qualified alert from scientific panel'), source('celex:32024R1689/oj#art_52').
:- pred designation_based_on_annex_13_criteria/1, gloss('designation based on criteria set out in Annex XIII'), source('celex:32024R1689/oj#art_52').
:- pred provider_presents_substantiated_arguments/2, gloss('provider presents sufficiently substantiated arguments that model does not present systemic risks due to specific characteristics'), source('celex:32024R1689/oj#art_52').
:- pred arguments_not_sufficiently_substantiated/1, gloss('Commission concludes arguments are not sufficiently substantiated'), source('celex:32024R1689/oj#art_52').
:- pred commission_rejects_arguments/1, gloss('Commission rejects arguments submitted by provider'), source('celex:32024R1689/oj#art_52').
:- pred provider_requests_reassessment/2, gloss('provider requests reassessment of designation with objective detailed new reasons'), source('celex:32024R1689/oj#art_52').
:- pred reassessment_request_contains_new_reasons/1, gloss('reassessment request contains objective detailed and new reasons arisen since designation'), source('celex:32024R1689/oj#art_52').
:- pred reassessment_earliest_six_months/1, gloss('reassessment may be requested at earliest six months after designation decision'), source('celex:32024R1689/oj#art_52').
:- pred commission_reassesses_designation/1, gloss('Commission reassesses whether model still presents systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred commission_maintains_designation/1, gloss('Commission maintains designation as general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred list_of_systemic_risk_models_published/1, gloss('list of general-purpose AI models with systemic risk is published'), source('celex:32024R1689/oj#art_52').
:- pred list_kept_up_to_date/1, gloss('list of general-purpose AI models with systemic risk is kept up to date'), source('celex:32024R1689/oj#art_52').
:- pred intellectual_property_and_trade_secrets_protected/1, gloss('intellectual property rights and confidential business information or trade secrets protected'), source('celex:32024R1689/oj#art_52').

must_notify_commission(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    notified_commission(Provider, Model).

notification_within_two_weeks(Model) :-
    meets_condition_art_51_1_a(Model),
    notified_commission(_Provider, Model),
    within(weeks(2)).

notification_includes_demonstration(Model) :-
    notified_commission(_Provider, Model),
    meets_condition_art_51_1_a(Model).

must_notify_commission(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    notification_within_two_weeks(Model),
    notification_includes_demonstration(Model).

commission_designates_ex_officio(Model) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    designation_based_on_annex_13_criteria(Model).

commission_designates_on_qualified_alert(Model) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    qualified_alert_scientific_panel(Alert),
    designation_based_on_annex_13_criteria(Model).

provider_presents_substantiated_arguments(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    notified_commission(Provider, Model).

general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    provider_presents_substantiated_arguments(_Provider, Model),
    arguments_not_sufficiently_substantiated(Model),
    commission_rejects_arguments(Model).

provider_requests_reassessment(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    reassessment_request_contains_new_reasons(Model).

reassessment_earliest_six_months(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    provider_requests_reassessment(_Provider, Model),
    earliest(months(6)).

commission_reassesses_designation(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    provider_requests_reassessment(_Provider, Model),
    designation_based_on_annex_13_criteria(Model).

commission_maintains_designation(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    commission_reassesses_designation(Model).

reassessment_earliest_six_months(Model) :-
    commission_maintains_designation(Model),
    provider_requests_reassessment(_Provider, Model),
    earliest(months(6)).

list_of_systemic_risk_models_published(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model).

list_kept_up_to_date(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    list_of_systemic_risk_models_published(Model).

intellectual_property_and_trade_secrets_protected(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    list_of_systemic_risk_models_published(Model).

provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(meets_condition_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(notified_commission/2, 'celex:32024R1689/oj#art_52').
provenance(notification_within_two_weeks/1, 'celex:32024R1689/oj#art_52').
provenance(notification_includes_demonstration/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(commission_designates_ex_officio/1, 'celex:32024R1689/oj#art_52').
provenance(commission_designates_on_qualified_alert/1, 'celex:32024R1689/oj#art_52').
provenance(designation_based_on_annex_13_criteria/1, 'celex:32024R1689/oj#art_52').
provenance(provider_presents_substantiated_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(arguments_not_sufficiently_substantiated/1, 'celex:32024R1689/oj#art_52').
provenance(commission_rejects_arguments/1, 'celex:32024R1689/oj#art_52').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(provider_requests_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(reassessment_request_contains_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(reassessment_earliest_six_months/1, 'celex:32024R1689/oj#art_52').
provenance(commission_reassesses_designation/1, 'celex:32024R1689/oj#art_52').
provenance(commission_maintains_designation/1, 'celex:32024R1689/oj#art_52').
provenance(list_of_systemic_risk_models_published/1, 'celex:32024R1689/oj#art_52').
provenance(list_kept_up_to_date/1, 'celex:32024R1689/oj#art_52').
provenance(intellectual_property_and_trade_secrets_protected/1, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
