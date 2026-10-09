% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 779f6a63f88ef33514ceac4a8355567c02d84be2592b2c8de0f452b99e82476f
% cached     : False
% title      : Procedure
:- pred provides_general_purpose_ai_model/2, gloss('provider provides a general‑purpose AI model'), source('celex:32024R1689/oj#art_52').
:- pred condition_a/1, gloss('general‑purpose AI model meets condition referred to in art 51 p 1 a'), source('celex:32024R1689/oj#art_52').
:- pred arguments_not_substantiated/2, gloss('commission concludes that the provider’s arguments are not sufficiently substantiated'), source('celex:32024R1689/oj#art_52').
:- pred provider_unable_to_demonstrate_no_risk/2, gloss('provider cannot demonstrate that the model does not present systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred criteria_set_in_annex_13/0, gloss('criteria for systemic risk are set out in annex 13'), source('celex:32024R1689/oj#art_52').
:- pred designated_systemic_risk/1, gloss('general‑purpose AI model has been designated as presenting systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred request_contains/3, gloss('request contains objective, detailed and new reasons'), source('celex:32024R1689/oj#art_52').
:- pred six_months_after_designation/1, gloss('six months have elapsed since the designation decision'), source('celex:32024R1689/oj#art_52').

must_notify(Provider, notification(general_purpose_ai_model(Model), commission, within(weeks(2)), info(demonstrate_requirement_met))) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    condition_a(Model).

provenance(must_notify/2, 'celex:32024R1689/oj#art_52').

permitted_present_arguments(Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    condition_a(Model).

provenance(permitted_present_arguments/1, 'celex:32024R1689/oj#art_52').

must_reject_arguments(Commission, arguments(Provider, Model)) :-
    ai_office(Commission),
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    arguments_not_substantiated(Provider, Model),
    provider_unable_to_demonstrate_no_risk(Provider, Model).

provenance(must_reject_arguments/2, 'celex:32024R1689/oj#art_52').

must_classify_as_systemic_risk(Commission, Model) :-
    ai_office(Commission),
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    arguments_not_substantiated(Provider, Model),
    provider_unable_to_demonstrate_no_risk(Provider, Model).

provenance(must_classify_as_systemic_risk/2, 'celex:32024R1689/oj#art_52').

permitted_designate_systemic_risk(Commission) :-
    ai_office(Commission),
    criteria_set_in_annex_13.

provenance(permitted_designate_systemic_risk/1, 'celex:32024R1689/oj#art_52').

must_adopt(Commission, delegated_act(amend_annex_13)) :-
    ai_office(Commission).

provenance(must_adopt/2, 'celex:32024R1689/oj#art_52').

must_take_request_into_account(Commission, request(Provider, Model)) :-
    ai_office(Commission),
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    designated_systemic_risk(Model),
    request_contains(Provider, Model, objective_detailed_new_reasons).

provenance(must_take_request_into_account/2, 'celex:32024R1689/oj#art_52').

permitted_reassess(Commission) :-
    ai_office(Commission),
    designated_systemic_risk(Model),
    criteria_set_in_annex_13.

provenance(permitted_reassess/1, 'celex:32024R1689/oj#art_52').

permitted_request_reassessment(Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    designated_systemic_risk(Model),
    six_months_after_designation(Model).

provenance(permitted_request_reassessment/1, 'celex:32024R1689/oj#art_52').

must_publish(Commission, list(systemic_risk_models)) :-
    ai_office(Commission).

provenance(must_publish/2, 'celex:32024R1689/oj#art_52').

must_keep_up_to_date(Commission, list(systemic_risk_models)) :-
    ai_office(Commission).

provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_52').

% References
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
