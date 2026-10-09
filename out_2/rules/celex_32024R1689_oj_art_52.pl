% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 04a75639778b357f36eab7b4459513cfced58300a3bf29eac3f8f2b63a30321a
% cached     : False
% title      : Procedure
:- pred condition_met/1, gloss('general‑purpose AI model meets the condition of art 51 para 1 unp 1 pnt a'), source('celex:32024R1689/oj#art_52').
:- pred must_notify/2, gloss('provider must notify the Commission'), source('celex:32024R1689/oj#art_52').
:- pred required_information_in_notification/2, gloss('notification must include information to demonstrate requirement met'), source('celex:32024R1689/oj#art_52').
:- pred present_arguments/2, gloss('provider may present arguments with its notification'), source('celex:32024R1689/oj#art_52').
:- pred must_reject_arguments/2, gloss('Commission must reject insufficiently substantiated arguments'), source('celex:32024R1689/oj#art_52').
:- pred required_classification_as_systemic_risk/1, gloss('model shall be classified as a general‑purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred permitted_designate_systemic_risk/2, gloss('Commission may designate a model as presenting systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred must_adopt_delegated_acts/2, gloss('Commission shall adopt delegated acts to amend annex criteria'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_list/1, gloss('Commission shall ensure a list of systemic‑risk models is published'), source('celex:32024R1689/oj#art_52').
:- pred must_keep_list_up_to_date/1, gloss('Commission shall keep the list up to date'), source('celex:32024R1689/oj#art_52').
:- pred required_observe_intellectual_property_rights/1, gloss('Commission must observe IP rights when publishing the list'), source('celex:32024R1689/oj#art_52').
:- pred must_take_request_into_account/3, gloss('Commission shall take a provider\'s reassessment request into account'), source('celex:32024R1689/oj#art_52').
:- pred permitted_reassess/2, gloss('Commission may decide to reassess a model\'s systemic‑risk status'), source('celex:32024R1689/oj#art_52').
:- pred required_content_of_request/2, gloss('request must contain objective, detailed and new reasons'), source('celex:32024R1689/oj#art_52').
:- pred permitted_request_reassessment/2, gloss('provider may request reassessment after six months'), source('celex:32024R1689/oj#art_52').

must_notify(P, notification(general_purpose_ai_model(M), within(weeks(2)))) :-
    provider(P),
    general_purpose_ai_model(M),
    condition_met(M).

required_information_in_notification(P, info(demonstrate_requirement_met)) :-
    provider(P),
    general_purpose_ai_model(_M).

present_arguments(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    condition_met(M).

must_reject_arguments(C, M) :-
    commission(C),
    general_purpose_ai_model(M),
    \+ sufficiently_substantiated_arguments(M).

required_classification_as_systemic_risk(M) :-
    general_purpose_ai_model(M),
    \+ sufficiently_substantiated_arguments(M).

permitted_designate_systemic_risk(C, M) :-
    commission(C),
    general_purpose_ai_model(M).

must_adopt_delegated_acts(C, amend_annex(criteria)) :-
    commission(C).

must_publish_list(C) :-
    commission(C).

must_keep_list_up_to_date(C) :-
    commission(C).

required_observe_intellectual_property_rights(C) :-
    commission(C).

must_take_request_into_account(C, P, M) :-
    commission(C),
    provider(P),
    general_purpose_ai_model(M).

permitted_reassess(C, M) :-
    commission(C),
    general_purpose_ai_model(M).

required_content_of_request(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

permitted_request_reassessment(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    six_months_after(decision_date(M)).

% Provenance
provenance(condition_met/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(required_information_in_notification/2, 'celex:32024R1689/oj#art_52').
provenance(present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(must_reject_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(required_classification_as_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/1, 'celex:32024R1689/oj#art_52').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_52').
provenance(required_observe_intellectual_property_rights/1, 'celex:32024R1689/oj#art_52').
provenance(must_take_request_into_account/3, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').
provenance(required_content_of_request/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_request_reassessment/2, 'celex:32024R1689/oj#art_52').

% References
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
